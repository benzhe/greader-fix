package defpackage;

import defpackage.b6;
import defpackage.c6;
import defpackage.q6;
import defpackage.x6;

/* loaded from: classes.dex */
public class u6 extends x6 {
    public static int[] k = new int[2];

    public u6(c6 c6Var) {
        super(c6Var);
        this.h.e = q6.a.LEFT;
        this.i.e = q6.a.RIGHT;
        this.f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0166  */
    @Override // defpackage.x6, defpackage.o6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(defpackage.o6 r18) {
        /*
            Method dump skipped, instructions count: 1035
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u6.a(o6):void");
    }

    @Override // defpackage.x6
    public void d() {
        c6 c6Var;
        c6 c6Var2;
        c6 c6Var3;
        c6.a aVar = c6.a.MATCH_CONSTRAINT;
        c6.a aVar2 = c6.a.MATCH_PARENT;
        c6.a aVar3 = c6.a.FIXED;
        c6 c6Var4 = this.b;
        if (c6Var4.a) {
            this.e.c(c6Var4.t());
        }
        if (!this.e.j) {
            c6.a aVarO = this.b.o();
            this.d = aVarO;
            if (aVarO != aVar) {
                if (aVarO == aVar2 && (((c6Var3 = this.b.M) != null && c6Var3.o() == aVar3) || c6Var3.o() == aVar2)) {
                    int iT = (c6Var3.t() - this.b.A.c()) - this.b.C.c();
                    b(this.h, c6Var3.d.h, this.b.A.c());
                    b(this.i, c6Var3.d.i, -this.b.C.c());
                    this.e.c(iT);
                    return;
                }
                if (this.d == aVar3) {
                    this.e.c(this.b.t());
                }
            }
        } else if (this.d == aVar2 && (((c6Var = this.b.M) != null && c6Var.o() == aVar3) || c6Var.o() == aVar2)) {
            b(this.h, c6Var.d.h, this.b.A.c());
            b(this.i, c6Var.d.i, -this.b.C.c());
            return;
        }
        r6 r6Var = this.e;
        if (r6Var.j) {
            c6 c6Var5 = this.b;
            if (c6Var5.a) {
                b6[] b6VarArr = c6Var5.I;
                if (b6VarArr[0].d != null && b6VarArr[1].d != null) {
                    if (c6Var5.x()) {
                        this.h.f = this.b.I[0].c();
                        this.i.f = -this.b.I[1].c();
                        return;
                    }
                    q6 q6VarH = h(this.b.I[0]);
                    if (q6VarH != null) {
                        q6 q6Var = this.h;
                        int iC = this.b.I[0].c();
                        q6Var.l.add(q6VarH);
                        q6Var.f = iC;
                        q6VarH.k.add(q6Var);
                    }
                    q6 q6VarH2 = h(this.b.I[1]);
                    if (q6VarH2 != null) {
                        q6 q6Var2 = this.i;
                        int i = -this.b.I[1].c();
                        q6Var2.l.add(q6VarH2);
                        q6Var2.f = i;
                        q6VarH2.k.add(q6Var2);
                    }
                    this.h.b = true;
                    this.i.b = true;
                    return;
                }
                if (b6VarArr[0].d != null) {
                    q6 q6VarH3 = h(b6VarArr[0]);
                    if (q6VarH3 != null) {
                        q6 q6Var3 = this.h;
                        int iC2 = this.b.I[0].c();
                        q6Var3.l.add(q6VarH3);
                        q6Var3.f = iC2;
                        q6VarH3.k.add(q6Var3);
                        b(this.i, this.h, this.e.g);
                        return;
                    }
                    return;
                }
                if (b6VarArr[1].d == null) {
                    if ((c6Var5 instanceof g6) || c6Var5.M == null || c6Var5.k(b6.a.CENTER).d != null) {
                        return;
                    }
                    c6 c6Var6 = this.b;
                    b(this.h, c6Var6.M.d.h, c6Var6.u());
                    b(this.i, this.h, this.e.g);
                    return;
                }
                q6 q6VarH4 = h(b6VarArr[1]);
                if (q6VarH4 != null) {
                    q6 q6Var4 = this.i;
                    int i2 = -this.b.I[1].c();
                    q6Var4.l.add(q6VarH4);
                    q6Var4.f = i2;
                    q6VarH4.k.add(q6Var4);
                    b(this.h, this.i, -this.e.g);
                    return;
                }
                return;
            }
        }
        if (this.d == aVar) {
            c6 c6Var7 = this.b;
            int i3 = c6Var7.j;
            if (i3 == 2) {
                c6 c6Var8 = c6Var7.M;
                if (c6Var8 != null) {
                    r6 r6Var2 = c6Var8.e.e;
                    r6Var.l.add(r6Var2);
                    r6Var2.k.add(this.e);
                    r6 r6Var3 = this.e;
                    r6Var3.b = true;
                    r6Var3.k.add(this.h);
                    this.e.k.add(this.i);
                }
            } else if (i3 == 3) {
                if (c6Var7.k == 3) {
                    this.h.a = this;
                    this.i.a = this;
                    w6 w6Var = c6Var7.e;
                    w6Var.h.a = this;
                    w6Var.i.a = this;
                    r6Var.a = this;
                    if (c6Var7.y()) {
                        this.e.l.add(this.b.e.e);
                        this.b.e.e.k.add(this.e);
                        w6 w6Var2 = this.b.e;
                        w6Var2.e.a = this;
                        this.e.l.add(w6Var2.h);
                        this.e.l.add(this.b.e.i);
                        this.b.e.h.k.add(this.e);
                        this.b.e.i.k.add(this.e);
                    } else if (this.b.x()) {
                        this.b.e.e.l.add(this.e);
                        this.e.k.add(this.b.e.e);
                    } else {
                        this.b.e.e.l.add(this.e);
                    }
                } else {
                    r6 r6Var4 = c6Var7.e.e;
                    r6Var.l.add(r6Var4);
                    r6Var4.k.add(this.e);
                    this.b.e.h.k.add(this.e);
                    this.b.e.i.k.add(this.e);
                    r6 r6Var5 = this.e;
                    r6Var5.b = true;
                    r6Var5.k.add(this.h);
                    this.e.k.add(this.i);
                    this.h.l.add(this.e);
                    this.i.l.add(this.e);
                }
            }
        }
        c6 c6Var9 = this.b;
        b6[] b6VarArr2 = c6Var9.I;
        if (b6VarArr2[0].d != null && b6VarArr2[1].d != null) {
            if (c6Var9.x()) {
                this.h.f = this.b.I[0].c();
                this.i.f = -this.b.I[1].c();
                return;
            }
            q6 q6VarH5 = h(this.b.I[0]);
            q6 q6VarH6 = h(this.b.I[1]);
            q6VarH5.k.add(this);
            if (q6VarH5.j) {
                a(this);
            }
            q6VarH6.k.add(this);
            if (q6VarH6.j) {
                a(this);
            }
            this.j = x6.a.CENTER;
            return;
        }
        if (b6VarArr2[0].d != null) {
            q6 q6VarH7 = h(b6VarArr2[0]);
            if (q6VarH7 != null) {
                q6 q6Var5 = this.h;
                int iC3 = this.b.I[0].c();
                q6Var5.l.add(q6VarH7);
                q6Var5.f = iC3;
                q6VarH7.k.add(q6Var5);
                c(this.i, this.h, 1, this.e);
                return;
            }
            return;
        }
        if (b6VarArr2[1].d == null) {
            if ((c6Var9 instanceof g6) || (c6Var2 = c6Var9.M) == null) {
                return;
            }
            b(this.h, c6Var2.d.h, c6Var9.u());
            c(this.i, this.h, 1, this.e);
            return;
        }
        q6 q6VarH8 = h(b6VarArr2[1]);
        if (q6VarH8 != null) {
            q6 q6Var6 = this.i;
            int i4 = -this.b.I[1].c();
            q6Var6.l.add(q6VarH8);
            q6Var6.f = i4;
            q6VarH8.k.add(q6Var6);
            c(this.h, this.i, -1, this.e);
        }
    }

    @Override // defpackage.x6
    public void e() {
        q6 q6Var = this.h;
        if (q6Var.j) {
            this.b.R = q6Var.g;
        }
    }

    @Override // defpackage.x6
    public void f() {
        this.c = null;
        this.h.b();
        this.i.b();
        this.e.b();
        this.g = false;
    }

    @Override // defpackage.x6
    public boolean k() {
        return this.d != c6.a.MATCH_CONSTRAINT || this.b.j == 0;
    }

    public final void m(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6 && i7 <= i7) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else {
            if (i6 > i6 || i9 > i7) {
                return;
            }
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    public void n() {
        this.g = false;
        this.h.b();
        this.h.j = false;
        this.i.b();
        this.i.j = false;
        this.e.j = false;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("HorizontalRun ");
        sbZ.append(this.b.f0);
        return sbZ.toString();
    }
}
