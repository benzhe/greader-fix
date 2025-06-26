package defpackage;

import defpackage.nd2;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ha2<S extends nd2<?>> implements qd2<S> {
    public final AtomicReference<la2<S>> a = new AtomicReference<>();
    public final b20 b;
    public final qd2<S> c;
    public final long d;

    public ha2(qd2<S> qd2Var, long j, b20 b20Var) {
        this.b = b20Var;
        this.c = qd2Var;
        this.d = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    @Override // defpackage.qd2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.aw2<S> a() {
        /*
            r6 = this;
            java.util.concurrent.atomic.AtomicReference<la2<S extends nd2<?>>> r0 = r6.a
            java.lang.Object r0 = r0.get()
            la2 r0 = (defpackage.la2) r0
            if (r0 == 0) goto L1b
            long r1 = r0.b
            b20 r3 = r0.c
            long r3 = r3.b()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 >= 0) goto L18
            r1 = 1
            goto L19
        L18:
            r1 = 0
        L19:
            if (r1 == 0) goto L2f
        L1b:
            la2 r0 = new la2
            qd2<S extends nd2<?>> r1 = r6.c
            aw2 r1 = r1.a()
            long r2 = r6.d
            b20 r4 = r6.b
            r0.<init>(r1, r2, r4)
            java.util.concurrent.atomic.AtomicReference<la2<S extends nd2<?>>> r1 = r6.a
            r1.set(r0)
        L2f:
            aw2<S extends nd2<?>> r0 = r0.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ha2.a():aw2");
    }
}
