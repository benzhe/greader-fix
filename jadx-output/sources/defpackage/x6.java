package defpackage;

import defpackage.c6;

/* loaded from: classes.dex */
public abstract class x6 implements o6 {
    public int a;
    public c6 b;
    public v6 c;
    public c6.a d;
    public r6 e = new r6(this);
    public int f = 0;
    public boolean g = false;
    public q6 h = new q6(this);
    public q6 i = new q6(this);
    public a j = a.NONE;

    public enum a {
        NONE,
        START,
        END,
        CENTER
    }

    public x6(c6 c6Var) {
        this.b = c6Var;
    }

    @Override // defpackage.o6
    public void a(o6 o6Var) {
    }

    public final void b(q6 q6Var, q6 q6Var2, int i) {
        q6Var.l.add(q6Var2);
        q6Var.f = i;
        q6Var2.k.add(q6Var);
    }

    public final void c(q6 q6Var, q6 q6Var2, int i, r6 r6Var) {
        q6Var.l.add(q6Var2);
        q6Var.l.add(this.e);
        q6Var.h = i;
        q6Var.i = r6Var;
        q6Var2.k.add(q6Var);
        r6Var.k.add(q6Var);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        int iMax;
        if (i2 == 0) {
            c6 c6Var = this.b;
            int i3 = c6Var.n;
            iMax = Math.max(c6Var.m, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax == i) {
                return i;
            }
        } else {
            c6 c6Var2 = this.b;
            int i4 = c6Var2.q;
            iMax = Math.max(c6Var2.p, i);
            if (i4 > 0) {
                iMax = Math.min(i4, i);
            }
            if (iMax == i) {
                return i;
            }
        }
        return iMax;
    }

    public final q6 h(b6 b6Var) {
        b6 b6Var2 = b6Var.d;
        if (b6Var2 == null) {
            return null;
        }
        c6 c6Var = b6Var2.b;
        int iOrdinal = b6Var2.c.ordinal();
        if (iOrdinal == 1) {
            return c6Var.d.h;
        }
        if (iOrdinal == 2) {
            return c6Var.e.h;
        }
        if (iOrdinal == 3) {
            return c6Var.d.i;
        }
        if (iOrdinal == 4) {
            return c6Var.e.i;
        }
        if (iOrdinal != 5) {
            return null;
        }
        return c6Var.e.k;
    }

    public final q6 i(b6 b6Var, int i) {
        b6 b6Var2 = b6Var.d;
        if (b6Var2 == null) {
            return null;
        }
        c6 c6Var = b6Var2.b;
        x6 x6Var = i == 0 ? c6Var.d : c6Var.e;
        int iOrdinal = b6Var2.c.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2) {
            return x6Var.h;
        }
        if (iOrdinal == 3 || iOrdinal == 4) {
            return x6Var.i;
        }
        return null;
    }

    public long j() {
        if (this.e.j) {
            return r0.g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(defpackage.b6 r13, defpackage.b6 r14, int r15) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x6.l(b6, b6, int):void");
    }
}
