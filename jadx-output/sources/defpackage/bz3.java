package defpackage;

import defpackage.sx3;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class bz3<T> implements nz3<T> {
    public final xy3 a;
    public final b04<?, ?> b;
    public final boolean c;
    public final fx3<?> d;

    public bz3(b04<?, ?> b04Var, fx3<?> fx3Var, xy3 xy3Var) {
        this.b = b04Var;
        this.c = fx3Var.f(xy3Var);
        this.d = fx3Var;
        this.a = xy3Var;
    }

    @Override // defpackage.nz3
    public final boolean a(T t, T t2) {
        if (!this.b.i(t).equals(this.b.i(t2))) {
            return false;
        }
        if (this.c) {
            return this.d.b(t).equals(this.d.b(t2));
        }
        return true;
    }

    @Override // defpackage.nz3
    public final void b(T t) {
        this.b.c(t);
        this.d.e(t);
    }

    @Override // defpackage.nz3
    public final T c() {
        return (T) ((sx3.a) this.a.r()).e();
    }

    @Override // defpackage.nz3
    public final int d(T t) {
        int iHashCode = this.b.i(t).hashCode();
        return this.c ? (iHashCode * 53) + this.d.b(t).hashCode() : iHashCode;
    }

    @Override // defpackage.nz3
    public final boolean e(T t) {
        return this.d.b(t).b();
    }

    @Override // defpackage.nz3
    public final void f(T t, v04 v04Var) throws IOException {
        Iterator itC = this.d.b(t).c();
        while (itC.hasNext()) {
            Map.Entry entry = (Map.Entry) itC.next();
            mx3 mx3Var = (mx3) entry.getKey();
            if (mx3Var.v() != u04.MESSAGE || mx3Var.j() || mx3Var.e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            ((bx3) v04Var).c(mx3Var.c(), entry instanceof dy3 ? ((dy3) entry).e.getValue().c() : entry.getValue());
        }
        b04<?, ?> b04Var = this.b;
        b04Var.d(b04Var.i(t), v04Var);
    }

    @Override // defpackage.nz3
    public final void g(T t, T t2) {
        b04<?, ?> b04Var = this.b;
        Class<?> cls = pz3.a;
        b04Var.f(t, b04Var.g(b04Var.i(t), b04Var.i(t2)));
        if (this.c) {
            pz3.e(this.d, t, t2);
        }
    }

    @Override // defpackage.nz3
    public final int h(T t) {
        b04<?, ?> b04Var = this.b;
        int iJ = b04Var.j(b04Var.i(t)) + 0;
        if (!this.c) {
            return iJ;
        }
        jx3<T> jx3VarB = this.d.b(t);
        int iK = 0;
        for (int i = 0; i < jx3VarB.a.e(); i++) {
            iK += jx3.k(jx3VarB.a.c(i));
        }
        Iterator<T> it = jx3VarB.a.f().iterator();
        while (it.hasNext()) {
            iK += jx3.k((Map.Entry) it.next());
        }
        return iJ + iK;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005f A[EDGE_INSN: B:50:0x005f->B:27:0x005f BREAK  A[LOOP:1: B:13:0x002f->B:53:0x002f], SYNTHETIC] */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(T r8, byte[] r9, int r10, int r11, defpackage.ow3 r12) throws java.io.IOException {
        /*
            r7 = this;
            sx3 r8 = (defpackage.sx3) r8
            c04 r0 = r8.zzjp
            c04 r1 = defpackage.c04.f
            if (r0 != r1) goto Le
            c04 r0 = defpackage.c04.e()
            r8.zzjp = r0
        Le:
            if (r10 >= r11) goto L69
            int r3 = defpackage.c50.g1(r9, r10, r12)
            int r1 = r12.a
            r8 = 11
            r10 = 2
            if (r1 == r8) goto L2d
            r8 = r1 & 7
            if (r8 != r10) goto L28
            r2 = r9
            r4 = r11
            r5 = r0
            r6 = r12
            int r10 = defpackage.c50.V0(r1, r2, r3, r4, r5, r6)
            goto Le
        L28:
            int r10 = defpackage.c50.T0(r1, r9, r3, r11, r12)
            goto Le
        L2d:
            r8 = 0
            r1 = 0
        L2f:
            if (r3 >= r11) goto L5e
            int r2 = defpackage.c50.g1(r9, r3, r12)
            int r3 = r12.a
            int r4 = r3 >>> 3
            r5 = r3 & 7
            if (r4 == r10) goto L4c
            r6 = 3
            if (r4 == r6) goto L41
            goto L55
        L41:
            if (r5 != r10) goto L55
            int r3 = defpackage.c50.N3(r9, r2, r12)
            java.lang.Object r1 = r12.c
            sw3 r1 = (defpackage.sw3) r1
            goto L2f
        L4c:
            if (r5 != 0) goto L55
            int r3 = defpackage.c50.g1(r9, r2, r12)
            int r8 = r12.a
            goto L2f
        L55:
            r4 = 12
            if (r3 == r4) goto L5f
            int r3 = defpackage.c50.T0(r3, r9, r2, r11, r12)
            goto L2f
        L5e:
            r2 = r3
        L5f:
            if (r1 == 0) goto L67
            int r8 = r8 << 3
            r8 = r8 | r10
            r0.b(r8, r1)
        L67:
            r10 = r2
            goto Le
        L69:
            if (r10 != r11) goto L6c
            return
        L6c:
            yx3 r8 = defpackage.yx3.c()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bz3.i(java.lang.Object, byte[], int, int, ow3):void");
    }
}
