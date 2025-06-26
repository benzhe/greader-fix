package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class x10 {
    public static final Object b = new Object();
    public static volatile x10 c;
    public static g24<Boolean> d;
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> a = new ConcurrentHashMap<>();

    static {
        g24<Boolean> i24Var = y10.e;
        if (!(i24Var instanceof h24) && !(i24Var instanceof i24)) {
            i24Var = i24Var instanceof Serializable ? new i24<>(i24Var) : new h24<>(i24Var);
        }
        d = i24Var;
    }

    public static x10 b() {
        if (c == null) {
            synchronized (b) {
                if (c == null) {
                    c = new x10();
                }
            }
        }
        return c;
    }

    public static boolean e(ServiceConnection serviceConnection) {
        return d.a().booleanValue() && !(serviceConnection instanceof o10);
    }

    public boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return d(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public void c(Context context, ServiceConnection serviceConnection) {
        if (!e(serviceConnection) || !this.a.containsKey(serviceConnection)) {
            try {
                context.unbindService(serviceConnection);
                return;
            } catch (IllegalArgumentException | IllegalStateException e) {
                Log.w("ConnectionTracker", "Exception thrown while unbinding", e);
                return;
            }
        }
        try {
            try {
                context.unbindService(this.a.get(serviceConnection));
            } catch (IllegalArgumentException | IllegalStateException e2) {
                Log.w("ConnectionTracker", "Exception thrown while unbinding", e2);
            }
        } finally {
            this.a.remove(serviceConnection);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(android.content.Context r5, java.lang.String r6, android.content.Intent r7, android.content.ServiceConnection r8, int r9) {
        /*
            r4 = this;
            android.content.ComponentName r0 = r7.getComponent()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L9
            goto L29
        L9:
            java.lang.String r0 = r0.getPackageName()
            java.lang.String r3 = "com.google.android.gms"
            r3.equals(r0)
            h20 r3 = defpackage.i20.a(r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            android.content.Context r3 = r3.a     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            android.content.pm.ApplicationInfo r0 = r3.getApplicationInfo(r0, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            int r0 = r0.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L29
            r3 = 2097152(0x200000, float:2.938736E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L29
            r0 = 1
            goto L2a
        L29:
            r0 = 0
        L2a:
            java.lang.String r3 = "ConnectionTracker"
            if (r0 == 0) goto L34
            java.lang.String r5 = "Attempted to bind to a service in a STOPPED package."
            android.util.Log.w(r3, r5)
            goto L75
        L34:
            boolean r0 = e(r8)
            if (r0 == 0) goto L70
            java.util.concurrent.ConcurrentHashMap<android.content.ServiceConnection, android.content.ServiceConnection> r0 = r4.a
            java.lang.Object r0 = r0.putIfAbsent(r8, r8)
            android.content.ServiceConnection r0 = (android.content.ServiceConnection) r0
            if (r0 == 0) goto L5d
            if (r8 == r0) goto L5d
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r8
            r0[r2] = r6
            r6 = 2
            java.lang.String r1 = r7.getAction()
            r0[r6] = r1
            java.lang.String r6 = "Duplicate binding with the same ServiceConnection: %s, %s, %s."
            java.lang.String r6 = java.lang.String.format(r6, r0)
            android.util.Log.w(r3, r6)
        L5d:
            boolean r5 = r5.bindService(r7, r8, r9)     // Catch: java.lang.Throwable -> L69
            if (r5 != 0) goto L74
            java.util.concurrent.ConcurrentHashMap<android.content.ServiceConnection, android.content.ServiceConnection> r6 = r4.a
            r6.remove(r8, r8)
            goto L74
        L69:
            r5 = move-exception
            java.util.concurrent.ConcurrentHashMap<android.content.ServiceConnection, android.content.ServiceConnection> r6 = r4.a
            r6.remove(r8, r8)
            throw r5
        L70:
            boolean r5 = r5.bindService(r7, r8, r9)
        L74:
            r1 = r5
        L75:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x10.d(android.content.Context, java.lang.String, android.content.Intent, android.content.ServiceConnection, int):boolean");
    }
}
