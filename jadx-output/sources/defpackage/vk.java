package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import defpackage.wk;
import defpackage.yk;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class vk implements dl, fk, yk.b {
    public static final String n = vj.e("DelayMetCommandHandler");
    public final Context e;
    public final int f;
    public final String g;
    public final wk h;
    public final el i;
    public PowerManager.WakeLock l;
    public boolean m = false;
    public int k = 0;
    public final Object j = new Object();

    public vk(Context context, int i, String str, wk wkVar) {
        this.e = context;
        this.f = i;
        this.h = wkVar;
        this.g = str;
        this.i = new el(context, wkVar.f, this);
    }

    @Override // yk.b
    public void a(String str) {
        vj.c().a(n, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        g();
    }

    @Override // defpackage.dl
    public void b(List<String> list) {
        g();
    }

    @Override // defpackage.fk
    public void c(String str, boolean z) {
        vj.c().a(n, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        d();
        if (z) {
            Intent intentD = tk.d(this.e, this.g);
            wk wkVar = this.h;
            wkVar.k.post(new wk.b(wkVar, intentD, this.f));
        }
        if (this.m) {
            Intent intentA = tk.a(this.e);
            wk wkVar2 = this.h;
            wkVar2.k.post(new wk.b(wkVar2, intentA, this.f));
        }
    }

    public final void d() {
        synchronized (this.j) {
            this.i.c();
            this.h.g.b(this.g);
            PowerManager.WakeLock wakeLock = this.l;
            if (wakeLock != null && wakeLock.isHeld()) {
                vj.c().a(n, String.format("Releasing wakelock %s for WorkSpec %s", this.l, this.g), new Throwable[0]);
                this.l.release();
            }
        }
    }

    @Override // defpackage.dl
    public void e(List<String> list) {
        if (list.contains(this.g)) {
            synchronized (this.j) {
                if (this.k == 0) {
                    this.k = 1;
                    vj.c().a(n, String.format("onAllConstraintsMet for %s", this.g), new Throwable[0]);
                    if (this.h.h.b(this.g, null)) {
                        this.h.g.a(this.g, 600000L, this);
                    } else {
                        d();
                    }
                } else {
                    vj.c().a(n, String.format("Already started work for %s", this.g), new Throwable[0]);
                }
            }
        }
    }

    public void f() throws Throwable {
        this.l = tm.a(this.e, String.format("%s (%s)", this.g, Integer.valueOf(this.f)));
        vj vjVarC = vj.c();
        String str = n;
        vjVarC.a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.l, this.g), new Throwable[0]);
        this.l.acquire();
        dm dmVarH = ((fm) this.h.i.c.n()).h(this.g);
        if (dmVarH == null) {
            g();
            return;
        }
        boolean zB = dmVarH.b();
        this.m = zB;
        if (zB) {
            this.i.b(Collections.singletonList(dmVarH));
        } else {
            vj.c().a(str, String.format("No constraints for %s", this.g), new Throwable[0]);
            e(Collections.singletonList(this.g));
        }
    }

    public final void g() {
        boolean zContainsKey;
        synchronized (this.j) {
            if (this.k < 2) {
                this.k = 2;
                vj vjVarC = vj.c();
                String str = n;
                vjVarC.a(str, String.format("Stopping work for WorkSpec %s", this.g), new Throwable[0]);
                Context context = this.e;
                String str2 = this.g;
                Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
                intent.setAction("ACTION_STOP_WORK");
                intent.putExtra("KEY_WORKSPEC_ID", str2);
                wk wkVar = this.h;
                wkVar.k.post(new wk.b(wkVar, intent, this.f));
                hk hkVar = this.h.h;
                String str3 = this.g;
                synchronized (hkVar.m) {
                    zContainsKey = hkVar.i.containsKey(str3);
                }
                if (zContainsKey) {
                    vj.c().a(str, String.format("WorkSpec %s needs to be rescheduled", this.g), new Throwable[0]);
                    Intent intentD = tk.d(this.e, this.g);
                    wk wkVar2 = this.h;
                    wkVar2.k.post(new wk.b(wkVar2, intentD, this.f));
                } else {
                    vj.c().a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.g), new Throwable[0]);
                }
            } else {
                vj.c().a(n, String.format("Already stopped work for %s", this.g), new Throwable[0]);
            }
        }
    }
}
