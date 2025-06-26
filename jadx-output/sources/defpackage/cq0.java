package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import defpackage.cq0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class cq0 {
    public final AtomicReference<ExecutorService> a = new AtomicReference<>(null);
    public final Object b = new Object();
    public String c = null;
    public String d = null;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final AtomicInteger f = new AtomicInteger(-1);
    public final AtomicReference<Object> g = new AtomicReference<>(null);
    public final AtomicReference<Object> h = new AtomicReference<>(null);
    public final ConcurrentMap<String, Method> i = new ConcurrentHashMap(9);
    public final AtomicReference<ny0> j = new AtomicReference<>(null);
    public final BlockingQueue<FutureTask<?>> k = new ArrayBlockingQueue(20);
    public final Object l = new Object();

    public interface a {
        void a(ny0 ny0Var) throws RemoteException;
    }

    public interface b<T> {
        T a(ny0 ny0Var) throws RemoteException;
    }

    public static boolean i(Context context) throws ClassNotFoundException {
        if (!((Boolean) os3.j.f.a(y40.a0)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) < ((Integer) os3.j.f.a(y40.b0)).intValue()) {
            return false;
        }
        if (((Boolean) os3.j.f.a(y40.c0)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    public final Object a(String str, Context context) throws NoSuchMethodException, SecurityException {
        if (!g(context, "com.google.android.gms.measurement.AppMeasurement", this.g, true)) {
            return null;
        }
        try {
            return p(context, str).invoke(this.g.get(), new Object[0]);
        } catch (Exception unused) {
            o(str, true);
            return null;
        }
    }

    public final <T> T b(String str, T t, b<T> bVar) {
        synchronized (this.j) {
            if (this.j.get() != null) {
                try {
                    return bVar.a(this.j.get());
                } catch (Exception unused) {
                    o(str, false);
                }
            }
            return t;
        }
    }

    public final void c(Context context, String str, String str2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (g(context, "com.google.android.gms.measurement.AppMeasurement", this.g, true)) {
            Method declaredMethod = this.i.get(str2);
            if (declaredMethod == null) {
                try {
                    declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.i.put(str2, declaredMethod);
                } catch (Exception unused) {
                    o(str2, false);
                    declaredMethod = null;
                }
            }
            try {
                declaredMethod.invoke(this.g.get(), str);
                StringBuilder sb = new StringBuilder(str2.length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzd.zzed(sb.toString());
            } catch (Exception unused2) {
                o(str2, false);
            }
        }
    }

    public final void d(Context context, final String str, String str2, Bundle bundle) {
        if (h(context)) {
            final Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                String strValueOf = String.valueOf(str2);
                is0.zzc(strValueOf.length() != 0 ? "Invalid event ID: ".concat(strValueOf) : new String("Invalid event ID: "), e);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (i(context)) {
                f("logEventInternal", new a(str, bundle2) { // from class: gq0
                    public final String a;
                    public final Bundle b;

                    {
                        this.a = str;
                        this.b = bundle2;
                    }

                    @Override // cq0.a
                    public final void a(ny0 ny0Var) throws RemoteException {
                        ny0Var.W("am", this.a, this.b);
                    }
                });
                return;
            }
            if (g(context, "com.google.android.gms.measurement.AppMeasurement", this.g, true)) {
                Method declaredMethod = this.i.get("logEventInternal");
                if (declaredMethod == null) {
                    try {
                        declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.i.put("logEventInternal", declaredMethod);
                    } catch (Exception unused) {
                        o("logEventInternal", true);
                        declaredMethod = null;
                    }
                }
                try {
                    declaredMethod.invoke(this.g.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    o("logEventInternal", true);
                }
            }
        }
    }

    public final void e(Context context, String str, String str2, String str3, int i) {
        if (h(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            d(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i);
            zzd.zzed(sb.toString());
        }
    }

    public final void f(final String str, final a aVar) {
        synchronized (this.j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, aVar, str) { // from class: fq0
                public final cq0 e;
                public final cq0.a f;
                public final String g;

                {
                    this.e = this;
                    this.f = aVar;
                    this.g = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    cq0 cq0Var = this.e;
                    cq0.a aVar2 = this.f;
                    String str2 = this.g;
                    if (cq0Var.j.get() != null) {
                        try {
                            aVar2.a(cq0Var.j.get());
                        } catch (Exception unused) {
                            cq0Var.o(str2, false);
                        }
                    }
                }
            }, null);
            if (this.j.get() != null) {
                futureTask.run();
            } else {
                this.k.offer(futureTask);
            }
        }
    }

    public final boolean g(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception unused) {
                o("getInstance", z);
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(android.content.Context r5) {
        /*
            r4 = this;
            o40<java.lang.Boolean> r0 = defpackage.y40.T
            os3 r1 = defpackage.os3.j
            u40 r1 = r1.f
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L69
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.e
            boolean r0 = r0.get()
            if (r0 == 0) goto L1c
            goto L69
        L1c:
            o40<java.lang.Boolean> r0 = defpackage.y40.d0
            os3 r2 = defpackage.os3.j
            u40 r2 = r2.f
            java.lang.Object r0 = r2.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 1
            if (r0 == 0) goto L30
            return r2
        L30:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.f
            int r0 = r0.get()
            r3 = -1
            if (r0 != r3) goto L60
            os3 r0 = defpackage.os3.j
            zr0 r0 = r0.a
            r0 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r0 = defpackage.zr0.n(r5, r0)
            if (r0 != 0) goto L5b
            os3 r0 = defpackage.os3.j
            zr0 r0 = r0.a
            boolean r5 = defpackage.zr0.i(r5)
            if (r5 == 0) goto L5b
            java.lang.String r5 = "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."
            defpackage.is0.zzez(r5)
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f
            r5.set(r1)
            goto L60
        L5b:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f
            r5.set(r2)
        L60:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f
            int r5 = r5.get()
            if (r5 != r2) goto L69
            return r2
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cq0.h(android.content.Context):boolean");
    }

    public final String j(Context context) {
        if (!h(context)) {
            return null;
        }
        synchronized (this.b) {
            String str = this.c;
            if (str != null) {
                return str;
            }
            if (i(context)) {
                this.c = (String) b("getGmpAppId", this.c, lq0.a);
            } else {
                this.c = (String) a("getGmpAppId", context);
            }
            return this.c;
        }
    }

    public final String k(final Context context) {
        if (!h(context)) {
            return null;
        }
        long jLongValue = ((Long) os3.j.f.a(y40.Y)).longValue();
        if (i(context)) {
            try {
                return jLongValue < 0 ? (String) b("getAppInstanceId", null, oq0.a) : (String) q().submit(new Callable(this) { // from class: nq0
                    public final cq0 e;

                    {
                        this.e = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (String) this.e.b("getAppInstanceId", null, iq0.a);
                    }
                }).get(jLongValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
                return null;
            }
        }
        if (jLongValue < 0) {
            return (String) a("getAppInstanceId", context);
        }
        try {
            return (String) q().submit(new Callable(this, context) { // from class: qq0
                public final cq0 e;
                public final Context f;

                {
                    this.e = this;
                    this.f = context;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return (String) this.e.a("getAppInstanceId", this.f);
                }
            }).get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused3) {
            return "TIME_OUT";
        } catch (Exception unused4) {
            return null;
        }
    }

    public final String l(Context context) throws NoSuchMethodException, SecurityException {
        if (!h(context)) {
            return null;
        }
        if (i(context)) {
            Long l = (Long) b("getAdEventId", null, eq0.a);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object objA = a("generateEventId", context);
        if (objA != null) {
            return objA.toString();
        }
        return null;
    }

    public final void m(Context context, String str) {
        d(context, "_ac", str, null);
    }

    public final void n(Context context, String str) {
        d(context, "_ai", str, null);
    }

    public final void o(String str, boolean z) {
        if (this.e.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
        sb.append("Invoke Firebase method ");
        sb.append(str);
        sb.append(" error.");
        is0.zzez(sb.toString());
        if (z) {
            is0.zzez("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.e.set(true);
        }
    }

    public final Method p(Context context, String str) throws NoSuchMethodException, SecurityException {
        Method method = this.i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            o(str, false);
            return null;
        }
    }

    public final ExecutorService q() {
        if (this.a.get() == null) {
            o40<Integer> o40Var = y40.Z;
            this.a.compareAndSet(null, new ThreadPoolExecutor(((Integer) os3.j.f.a(o40Var)).intValue(), ((Integer) os3.j.f.a(o40Var)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new pq0()));
        }
        return this.a.get();
    }
}
