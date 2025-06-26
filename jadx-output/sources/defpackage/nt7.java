package defpackage;

/* loaded from: classes2.dex */
public final class nt7 implements vt7 {
    public final xs7 e;
    public qt7 f;
    public int g;
    public boolean h;
    public long i;
    public final at7 j;

    public nt7(at7 at7Var) {
        im7.e(at7Var, "upstream");
        this.j = at7Var;
        xs7 xs7VarH = at7Var.h();
        this.e = xs7VarH;
        qt7 qt7Var = xs7VarH.e;
        this.f = qt7Var;
        this.g = qt7Var != null ? qt7Var.b : -1;
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.h = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // defpackage.vt7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(defpackage.xs7 r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            defpackage.im7.e(r9, r0)
            r0 = 0
            r1 = 0
            int r3 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r3 < 0) goto Le
            r4 = 1
            goto Lf
        Le:
            r4 = 0
        Lf:
            if (r4 == 0) goto L85
            boolean r4 = r8.h
            r4 = r4 ^ 1
            if (r4 == 0) goto L79
            qt7 r4 = r8.f
            if (r4 == 0) goto L2a
            xs7 r5 = r8.e
            qt7 r5 = r5.e
            if (r4 != r5) goto L2b
            int r4 = r8.g
            defpackage.im7.c(r5)
            int r5 = r5.b
            if (r4 != r5) goto L2b
        L2a:
            r0 = 1
        L2b:
            if (r0 == 0) goto L6d
            if (r3 != 0) goto L30
            return r1
        L30:
            at7 r0 = r8.j
            long r1 = r8.i
            r3 = 1
            long r1 = r1 + r3
            boolean r0 = r0.l(r1)
            if (r0 != 0) goto L40
            r9 = -1
            return r9
        L40:
            qt7 r0 = r8.f
            if (r0 != 0) goto L53
            xs7 r0 = r8.e
            qt7 r0 = r0.e
            if (r0 == 0) goto L53
            r8.f = r0
            defpackage.im7.c(r0)
            int r0 = r0.b
            r8.g = r0
        L53:
            xs7 r0 = r8.e
            long r0 = r0.f
            long r2 = r8.i
            long r0 = r0 - r2
            long r10 = java.lang.Math.min(r10, r0)
            xs7 r2 = r8.e
            long r4 = r8.i
            r3 = r9
            r6 = r10
            r2.e(r3, r4, r6)
            long r0 = r8.i
            long r0 = r0 + r10
            r8.i = r0
            return r10
        L6d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Peek source is invalid because upstream source was used"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L79:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "closed"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L85:
            java.lang.String r9 = "byteCount < 0: "
            java.lang.String r9 = defpackage.jo.j(r9, r10)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.nt7.read(xs7, long):long");
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return this.j.timeout();
    }
}
