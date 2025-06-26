package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class wm0 implements Callable<rm0> {
    public final /* synthetic */ Context e;
    public final /* synthetic */ tm0 f;

    public wm0(tm0 tm0Var, Context context) {
        this.f = tm0Var;
        this.e = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ defpackage.rm0 call() throws java.lang.Exception {
        /*
            r6 = this;
            tm0 r0 = r6.f
            java.util.WeakHashMap<android.content.Context, vm0> r0 = r0.a
            android.content.Context r1 = r6.e
            java.lang.Object r0 = r0.get(r1)
            vm0 r0 = (defpackage.vm0) r0
            if (r0 == 0) goto L3c
            long r1 = r0.a
            e60<java.lang.Long> r3 = defpackage.j60.a
            java.lang.Object r3 = r3.a()
            java.lang.Long r3 = (java.lang.Long) r3
            long r3 = r3.longValue()
            long r3 = r3 + r1
            b20 r1 = com.google.android.gms.ads.internal.zzr.zzlc()
            long r1 = r1.a()
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 >= 0) goto L2b
            r1 = 1
            goto L2c
        L2b:
            r1 = 0
        L2c:
            if (r1 != 0) goto L3c
            um0 r1 = new um0
            android.content.Context r2 = r6.e
            rm0 r0 = r0.b
            r1.<init>(r2, r0)
            rm0 r0 = r1.e()
            goto L47
        L3c:
            um0 r0 = new um0
            android.content.Context r1 = r6.e
            r0.<init>(r1)
            rm0 r0 = r0.e()
        L47:
            tm0 r1 = r6.f
            java.util.WeakHashMap<android.content.Context, vm0> r1 = r1.a
            android.content.Context r2 = r6.e
            vm0 r3 = new vm0
            r3.<init>(r0)
            r1.put(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wm0.call():java.lang.Object");
    }
}
