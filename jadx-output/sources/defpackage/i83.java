package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class i83<T> implements w83<T> {
    public final e83 a;
    public final l93<?, ?> b;
    public final boolean c;
    public final g63<?> d;

    public i83(l93<?, ?> l93Var, g63<?> g63Var, e83 e83Var) {
        this.b = l93Var;
        this.c = g63Var.j(e83Var);
        this.d = g63Var;
        this.a = e83Var;
    }

    @Override // defpackage.w83
    public final boolean a(T t, T t2) {
        if (!this.b.j(t).equals(this.b.j(t2))) {
            return false;
        }
        if (this.c) {
            return this.d.g(t).equals(this.d.g(t2));
        }
        return true;
    }

    @Override // defpackage.w83
    public final T c() {
        return (T) this.a.d().i();
    }

    @Override // defpackage.w83
    public final int d(T t) {
        int iHashCode = this.b.j(t).hashCode();
        return this.c ? (iHashCode * 53) + this.d.g(t).hashCode() : iHashCode;
    }

    @Override // defpackage.w83
    public final boolean e(T t) {
        return this.d.g(t).a();
    }

    @Override // defpackage.w83
    public final void f(T t, ga3 ga3Var) throws IOException {
        Iterator itB = this.d.g(t).b();
        while (itB.hasNext()) {
            Map.Entry entry = (Map.Entry) itB.next();
            m63 m63Var = (m63) entry.getKey();
            if (m63Var.E() != ea3.MESSAGE || m63Var.n() || m63Var.r()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof h73) {
                ((d63) ga3Var).f(m63Var.f(), ((h73) entry).e.getValue().a());
            } else {
                ((d63) ga3Var).f(m63Var.f(), entry.getValue());
            }
        }
        l93<?, ?> l93Var = this.b;
        l93Var.p(l93Var.j(t), ga3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0095 A[EDGE_INSN: B:56:0x0095->B:34:0x0095 BREAK  A[LOOP:1: B:18:0x0050->B:61:0x0050], SYNTHETIC] */
    @Override // defpackage.w83
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r10, byte[] r11, int r12, int r13, defpackage.g53 r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            s63 r0 = (defpackage.s63) r0
            o93 r1 = r0.zzitn
            o93 r2 = defpackage.o93.f
            if (r1 != r2) goto Lf
            o93 r1 = defpackage.o93.d()
            r0.zzitn = r1
        Lf:
            s63$d r10 = (s63.d) r10
            r10.x()
            r10 = 0
            r0 = r10
        L16:
            if (r12 >= r13) goto La0
            int r4 = defpackage.c50.e1(r11, r12, r14)
            int r2 = r14.a
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L4e
            r12 = r2 & 7
            if (r12 != r3) goto L49
            g63<?> r12 = r9.d
            e63 r0 = r14.d
            e83 r3 = r9.a
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.c(r0, r3, r5)
            r0 = r12
            s63$f r0 = (s63.f) r0
            if (r0 != 0) goto L41
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = defpackage.c50.S0(r2, r3, r4, r5, r6, r7)
            goto L16
        L41:
            q83 r10 = defpackage.q83.c
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L49:
            int r12 = defpackage.c50.Q0(r2, r11, r4, r13, r14)
            goto L16
        L4e:
            r12 = 0
            r2 = r10
        L50:
            if (r4 >= r13) goto L95
            int r4 = defpackage.c50.e1(r11, r4, r14)
            int r5 = r14.a
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L77
            r8 = 3
            if (r6 == r8) goto L62
            goto L8c
        L62:
            if (r0 != 0) goto L6f
            if (r7 != r3) goto L8c
            int r4 = defpackage.c50.M3(r11, r4, r14)
            java.lang.Object r2 = r14.c
            k53 r2 = (defpackage.k53) r2
            goto L50
        L6f:
            q83 r10 = defpackage.q83.c
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L77:
            if (r7 != 0) goto L8c
            int r4 = defpackage.c50.e1(r11, r4, r14)
            int r12 = r14.a
            g63<?> r0 = r9.d
            e63 r5 = r14.d
            e83 r6 = r9.a
            java.lang.Object r0 = r0.c(r5, r6, r12)
            s63$f r0 = (s63.f) r0
            goto L50
        L8c:
            r6 = 12
            if (r5 == r6) goto L95
            int r4 = defpackage.c50.Q0(r5, r11, r4, r13, r14)
            goto L50
        L95:
            if (r2 == 0) goto L9d
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.e(r12, r2)
        L9d:
            r12 = r4
            goto L16
        La0:
            if (r12 != r13) goto La3
            return
        La3:
            e73 r10 = defpackage.e73.g()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i83.g(java.lang.Object, byte[], int, int, g53):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[LOOP:0: B:45:0x000c->B:53:?, LOOP_END, SYNTHETIC] */
    @Override // defpackage.w83
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(T r11, defpackage.z53 r12, defpackage.e63 r13) throws java.io.IOException {
        /*
            r10 = this;
            l93<?, ?> r0 = r10.b
            g63<?> r1 = r10.d
            java.lang.Object r2 = r0.k(r11)
            k63 r3 = r1.h(r11)
        Lc:
            int r4 = r12.z()     // Catch: java.lang.Throwable -> L88
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.r(r11, r2)
            return
        L19:
            int r4 = r12.b     // Catch: java.lang.Throwable -> L88
            r6 = 11
            if (r4 == r6) goto L3c
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L37
            e83 r5 = r10.a     // Catch: java.lang.Throwable -> L88
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.c(r13, r5, r4)     // Catch: java.lang.Throwable -> L88
            if (r4 == 0) goto L32
            r1.e(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L88
            goto L7c
        L32:
            boolean r4 = r0.f(r2, r12)     // Catch: java.lang.Throwable -> L88
            goto L7d
        L37:
            boolean r4 = r12.A()     // Catch: java.lang.Throwable -> L88
            goto L7d
        L3c:
            r4 = 0
            r6 = 0
            r7 = r6
        L3f:
            int r8 = r12.z()     // Catch: java.lang.Throwable -> L88
            if (r8 == r5) goto L6b
            int r8 = r12.b     // Catch: java.lang.Throwable -> L88
            r9 = 16
            if (r8 != r9) goto L56
            int r4 = r12.t()     // Catch: java.lang.Throwable -> L88
            e83 r6 = r10.a     // Catch: java.lang.Throwable -> L88
            java.lang.Object r6 = r1.c(r13, r6, r4)     // Catch: java.lang.Throwable -> L88
            goto L3f
        L56:
            r9 = 26
            if (r8 != r9) goto L65
            if (r6 == 0) goto L60
            r1.e(r12, r6, r13, r3)     // Catch: java.lang.Throwable -> L88
            goto L3f
        L60:
            k53 r7 = r12.s()     // Catch: java.lang.Throwable -> L88
            goto L3f
        L65:
            boolean r8 = r12.A()     // Catch: java.lang.Throwable -> L88
            if (r8 != 0) goto L3f
        L6b:
            int r5 = r12.b     // Catch: java.lang.Throwable -> L88
            r8 = 12
            if (r5 != r8) goto L83
            if (r7 == 0) goto L7c
            if (r6 == 0) goto L79
            r1.d(r7, r6, r13, r3)     // Catch: java.lang.Throwable -> L88
            goto L7c
        L79:
            r0.b(r2, r4, r7)     // Catch: java.lang.Throwable -> L88
        L7c:
            r4 = 1
        L7d:
            if (r4 != 0) goto Lc
            r0.r(r11, r2)
            return
        L83:
            e73 r12 = defpackage.e73.e()     // Catch: java.lang.Throwable -> L88
            throw r12     // Catch: java.lang.Throwable -> L88
        L88:
            r12 = move-exception
            r0.r(r11, r2)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i83.h(java.lang.Object, z53, e63):void");
    }

    @Override // defpackage.w83
    public final void i(T t, T t2) {
        l93<?, ?> l93Var = this.b;
        Class<?> cls = y83.a;
        l93Var.q(t, l93Var.s(l93Var.j(t), l93Var.j(t2)));
        if (this.c) {
            y83.f(this.d, t, t2);
        }
    }

    @Override // defpackage.w83
    public final void j(T t) {
        this.b.g(t);
        this.d.i(t);
    }

    @Override // defpackage.w83
    public final int k(T t) {
        l93<?, ?> l93Var = this.b;
        int iM = l93Var.m(l93Var.j(t)) + 0;
        if (!this.c) {
            return iM;
        }
        k63<T> k63VarG = this.d.g(t);
        int iM2 = 0;
        for (int i = 0; i < k63VarG.a.d(); i++) {
            iM2 += k63.m(k63VarG.a.h(i));
        }
        Iterator<T> it = k63VarG.a.e().iterator();
        while (it.hasNext()) {
            iM2 += k63.m((Map.Entry) it.next());
        }
        return iM + iM2;
    }
}
