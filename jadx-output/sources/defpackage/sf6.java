package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class sf6<T> extends de6<T> {
    public final ae6<T> a;
    public final sd6<T> b;
    public final od6 c;
    public final dg6<T> d;
    public final sf6<T>.b e = new b(this, null);
    public de6<T> f;

    public final class b implements zd6, rd6 {
        public b(sf6 sf6Var, a aVar) {
        }
    }

    public sf6(ae6<T> ae6Var, sd6<T> sd6Var, od6 od6Var, dg6<T> dg6Var, ee6 ee6Var) {
        this.a = ae6Var;
        this.b = sd6Var;
        this.c = od6Var;
        this.d = dg6Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004b  */
    @Override // defpackage.de6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T a(defpackage.eg6 r4) throws java.io.IOException {
        /*
            r3 = this;
            sd6<T> r0 = r3.b
            r1 = 0
            if (r0 != 0) goto L19
            de6<T> r0 = r3.f
            if (r0 == 0) goto La
            goto L14
        La:
            od6 r0 = r3.c
            dg6<T> r2 = r3.d
            de6 r0 = r0.e(r1, r2)
            r3.f = r0
        L14:
            java.lang.Object r4 = r0.a(r4)
            return r4
        L19:
            r4.Q()     // Catch: java.lang.NumberFormatException -> L28 java.io.IOException -> L2f defpackage.hg6 -> L36 java.io.EOFException -> L3d
            r0 = 0
            de6<td6> r2 = defpackage.uf6.X     // Catch: java.io.EOFException -> L26 java.lang.NumberFormatException -> L28 java.io.IOException -> L2f defpackage.hg6 -> L36
            java.lang.Object r4 = r2.a(r4)     // Catch: java.io.EOFException -> L26 java.lang.NumberFormatException -> L28 java.io.IOException -> L2f defpackage.hg6 -> L36
            td6 r4 = (defpackage.td6) r4     // Catch: java.io.EOFException -> L26 java.lang.NumberFormatException -> L28 java.io.IOException -> L2f defpackage.hg6 -> L36
            goto L43
        L26:
            r4 = move-exception
            goto L3f
        L28:
            r4 = move-exception
            be6 r0 = new be6
            r0.<init>(r4)
            throw r0
        L2f:
            r4 = move-exception
            ud6 r0 = new ud6
            r0.<init>(r4)
            throw r0
        L36:
            r4 = move-exception
            be6 r0 = new be6
            r0.<init>(r4)
            throw r0
        L3d:
            r4 = move-exception
            r0 = 1
        L3f:
            if (r0 == 0) goto L58
            vd6 r4 = defpackage.vd6.a
        L43:
            java.util.Objects.requireNonNull(r4)
            boolean r0 = r4 instanceof defpackage.vd6
            if (r0 == 0) goto L4b
            return r1
        L4b:
            sd6<T> r0 = r3.b
            dg6<T> r1 = r3.d
            java.lang.reflect.Type r1 = r1.b
            sf6<T>$b r2 = r3.e
            java.lang.Object r4 = r0.a(r4, r1, r2)
            return r4
        L58:
            be6 r0 = new be6
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sf6.a(eg6):java.lang.Object");
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, T t) throws IOException {
        ae6<T> ae6Var = this.a;
        if (ae6Var == null) {
            de6<T> de6VarE = this.f;
            if (de6VarE == null) {
                de6VarE = this.c.e(null, this.d);
                this.f = de6VarE;
            }
            de6VarE.b(gg6Var, t);
            return;
        }
        if (t == null) {
            gg6Var.m();
        } else {
            uf6.X.b(gg6Var, ae6Var.a(t, this.d.b, this.e));
        }
    }
}
