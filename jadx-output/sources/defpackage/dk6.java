package defpackage;

import defpackage.cj6;
import defpackage.gj6;
import defpackage.mj6;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class dk6<T> implements qk6<T> {
    public final ak6 a;
    public final yk6<?, ?> b;
    public final boolean c;
    public final zi6<?> d;

    public dk6(yk6<?, ?> yk6Var, zi6<?> zi6Var, ak6 ak6Var) {
        this.b = yk6Var;
        this.c = zi6Var.e(ak6Var);
        this.d = zi6Var;
        this.a = ak6Var;
    }

    @Override // defpackage.qk6
    public boolean a(T t, T t2) {
        if (!this.b.g(t).equals(this.b.g(t2))) {
            return false;
        }
        if (this.c) {
            return this.d.c(t).equals(this.d.c(t2));
        }
        return true;
    }

    @Override // defpackage.qk6
    public void b(T t, T t2) {
        yk6<?, ?> yk6Var = this.b;
        Class<?> cls = sk6.a;
        yk6Var.o(t, yk6Var.k(yk6Var.g(t), yk6Var.g(t2)));
        if (this.c) {
            sk6.A(this.d, t, t2);
        }
    }

    @Override // defpackage.qk6
    public T c() {
        return (T) ((gj6.a) this.a.j()).m();
    }

    @Override // defpackage.qk6
    public int d(T t) {
        int iHashCode = this.b.g(t).hashCode();
        return this.c ? (iHashCode * 53) + this.d.c(t).hashCode() : iHashCode;
    }

    @Override // defpackage.qk6
    public void e(T t, hl6 hl6Var) throws IOException {
        Iterator itK = this.d.c(t).k();
        while (itK.hasNext()) {
            Map.Entry entry = (Map.Entry) itK.next();
            cj6.a aVar = (cj6.a) entry.getKey();
            if (aVar.F() != gl6.MESSAGE || aVar.o() || aVar.G()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof mj6.b) {
                ((ui6) hl6Var).e(aVar.g(), ((mj6.b) entry).e.getValue().b());
            } else {
                ((ui6) hl6Var).e(aVar.g(), entry.getValue());
            }
        }
        yk6<?, ?> yk6Var = this.b;
        yk6Var.r(yk6Var.g(t), hl6Var);
    }

    @Override // defpackage.qk6
    public void f(T t) {
        this.b.j(t);
        this.d.f(t);
    }

    @Override // defpackage.qk6
    public final boolean g(T t) {
        return this.d.c(t).i();
    }

    @Override // defpackage.qk6
    public void h(T t, ok6 ok6Var, yi6 yi6Var) throws IOException {
        yk6 yk6Var = this.b;
        zi6 zi6Var = this.d;
        Object objF = yk6Var.f(t);
        cj6<ET> cj6VarD = zi6Var.d(t);
        while (ok6Var.y() != Integer.MAX_VALUE && k(ok6Var, yi6Var, zi6Var, cj6VarD, yk6Var, objF)) {
            try {
            } finally {
                yk6Var.n(t, objF);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x008c A[EDGE_INSN: B:57:0x008c->B:35:0x008c BREAK  A[LOOP:1: B:18:0x004b->B:62:0x004b], SYNTHETIC] */
    @Override // defpackage.qk6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i(T r10, byte[] r11, int r12, int r13, defpackage.ni6 r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            gj6 r0 = (defpackage.gj6) r0
            zk6 r1 = r0.unknownFields
            zk6 r2 = defpackage.zk6.f
            if (r1 != r2) goto Lf
            zk6 r1 = defpackage.zk6.b()
            r0.unknownFields = r1
        Lf:
            gj6$c r10 = (gj6.c) r10
            r10.B()
            r10 = 0
            r0 = r10
        L16:
            if (r12 >= r13) goto L96
            int r4 = defpackage.n56.i0(r11, r12, r14)
            int r2 = r14.a
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L49
            r12 = r2 & 7
            if (r12 != r3) goto L44
            zi6<?> r12 = r9.d
            yi6 r0 = r14.d
            ak6 r3 = r9.a
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.b(r0, r3, r5)
            r0 = r12
            gj6$e r0 = (gj6.e) r0
            if (r0 != 0) goto L41
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = defpackage.n56.g0(r2, r3, r4, r5, r6, r7)
            goto L16
        L41:
            lk6 r11 = defpackage.lk6.c
            throw r10
        L44:
            int r12 = defpackage.n56.d2(r2, r11, r4, r13, r14)
            goto L16
        L49:
            r12 = 0
            r2 = r10
        L4b:
            if (r4 >= r13) goto L8c
            int r4 = defpackage.n56.i0(r11, r4, r14)
            int r5 = r14.a
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L6d
            r8 = 3
            if (r6 == r8) goto L5d
            goto L82
        L5d:
            if (r0 != 0) goto L6a
            if (r7 != r3) goto L82
            int r4 = defpackage.n56.P(r11, r4, r14)
            java.lang.Object r2 = r14.c
            qi6 r2 = (defpackage.qi6) r2
            goto L4b
        L6a:
            lk6 r11 = defpackage.lk6.c
            throw r10
        L6d:
            if (r7 != 0) goto L82
            int r4 = defpackage.n56.i0(r11, r4, r14)
            int r12 = r14.a
            zi6<?> r0 = r9.d
            yi6 r5 = r14.d
            ak6 r6 = r9.a
            java.lang.Object r0 = r0.b(r5, r6, r12)
            gj6$e r0 = (gj6.e) r0
            goto L4b
        L82:
            r6 = 12
            if (r5 != r6) goto L87
            goto L8c
        L87:
            int r4 = defpackage.n56.d2(r5, r11, r4, r13, r14)
            goto L4b
        L8c:
            if (r2 == 0) goto L94
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.c(r12, r2)
        L94:
            r12 = r4
            goto L16
        L96:
            if (r12 != r13) goto L99
            return
        L99:
            kj6 r10 = defpackage.kj6.g()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dk6.i(java.lang.Object, byte[], int, int, ni6):void");
    }

    @Override // defpackage.qk6
    public int j(T t) {
        yk6<?, ?> yk6Var = this.b;
        int i = yk6Var.i(yk6Var.g(t)) + 0;
        if (!this.c) {
            return i;
        }
        cj6<T> cj6VarC = this.d.c(t);
        int iG = 0;
        for (int i2 = 0; i2 < cj6VarC.a.d(); i2++) {
            iG += cj6VarC.g(cj6VarC.a.c(i2));
        }
        Iterator<T> it = cj6VarC.a.e().iterator();
        while (it.hasNext()) {
            iG += cj6VarC.g((Map.Entry) it.next());
        }
        return i + iG;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <UT, UB, ET extends cj6.a<ET>> boolean k(ok6 ok6Var, yi6 yi6Var, zi6<ET> zi6Var, cj6<ET> cj6Var, yk6<UT, UB> yk6Var, UB ub) throws IOException {
        int tag = ok6Var.getTag();
        if (tag != 11) {
            if ((tag & 7) != 2) {
                return ok6Var.G();
            }
            Object objB = zi6Var.b(yi6Var, this.a, tag >>> 3);
            if (objB == null) {
                return yk6Var.l(ub, ok6Var);
            }
            zi6Var.h(ok6Var, objB, yi6Var, cj6Var);
            return true;
        }
        int iN = 0;
        Object objB2 = null;
        qi6 qi6VarD = null;
        while (ok6Var.y() != Integer.MAX_VALUE) {
            int tag2 = ok6Var.getTag();
            if (tag2 == 16) {
                iN = ok6Var.n();
                objB2 = zi6Var.b(yi6Var, this.a, iN);
            } else if (tag2 == 26) {
                if (objB2 != null) {
                    zi6Var.h(ok6Var, objB2, yi6Var, cj6Var);
                } else {
                    qi6VarD = ok6Var.D();
                }
            } else if (!ok6Var.G()) {
                break;
            }
        }
        if (ok6Var.getTag() != 12) {
            throw kj6.a();
        }
        if (qi6VarD != null) {
            if (objB2 != null) {
                zi6Var.i(qi6VarD, objB2, yi6Var, cj6Var);
            } else {
                yk6Var.d(ub, iN, qi6VarD);
            }
        }
        return true;
    }
}
