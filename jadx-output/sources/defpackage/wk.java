package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class wk implements fk {
    public static final String o = vj.e("SystemAlarmDispatcher");
    public final Context e;
    public final xm f;
    public final yk g;
    public final hk h;
    public final nk i;
    public final tk j;
    public final Handler k;
    public final List<Intent> l;
    public Intent m;
    public c n;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wk wkVar;
            d dVar;
            synchronized (wk.this.l) {
                wk wkVar2 = wk.this;
                wkVar2.m = wkVar2.l.get(0);
            }
            Intent intent = wk.this.m;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = wk.this.m.getIntExtra("KEY_START_ID", 0);
                vj vjVarC = vj.c();
                String str = wk.o;
                vjVarC.a(str, String.format("Processing command %s, %s", wk.this.m, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock wakeLockA = tm.a(wk.this.e, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    vj.c().a(str, String.format("Acquiring operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                    wakeLockA.acquire();
                    wk wkVar3 = wk.this;
                    wkVar3.j.e(wkVar3.m, intExtra, wkVar3);
                    vj.c().a(str, String.format("Releasing operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                    wakeLockA.release();
                    wkVar = wk.this;
                    dVar = new d(wkVar);
                } catch (Throwable th) {
                    try {
                        vj vjVarC2 = vj.c();
                        String str2 = wk.o;
                        vjVarC2.b(str2, "Unexpected error in onHandleIntent", th);
                        vj.c().a(str2, String.format("Releasing operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                        wakeLockA.release();
                        wkVar = wk.this;
                        dVar = new d(wkVar);
                    } catch (Throwable th2) {
                        vj.c().a(wk.o, String.format("Releasing operation wake lock (%s) %s", action, wakeLockA), new Throwable[0]);
                        wakeLockA.release();
                        wk wkVar4 = wk.this;
                        wkVar4.k.post(new d(wkVar4));
                        throw th2;
                    }
                }
                wkVar.k.post(dVar);
            }
        }
    }

    public static class b implements Runnable {
        public final wk e;
        public final Intent f;
        public final int g;

        public b(wk wkVar, Intent intent, int i) {
            this.e = wkVar;
            this.f = intent;
            this.g = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.a(this.f, this.g);
        }
    }

    public interface c {
    }

    public static class d implements Runnable {
        public final wk e;

        public d(wk wkVar) {
            this.e = wkVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            wk wkVar = this.e;
            Objects.requireNonNull(wkVar);
            vj vjVarC = vj.c();
            String str = wk.o;
            vjVarC.a(str, "Checking if commands are complete.", new Throwable[0]);
            wkVar.b();
            synchronized (wkVar.l) {
                boolean z = true;
                if (wkVar.m != null) {
                    vj.c().a(str, String.format("Removing command %s", wkVar.m), new Throwable[0]);
                    if (!wkVar.l.remove(0).equals(wkVar.m)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    wkVar.m = null;
                }
                tk tkVar = wkVar.j;
                synchronized (tkVar.g) {
                    if (tkVar.f.isEmpty()) {
                        z = false;
                    }
                }
                if (!z && wkVar.l.isEmpty()) {
                    vj.c().a(str, "No more commands & intents.", new Throwable[0]);
                    c cVar = wkVar.n;
                    if (cVar != null) {
                        ((SystemAlarmService) cVar).c();
                    }
                } else if (!wkVar.l.isEmpty()) {
                    wkVar.e();
                }
            }
        }
    }

    public wk(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext;
        this.j = new tk(applicationContext);
        this.g = new yk();
        nk nkVarB = nk.b(context);
        this.i = nkVarB;
        hk hkVar = nkVarB.f;
        this.h = hkVar;
        this.f = nkVarB.d;
        hkVar.a(this);
        this.l = new ArrayList();
        this.m = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    public boolean a(Intent intent, int i) {
        boolean z;
        vj vjVarC = vj.c();
        String str = o;
        vjVarC.a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            vj.c().f(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            b();
            synchronized (this.l) {
                Iterator<Intent> it = this.l.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(it.next().getAction())) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                return false;
            }
        }
        intent.putExtra("KEY_START_ID", i);
        synchronized (this.l) {
            boolean z2 = this.l.isEmpty() ? false : true;
            this.l.add(intent);
            if (!z2) {
                e();
            }
        }
        return true;
    }

    public final void b() {
        if (this.k.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    @Override // defpackage.fk
    public void c(String str, boolean z) {
        Context context = this.e;
        String str2 = tk.h;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        this.k.post(new b(this, intent, 0));
    }

    public void d() {
        vj.c().a(o, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        hk hkVar = this.h;
        synchronized (hkVar.m) {
            hkVar.l.remove(this);
        }
        yk ykVar = this.g;
        if (!ykVar.b.isShutdown()) {
            ykVar.b.shutdownNow();
        }
        this.n = null;
    }

    public final void e() {
        b();
        PowerManager.WakeLock wakeLockA = tm.a(this.e, "ProcessCommand");
        try {
            wakeLockA.acquire();
            xm xmVar = this.i.d;
            ((ym) xmVar).a.execute(new a());
        } finally {
            wakeLockA.release();
        }
    }
}
