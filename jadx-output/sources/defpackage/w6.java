package defpackage;

import defpackage.b6;
import defpackage.c6;
import defpackage.q6;
import defpackage.x6;

/* loaded from: classes.dex */
public class w6 extends x6 {
    public q6 k;
    public r6 l;

    public w6(c6 c6Var) {
        super(c6Var);
        q6 q6Var = new q6(this);
        this.k = q6Var;
        this.l = null;
        this.h.e = q6.a.TOP;
        this.i.e = q6.a.BOTTOM;
        q6Var.e = q6.a.BASELINE;
        this.f = 1;
    }

    @Override // defpackage.x6, defpackage.o6
    public void a(o6 o6Var) {
        float f;
        float f2;
        float f3;
        int i;
        c6.a aVar = c6.a.MATCH_CONSTRAINT;
        int iOrdinal = this.j.ordinal();
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal == 3) {
            c6 c6Var = this.b;
            l(c6Var.B, c6Var.D, 1);
            return;
        }
        r6 r6Var = this.e;
        if (r6Var.c && !r6Var.j && this.d == aVar) {
            c6 c6Var2 = this.b;
            int i2 = c6Var2.k;
            if (i2 == 2) {
                c6 c6Var3 = c6Var2.M;
                if (c6Var3 != null) {
                    if (c6Var3.e.e.j) {
                        r6Var.c((int) ((r1.g * c6Var2.r) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                r6 r6Var2 = c6Var2.d.e;
                if (r6Var2.j) {
                    int i3 = c6Var2.Q;
                    if (i3 == -1) {
                        f = r6Var2.g;
                        f2 = c6Var2.P;
                    } else if (i3 == 0) {
                        f3 = r6Var2.g * c6Var2.P;
                        i = (int) (f3 + 0.5f);
                        r6Var.c(i);
                    } else if (i3 != 1) {
                        i = 0;
                        r6Var.c(i);
                    } else {
                        f = r6Var2.g;
                        f2 = c6Var2.P;
                    }
                    f3 = f / f2;
                    i = (int) (f3 + 0.5f);
                    r6Var.c(i);
                }
            }
        }
        q6 q6Var = this.h;
        if (q6Var.c) {
            q6 q6Var2 = this.i;
            if (q6Var2.c) {
                if (q6Var.j && q6Var2.j && this.e.j) {
                    return;
                }
                if (!this.e.j && this.d == aVar) {
                    c6 c6Var4 = this.b;
                    if (c6Var4.j == 0 && !c6Var4.y()) {
                        q6 q6Var3 = this.h.l.get(0);
                        q6 q6Var4 = this.i.l.get(0);
                        int i4 = q6Var3.g;
                        q6 q6Var5 = this.h;
                        int i5 = i4 + q6Var5.f;
                        int i6 = q6Var4.g + this.i.f;
                        q6Var5.c(i5);
                        this.i.c(i6);
                        this.e.c(i6 - i5);
                        return;
                    }
                }
                if (!this.e.j && this.d == aVar && this.a == 1 && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    q6 q6Var6 = this.h.l.get(0);
                    int i7 = (this.i.l.get(0).g + this.i.f) - (q6Var6.g + this.h.f);
                    r6 r6Var3 = this.e;
                    int i8 = r6Var3.m;
                    if (i7 < i8) {
                        r6Var3.c(i7);
                    } else {
                        r6Var3.c(i8);
                    }
                }
                if (this.e.j && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    q6 q6Var7 = this.h.l.get(0);
                    q6 q6Var8 = this.i.l.get(0);
                    int i9 = q6Var7.g;
                    q6 q6Var9 = this.h;
                    int i10 = q6Var9.f + i9;
                    int i11 = q6Var8.g;
                    int i12 = this.i.f + i11;
                    float f4 = this.b.b0;
                    if (q6Var7 == q6Var8) {
                        f4 = 0.5f;
                    } else {
                        i9 = i10;
                        i11 = i12;
                    }
                    q6Var9.c((int) ((((i11 - i9) - this.e.g) * f4) + i9 + 0.5f));
                    this.i.c(this.h.g + this.e.g);
                }
            }
        }
    }

    @Override // defpackage.x6
    public void d() {
        c6 c6Var;
        c6 c6Var2;
        c6 c6Var3;
        c6.a aVar = c6.a.MATCH_PARENT;
        c6.a aVar2 = c6.a.FIXED;
        c6.a aVar3 = c6.a.MATCH_CONSTRAINT;
        c6 c6Var4 = this.b;
        if (c6Var4.a) {
            this.e.c(c6Var4.n());
        }
        if (!this.e.j) {
            this.d = this.b.s();
            if (this.b.y) {
                this.l = new l6(this);
            }
            c6.a aVar4 = this.d;
            if (aVar4 != aVar3) {
                if (aVar4 == aVar && (c6Var3 = this.b.M) != null && c6Var3.s() == aVar2) {
                    int iN = (c6Var3.n() - this.b.B.c()) - this.b.D.c();
                    b(this.h, c6Var3.e.h, this.b.B.c());
                    b(this.i, c6Var3.e.i, -this.b.D.c());
                    this.e.c(iN);
                    return;
                }
                if (this.d == aVar2) {
                    this.e.c(this.b.n());
                }
            }
        } else if (this.d == aVar && (c6Var = this.b.M) != null && c6Var.s() == aVar2) {
            b(this.h, c6Var.e.h, this.b.B.c());
            b(this.i, c6Var.e.i, -this.b.D.c());
            return;
        }
        r6 r6Var = this.e;
        boolean z = r6Var.j;
        if (z) {
            c6 c6Var5 = this.b;
            if (c6Var5.a) {
                b6[] b6VarArr = c6Var5.I;
                if (b6VarArr[2].d != null && b6VarArr[3].d != null) {
                    if (c6Var5.y()) {
                        this.h.f = this.b.I[2].c();
                        this.i.f = -this.b.I[3].c();
                    } else {
                        q6 q6VarH = h(this.b.I[2]);
                        if (q6VarH != null) {
                            q6 q6Var = this.h;
                            int iC = this.b.I[2].c();
                            q6Var.l.add(q6VarH);
                            q6Var.f = iC;
                            q6VarH.k.add(q6Var);
                        }
                        q6 q6VarH2 = h(this.b.I[3]);
                        if (q6VarH2 != null) {
                            q6 q6Var2 = this.i;
                            int i = -this.b.I[3].c();
                            q6Var2.l.add(q6VarH2);
                            q6Var2.f = i;
                            q6VarH2.k.add(q6Var2);
                        }
                        this.h.b = true;
                        this.i.b = true;
                    }
                    c6 c6Var6 = this.b;
                    if (c6Var6.y) {
                        b(this.k, this.h, c6Var6.X);
                        return;
                    }
                    return;
                }
                if (b6VarArr[2].d != null) {
                    q6 q6VarH3 = h(b6VarArr[2]);
                    if (q6VarH3 != null) {
                        q6 q6Var3 = this.h;
                        int iC2 = this.b.I[2].c();
                        q6Var3.l.add(q6VarH3);
                        q6Var3.f = iC2;
                        q6VarH3.k.add(q6Var3);
                        b(this.i, this.h, this.e.g);
                        c6 c6Var7 = this.b;
                        if (c6Var7.y) {
                            b(this.k, this.h, c6Var7.X);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (b6VarArr[3].d != null) {
                    q6 q6VarH4 = h(b6VarArr[3]);
                    if (q6VarH4 != null) {
                        q6 q6Var4 = this.i;
                        int i2 = -this.b.I[3].c();
                        q6Var4.l.add(q6VarH4);
                        q6Var4.f = i2;
                        q6VarH4.k.add(q6Var4);
                        b(this.h, this.i, -this.e.g);
                    }
                    c6 c6Var8 = this.b;
                    if (c6Var8.y) {
                        b(this.k, this.h, c6Var8.X);
                        return;
                    }
                    return;
                }
                if (b6VarArr[4].d != null) {
                    q6 q6VarH5 = h(b6VarArr[4]);
                    if (q6VarH5 != null) {
                        q6 q6Var5 = this.k;
                        q6Var5.l.add(q6VarH5);
                        q6Var5.f = 0;
                        q6VarH5.k.add(q6Var5);
                        b(this.h, this.k, -this.b.X);
                        b(this.i, this.h, this.e.g);
                        return;
                    }
                    return;
                }
                if ((c6Var5 instanceof g6) || c6Var5.M == null || c6Var5.k(b6.a.CENTER).d != null) {
                    return;
                }
                c6 c6Var9 = this.b;
                b(this.h, c6Var9.M.e.h, c6Var9.v());
                b(this.i, this.h, this.e.g);
                c6 c6Var10 = this.b;
                if (c6Var10.y) {
                    b(this.k, this.h, c6Var10.X);
                    return;
                }
                return;
            }
        }
        if (z || this.d != aVar3) {
            r6Var.k.add(this);
            if (r6Var.j) {
                a(this);
            }
        } else {
            c6 c6Var11 = this.b;
            int i3 = c6Var11.k;
            if (i3 == 2) {
                c6 c6Var12 = c6Var11.M;
                if (c6Var12 != null) {
                    r6 r6Var2 = c6Var12.e.e;
                    r6Var.l.add(r6Var2);
                    r6Var2.k.add(this.e);
                    r6 r6Var3 = this.e;
                    r6Var3.b = true;
                    r6Var3.k.add(this.h);
                    this.e.k.add(this.i);
                }
            } else if (i3 == 3 && !c6Var11.y()) {
                c6 c6Var13 = this.b;
                if (c6Var13.j != 3) {
                    r6 r6Var4 = c6Var13.d.e;
                    this.e.l.add(r6Var4);
                    r6Var4.k.add(this.e);
                    r6 r6Var5 = this.e;
                    r6Var5.b = true;
                    r6Var5.k.add(this.h);
                    this.e.k.add(this.i);
                }
            }
        }
        c6 c6Var14 = this.b;
        b6[] b6VarArr2 = c6Var14.I;
        if (b6VarArr2[2].d != null && b6VarArr2[3].d != null) {
            if (c6Var14.y()) {
                this.h.f = this.b.I[2].c();
                this.i.f = -this.b.I[3].c();
            } else {
                q6 q6VarH6 = h(this.b.I[2]);
                q6 q6VarH7 = h(this.b.I[3]);
                q6VarH6.k.add(this);
                if (q6VarH6.j) {
                    a(this);
                }
                q6VarH7.k.add(this);
                if (q6VarH7.j) {
                    a(this);
                }
                this.j = x6.a.CENTER;
            }
            if (this.b.y) {
                c(this.k, this.h, 1, this.l);
            }
        } else if (b6VarArr2[2].d != null) {
            q6 q6VarH8 = h(b6VarArr2[2]);
            if (q6VarH8 != null) {
                q6 q6Var6 = this.h;
                int iC3 = this.b.I[2].c();
                q6Var6.l.add(q6VarH8);
                q6Var6.f = iC3;
                q6VarH8.k.add(q6Var6);
                c(this.i, this.h, 1, this.e);
                if (this.b.y) {
                    c(this.k, this.h, 1, this.l);
                }
                if (this.d == aVar3) {
                    c6 c6Var15 = this.b;
                    if (c6Var15.P > 0.0f) {
                        u6 u6Var = c6Var15.d;
                        if (u6Var.d == aVar3) {
                            u6Var.e.k.add(this.e);
                            this.e.l.add(this.b.d.e);
                            this.e.a = this;
                        }
                    }
                }
            }
        } else if (b6VarArr2[3].d != null) {
            q6 q6VarH9 = h(b6VarArr2[3]);
            if (q6VarH9 != null) {
                q6 q6Var7 = this.i;
                int i4 = -this.b.I[3].c();
                q6Var7.l.add(q6VarH9);
                q6Var7.f = i4;
                q6VarH9.k.add(q6Var7);
                c(this.h, this.i, -1, this.e);
                if (this.b.y) {
                    c(this.k, this.h, 1, this.l);
                }
            }
        } else if (b6VarArr2[4].d != null) {
            q6 q6VarH10 = h(b6VarArr2[4]);
            if (q6VarH10 != null) {
                q6 q6Var8 = this.k;
                q6Var8.l.add(q6VarH10);
                q6Var8.f = 0;
                q6VarH10.k.add(q6Var8);
                c(this.h, this.k, -1, this.l);
                c(this.i, this.h, 1, this.e);
            }
        } else if (!(c6Var14 instanceof g6) && (c6Var2 = c6Var14.M) != null) {
            b(this.h, c6Var2.e.h, c6Var14.v());
            c(this.i, this.h, 1, this.e);
            if (this.b.y) {
                c(this.k, this.h, 1, this.l);
            }
            if (this.d == aVar3) {
                c6 c6Var16 = this.b;
                if (c6Var16.P > 0.0f) {
                    u6 u6Var2 = c6Var16.d;
                    if (u6Var2.d == aVar3) {
                        u6Var2.e.k.add(this.e);
                        this.e.l.add(this.b.d.e);
                        this.e.a = this;
                    }
                }
            }
        }
        if (this.e.l.size() == 0) {
            this.e.c = true;
        }
    }

    @Override // defpackage.x6
    public void e() {
        q6 q6Var = this.h;
        if (q6Var.j) {
            this.b.S = q6Var.g;
        }
    }

    @Override // defpackage.x6
    public void f() {
        this.c = null;
        this.h.b();
        this.i.b();
        this.k.b();
        this.e.b();
        this.g = false;
    }

    @Override // defpackage.x6
    public boolean k() {
        return this.d != c6.a.MATCH_CONSTRAINT || this.b.k == 0;
    }

    public void m() {
        this.g = false;
        this.h.b();
        this.h.j = false;
        this.i.b();
        this.i.j = false;
        this.k.b();
        this.k.j = false;
        this.e.j = false;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("VerticalRun ");
        sbZ.append(this.b.f0);
        return sbZ.toString();
    }
}
