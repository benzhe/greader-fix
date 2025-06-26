package defpackage;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.UserManager;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import defpackage.vf5;
import defpackage.xy;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class pe5 {
    public static final Object j = new Object();
    public static final Executor k = new d(null);
    public static final Map<String, pe5> l = new f4();
    public final Context a;
    public final String b;
    public final ve5 c;
    public final eg5 d;
    public final og5<ua6> g;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final AtomicBoolean f = new AtomicBoolean();
    public final List<b> h = new CopyOnWriteArrayList();
    public final List<Object> i = new CopyOnWriteArrayList();

    public interface b {
        void a(boolean z);
    }

    public static class c implements xy.a {
        public static AtomicReference<c> a = new AtomicReference<>();

        @Override // xy.a
        public void a(boolean z) {
            Object obj = pe5.j;
            synchronized (pe5.j) {
                Iterator it = new ArrayList(pe5.l.values()).iterator();
                while (it.hasNext()) {
                    pe5 pe5Var = (pe5) it.next();
                    if (pe5Var.e.get()) {
                        Log.d("FirebaseApp", "Notifying background state change listeners.");
                        Iterator<b> it2 = pe5Var.h.iterator();
                        while (it2.hasNext()) {
                            it2.next().a(z);
                        }
                    }
                }
            }
        }
    }

    public static class d implements Executor {
        public static final Handler e = new Handler(Looper.getMainLooper());

        public d(a aVar) {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            e.post(runnable);
        }
    }

    public static class e extends BroadcastReceiver {
        public static AtomicReference<e> b = new AtomicReference<>();
        public final Context a;

        public e(Context context) {
            this.a = context;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Object obj = pe5.j;
            synchronized (pe5.j) {
                Iterator<pe5> it = pe5.l.values().iterator();
                while (it.hasNext()) {
                    it.next().d();
                }
            }
            this.a.unregisterReceiver(this);
        }
    }

    public pe5(final Context context, String str, ve5 ve5Var) {
        Objects.requireNonNull(context, "null reference");
        this.a = context;
        bi.g(str);
        this.b = str;
        Objects.requireNonNull(ve5Var, "null reference");
        this.c = ve5Var;
        vf5.b bVar = new vf5.b(ComponentDiscoveryService.class, null);
        ArrayList arrayList = new ArrayList();
        for (final String str2 : bVar.a(context)) {
            arrayList.add(new s96(str2) { // from class: uf5
                public final String a;

                {
                    this.a = str2;
                }

                @Override // defpackage.s96
                public Object get() {
                    return vf5.a(this.a);
                }
            });
        }
        Executor executor = k;
        int i = eg5.g;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        arrayList2.addAll(arrayList);
        final FirebaseCommonRegistrar firebaseCommonRegistrar = new FirebaseCommonRegistrar();
        arrayList2.add(new s96(firebaseCommonRegistrar) { // from class: dg5
            public final xf5 a;

            {
                this.a = firebaseCommonRegistrar;
            }

            @Override // defpackage.s96
            public Object get() {
                return this.a;
            }
        });
        arrayList3.add(sf5.c(context, Context.class, new Class[0]));
        arrayList3.add(sf5.c(this, pe5.class, new Class[0]));
        arrayList3.add(sf5.c(ve5Var, ve5.class, new Class[0]));
        this.d = new eg5(executor, arrayList2, arrayList3);
        this.g = new og5<>(new s96(this, context) { // from class: oe5
            public final pe5 a;
            public final Context b;

            {
                this.a = this;
                this.b = context;
            }

            @Override // defpackage.s96
            public Object get() {
                pe5 pe5Var = this.a;
                Context context2 = this.b;
                Object obj = pe5.j;
                return new ua6(context2, pe5Var.c(), (mo5) pe5Var.d.a(mo5.class));
            }
        });
    }

    public static pe5 b() {
        pe5 pe5Var;
        synchronized (j) {
            pe5Var = l.get("[DEFAULT]");
            if (pe5Var == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + f20.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return pe5Var;
    }

    public static pe5 e(Context context, ve5 ve5Var) {
        pe5 pe5Var;
        AtomicReference<c> atomicReference = c.a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            if (c.a.get() == null) {
                c cVar = new c();
                if (c.a.compareAndSet(null, cVar)) {
                    xy.a(application);
                    xy xyVar = xy.i;
                    Objects.requireNonNull(xyVar);
                    synchronized (xyVar) {
                        xyVar.g.add(cVar);
                    }
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (j) {
            Map<String, pe5> map = l;
            bi.m(!map.containsKey("[DEFAULT]"), "FirebaseApp name [DEFAULT] already exists!");
            bi.j(context, "Application context cannot be null.");
            pe5Var = new pe5(context, "[DEFAULT]", ve5Var);
            map.put("[DEFAULT]", pe5Var);
        }
        pe5Var.d();
        return pe5Var;
    }

    public final void a() {
        bi.m(!this.f.get(), "FirebaseApp was deleted");
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        a();
        byte[] bytes = this.b.getBytes(Charset.defaultCharset());
        sb.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb.append("+");
        a();
        byte[] bytes2 = this.c.b.getBytes(Charset.defaultCharset());
        sb.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb.toString();
    }

    public final void d() {
        if (!(!(Build.VERSION.SDK_INT >= 24 ? ((UserManager) this.a.getSystemService(UserManager.class)).isUserUnlocked() : true))) {
            StringBuilder sb = new StringBuilder();
            sb.append("Device unlocked: initializing all Firebase APIs for app ");
            a();
            sb.append(this.b);
            Log.i("FirebaseApp", sb.toString());
            this.d.f(g());
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
        a();
        sb2.append(this.b);
        Log.i("FirebaseApp", sb2.toString());
        Context context = this.a;
        if (e.b.get() == null) {
            e eVar = new e(context);
            if (e.b.compareAndSet(null, eVar)) {
                context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof pe5)) {
            return false;
        }
        String str = this.b;
        pe5 pe5Var = (pe5) obj;
        pe5Var.a();
        return str.equals(pe5Var.b);
    }

    public boolean f() {
        boolean z;
        a();
        ua6 ua6Var = this.g.get();
        synchronized (ua6Var) {
            z = ua6Var.d;
        }
        return z;
    }

    public boolean g() {
        a();
        return "[DEFAULT]".equals(this.b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        w00 w00Var = new w00(this, null);
        w00Var.a(InetAddressKeys.KEY_NAME, this.b);
        w00Var.a("options", this.c);
        return w00Var.toString();
    }
}
