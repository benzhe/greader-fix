package defpackage;

/* loaded from: classes2.dex */
public class qi7<T> {
    public final Object[] a;
    public Object[] b;
    public int c;

    public qi7(int i) {
        Object[] objArr = new Object[i + 1];
        this.a = objArr;
        this.b = objArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0037 A[LOOP:1: B:6:0x0006->B:25:0x0037, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0036 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <U> boolean a(defpackage.x38<? super U> r7) {
        /*
            r6 = this;
            java.lang.Object[] r0 = r6.a
        L2:
            r1 = 0
            if (r0 == 0) goto L3f
            r2 = 0
        L6:
            r3 = 4
            if (r2 >= r3) goto L3a
            r4 = r0[r2]
            if (r4 != 0) goto Le
            goto L3a
        Le:
            wi7 r3 = defpackage.wi7.COMPLETE
            r5 = 1
            if (r4 != r3) goto L17
            r7.a()
            goto L22
        L17:
            boolean r3 = r4 instanceof wi7.a
            if (r3 == 0) goto L24
            wi7$a r4 = (wi7.a) r4
            java.lang.Throwable r3 = r4.e
            r7.b(r3)
        L22:
            r3 = 1
            goto L34
        L24:
            boolean r3 = r4 instanceof wi7.b
            if (r3 == 0) goto L30
            wi7$b r4 = (wi7.b) r4
            y38 r3 = r4.e
            r7.e(r3)
            goto L33
        L30:
            r7.d(r4)
        L33:
            r3 = 0
        L34:
            if (r3 == 0) goto L37
            return r5
        L37:
            int r2 = r2 + 1
            goto L6
        L3a:
            r0 = r0[r3]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L2
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qi7.a(x38):boolean");
    }

    public void b(T t) {
        int i = this.c;
        if (i == 4) {
            Object[] objArr = new Object[5];
            this.b[4] = objArr;
            this.b = objArr;
            i = 0;
        }
        this.b[i] = t;
        this.c = i + 1;
    }
}
