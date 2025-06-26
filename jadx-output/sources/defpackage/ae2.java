package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ae2 implements qd2<xd2> {
    public final zv2 a;
    public final Context b;

    public ae2(zv2 zv2Var, Context context) {
        this.a = zv2Var;
        this.b = context;
    }

    @Override // defpackage.qd2
    public final aw2<xd2> a() {
        return this.a.y(new Callable(this) { // from class: zd2
            public final ae2 e;

            {
                this.e = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x002b  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r10 = this;
                    ae2 r0 = r10.e
                    android.content.Context r1 = r0.b
                    java.lang.String r2 = "phone"
                    java.lang.Object r1 = r1.getSystemService(r2)
                    android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1
                    java.lang.String r3 = r1.getNetworkOperator()
                    boolean r2 = defpackage.bi.K()
                    r4 = 0
                    if (r2 == 0) goto L2b
                    o40<java.lang.Boolean> r2 = defpackage.y40.Z4
                    os3 r5 = defpackage.os3.j
                    u40 r5 = r5.f
                    java.lang.Object r2 = r5.a(r2)
                    java.lang.Boolean r2 = (java.lang.Boolean) r2
                    boolean r2 = r2.booleanValue()
                    if (r2 == 0) goto L2b
                    r5 = 0
                    goto L30
                L2b:
                    int r2 = r1.getNetworkType()
                    r5 = r2
                L30:
                    int r6 = r1.getPhoneType()
                    com.google.android.gms.ads.internal.zzr.zzkv()
                    android.content.Context r1 = r0.b
                    java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
                    boolean r1 = com.google.android.gms.ads.internal.util.zzj.zzp(r1, r2)
                    r2 = -1
                    if (r1 == 0) goto L6b
                    android.content.Context r0 = r0.b
                    java.lang.String r1 = "connectivity"
                    java.lang.Object r0 = r0.getSystemService(r1)
                    android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
                    android.net.NetworkInfo r1 = r0.getActiveNetworkInfo()
                    if (r1 == 0) goto L62
                    int r2 = r1.getType()
                    android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
                    int r1 = r1.ordinal()
                    r9 = r2
                    r2 = r1
                    r1 = r9
                    goto L63
                L62:
                    r1 = -1
                L63:
                    boolean r0 = r0.isActiveNetworkMetered()
                    r7 = r0
                    r4 = r1
                    r8 = r2
                    goto L6f
                L6b:
                    r0 = -2
                    r4 = -2
                    r7 = 0
                    r8 = -1
                L6f:
                    xd2 r0 = new xd2
                    r2 = r0
                    r2.<init>(r3, r4, r5, r6, r7, r8)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.zd2.call():java.lang.Object");
            }
        });
    }
}
