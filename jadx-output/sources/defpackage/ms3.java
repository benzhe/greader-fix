package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class ms3<T> {
    public static final qt3 a;

    static {
        qt3 tt3Var = null;
        try {
            Object objNewInstance = wr3.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (objNewInstance instanceof IBinder) {
                IBinder iBinder = (IBinder) objNewInstance;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    tt3Var = iInterfaceQueryLocalInterface instanceof qt3 ? (qt3) iInterfaceQueryLocalInterface : new tt3(iBinder);
                }
            } else {
                is0.zzez("ClientApi class is not an instance of IBinder.");
            }
        } catch (Exception unused) {
            is0.zzez("Failed to instantiate ClientApi class.");
        }
        a = tt3Var;
    }

    public abstract T a(qt3 qt3Var) throws RemoteException;

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T b(android.content.Context r6, boolean r7) {
        /*
            r5 = this;
            r0 = 1
            if (r7 != 0) goto L16
            os3 r1 = defpackage.os3.j
            zr0 r1 = r1.a
            r1 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r1 = defpackage.zr0.n(r6, r1)
            if (r1 != 0) goto L16
            java.lang.String r7 = "Google Play Services is not available."
            defpackage.is0.zzdz(r7)
            r7 = 1
        L16:
            java.lang.String r1 = "com.google.android.gms.ads.dynamite"
            int r2 = com.google.android.gms.dynamite.DynamiteModule.a(r6, r1)
            int r1 = com.google.android.gms.dynamite.DynamiteModule.b(r6, r1)
            if (r2 <= r1) goto L23
            r7 = 1
        L23:
            defpackage.y40.a(r6)
            e60<java.lang.Boolean> r1 = defpackage.n60.a
            java.lang.Object r1 = r1.a()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r2 = 0
            if (r1 == 0) goto L37
            r7 = 0
            goto L48
        L37:
            e60<java.lang.Boolean> r1 = defpackage.n60.b
            java.lang.Object r1 = r1.a()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L48
            r7 = 1
            r1 = 1
            goto L49
        L48:
            r1 = 0
        L49:
            r3 = 0
            java.lang.String r4 = "Cannot invoke remote loader."
            if (r7 == 0) goto L60
            java.lang.Object r6 = r5.e()
            if (r6 != 0) goto Lb8
            if (r1 != 0) goto Lb8
            java.lang.Object r3 = r5.d()     // Catch: android.os.RemoteException -> L5b
            goto Lb7
        L5b:
            r6 = move-exception
            defpackage.is0.zzd(r4, r6)
            goto Lb7
        L60:
            java.lang.Object r3 = r5.d()     // Catch: android.os.RemoteException -> L65
            goto L69
        L65:
            r7 = move-exception
            defpackage.is0.zzd(r4, r7)
        L69:
            if (r3 != 0) goto L6d
            r7 = 1
            goto L6e
        L6d:
            r7 = 0
        L6e:
            if (r7 == 0) goto Lb0
            e60<java.lang.Long> r1 = defpackage.w60.a
            java.lang.Object r1 = r1.a()
            java.lang.Long r1 = (java.lang.Long) r1
            int r1 = r1.intValue()
            os3 r4 = defpackage.os3.j
            java.util.Random r4 = r4.h
            int r1 = r4.nextInt(r1)
            if (r1 != 0) goto L87
            goto L88
        L87:
            r0 = 0
        L88:
            if (r0 == 0) goto Lb0
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
            java.lang.String r1 = "action"
            java.lang.String r2 = "dynamite_load"
            r0.putString(r1, r2)
            java.lang.String r1 = "is_missing"
            r0.putInt(r1, r7)
            os3 r7 = defpackage.os3.j
            zr0 r1 = r7.a
            com.google.android.gms.internal.ads.zzbar r7 = r7.g
            java.lang.String r7 = r7.e
            java.util.Objects.requireNonNull(r1)
            yr0 r1 = new yr0
            r1.<init>()
            java.lang.String r2 = "gmob-apps"
            defpackage.zr0.c(r6, r7, r2, r0, r1)
        Lb0:
            if (r3 != 0) goto Lb7
            java.lang.Object r6 = r5.e()
            goto Lb8
        Lb7:
            r6 = r3
        Lb8:
            if (r6 != 0) goto Lbe
            java.lang.Object r6 = r5.c()
        Lbe:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ms3.b(android.content.Context, boolean):java.lang.Object");
    }

    public abstract T c();

    public abstract T d() throws RemoteException;

    public final T e() {
        qt3 qt3Var = a;
        if (qt3Var == null) {
            is0.zzez("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return a(qt3Var);
        } catch (RemoteException e) {
            is0.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }
}
