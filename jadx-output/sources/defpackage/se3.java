package defpackage;

/* loaded from: classes.dex */
public abstract class se3 {
    public static final se3 a = new re3();

    public final boolean a() {
        return g() == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(int r3, defpackage.ue3 r4, defpackage.te3 r5, int r6) {
        /*
            r2 = this;
            r0 = 0
            r2.e(r3, r4, r0)
            r2.c(r0, r5)
            r4 = 1
            if (r3 != 0) goto L31
            r3 = -1
            if (r6 == 0) goto L22
            if (r6 == r4) goto L20
            r1 = 2
            if (r6 != r1) goto L1a
            int r6 = r2.g()
            int r6 = r6 - r4
            if (r6 != 0) goto L2a
            goto L20
        L1a:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            r3.<init>()
            throw r3
        L20:
            r4 = 0
            goto L2a
        L22:
            int r6 = r2.g()
            int r6 = r6 - r4
            if (r6 != 0) goto L2a
            r4 = -1
        L2a:
            if (r4 != r3) goto L2d
            return r3
        L2d:
            r2.c(r4, r5)
            return r0
        L31:
            int r3 = r3 + r4
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.se3.b(int, ue3, te3, int):int");
    }

    public final te3 c(int i, te3 te3Var) {
        return d(i, te3Var, false, 0L);
    }

    public abstract te3 d(int i, te3 te3Var, boolean z, long j);

    public abstract ue3 e(int i, ue3 ue3Var, boolean z);

    public abstract int f(Object obj);

    public abstract int g();

    public abstract int h();
}
