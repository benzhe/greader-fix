package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.c6;
import defpackage.m6;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class p6 {
    public d6 a;
    public d6 d;
    public m6.b f;
    public m6.a g;
    public ArrayList<v6> h;
    public boolean b = true;
    public boolean c = true;
    public ArrayList<x6> e = new ArrayList<>();

    public p6(d6 d6Var) {
        new ArrayList();
        this.f = null;
        this.g = new m6.a();
        this.h = new ArrayList<>();
        this.a = d6Var;
        this.d = d6Var;
    }

    public final void a(q6 q6Var, int i, int i2, q6 q6Var2, ArrayList<v6> arrayList, v6 v6Var) {
        x6 x6Var = q6Var.d;
        if (x6Var.c == null) {
            d6 d6Var = this.a;
            if (x6Var == d6Var.d || x6Var == d6Var.e) {
                return;
            }
            if (v6Var == null) {
                v6Var = new v6(x6Var, i2);
                arrayList.add(v6Var);
            }
            x6Var.c = v6Var;
            v6Var.b.add(x6Var);
            for (o6 o6Var : x6Var.h.k) {
                if (o6Var instanceof q6) {
                    a((q6) o6Var, i, 0, q6Var2, arrayList, v6Var);
                }
            }
            for (o6 o6Var2 : x6Var.i.k) {
                if (o6Var2 instanceof q6) {
                    a((q6) o6Var2, i, 1, q6Var2, arrayList, v6Var);
                }
            }
            if (i == 1 && (x6Var instanceof w6)) {
                for (o6 o6Var3 : ((w6) x6Var).k.k) {
                    if (o6Var3 instanceof q6) {
                        a((q6) o6Var3, i, 2, q6Var2, arrayList, v6Var);
                    }
                }
            }
            Iterator<q6> it = x6Var.h.l.iterator();
            while (it.hasNext()) {
                a(it.next(), i, 0, q6Var2, arrayList, v6Var);
            }
            Iterator<q6> it2 = x6Var.i.l.iterator();
            while (it2.hasNext()) {
                a(it2.next(), i, 1, q6Var2, arrayList, v6Var);
            }
            if (i == 1 && (x6Var instanceof w6)) {
                Iterator<q6> it3 = ((w6) x6Var).k.l.iterator();
                while (it3.hasNext()) {
                    a(it3.next(), i, 2, q6Var2, arrayList, v6Var);
                }
            }
        }
    }

    public final boolean b(d6 d6Var) {
        c6.a aVar;
        int iT;
        int iN;
        c6.a aVar2;
        c6.a aVar3 = c6.a.MATCH_CONSTRAINT;
        c6.a aVar4 = c6.a.WRAP_CONTENT;
        c6.a aVar5 = c6.a.FIXED;
        Iterator<c6> it = d6Var.C0.iterator();
        while (it.hasNext()) {
            c6 next = it.next();
            c6.a[] aVarArr = next.L;
            c6.a aVar6 = aVarArr[0];
            c6.a aVar7 = aVarArr[1];
            if (next.e0 == 8) {
                next.a = true;
            } else {
                float f = next.o;
                if (f < 1.0f && aVar6 == aVar3) {
                    next.j = 2;
                }
                float f2 = next.r;
                if (f2 < 1.0f && aVar7 == aVar3) {
                    next.k = 2;
                }
                if (next.P > 0.0f) {
                    if (aVar6 == aVar3 && (aVar7 == aVar4 || aVar7 == aVar5)) {
                        next.j = 3;
                    } else if (aVar7 == aVar3 && (aVar6 == aVar4 || aVar6 == aVar5)) {
                        next.k = 3;
                    } else if (aVar6 == aVar3 && aVar7 == aVar3) {
                        if (next.j == 0) {
                            next.j = 3;
                        }
                        if (next.k == 0) {
                            next.k = 3;
                        }
                    }
                }
                if (aVar6 == aVar3 && next.j == 1 && (next.A.d == null || next.C.d == null)) {
                    aVar6 = aVar4;
                }
                c6.a aVar8 = (aVar7 == aVar3 && next.k == 1 && (next.B.d == null || next.D.d == null)) ? aVar4 : aVar7;
                u6 u6Var = next.d;
                u6Var.d = aVar6;
                int i = next.j;
                u6Var.a = i;
                w6 w6Var = next.e;
                w6Var.d = aVar8;
                int i2 = next.k;
                w6Var.a = i2;
                c6.a aVar9 = c6.a.MATCH_PARENT;
                if ((aVar6 == aVar9 || aVar6 == aVar5 || aVar6 == aVar4) && (aVar8 == aVar9 || aVar8 == aVar5 || aVar8 == aVar4)) {
                    int iT2 = next.t();
                    if (aVar6 == aVar9) {
                        iT = (d6Var.t() - next.A.e) - next.C.e;
                        aVar = aVar5;
                    } else {
                        aVar = aVar6;
                        iT = iT2;
                    }
                    int iN2 = next.n();
                    if (aVar8 == aVar9) {
                        iN = (d6Var.n() - next.B.e) - next.D.e;
                        aVar2 = aVar5;
                    } else {
                        iN = iN2;
                        aVar2 = aVar8;
                    }
                    f(next, aVar, iT, aVar2, iN);
                    next.d.e.c(next.t());
                    next.e.e.c(next.n());
                    next.a = true;
                } else {
                    if (aVar6 == aVar3 && (aVar8 == aVar4 || aVar8 == aVar5)) {
                        if (i == 3) {
                            if (aVar8 == aVar4) {
                                f(next, aVar4, 0, aVar4, 0);
                            }
                            int iN3 = next.n();
                            f(next, aVar5, (int) ((iN3 * next.P) + 0.5f), aVar5, iN3);
                            next.d.e.c(next.t());
                            next.e.e.c(next.n());
                            next.a = true;
                        } else if (i == 1) {
                            f(next, aVar4, 0, aVar8, 0);
                            next.d.e.m = next.t();
                        } else if (i == 2) {
                            c6.a[] aVarArr2 = d6Var.L;
                            if (aVarArr2[0] == aVar5 || aVarArr2[0] == aVar9) {
                                f(next, aVar5, (int) ((f * d6Var.t()) + 0.5f), aVar8, next.n());
                                next.d.e.c(next.t());
                                next.e.e.c(next.n());
                                next.a = true;
                            }
                        } else {
                            b6[] b6VarArr = next.I;
                            if (b6VarArr[0].d == null || b6VarArr[1].d == null) {
                                f(next, aVar4, 0, aVar8, 0);
                                next.d.e.c(next.t());
                                next.e.e.c(next.n());
                                next.a = true;
                            }
                        }
                    }
                    if (aVar8 == aVar3 && (aVar6 == aVar4 || aVar6 == aVar5)) {
                        if (i2 == 3) {
                            if (aVar6 == aVar4) {
                                f(next, aVar4, 0, aVar4, 0);
                            }
                            int iT3 = next.t();
                            float f3 = next.P;
                            if (next.Q == -1) {
                                f3 = 1.0f / f3;
                            }
                            f(next, aVar5, iT3, aVar5, (int) ((iT3 * f3) + 0.5f));
                            next.d.e.c(next.t());
                            next.e.e.c(next.n());
                            next.a = true;
                        } else if (i2 == 1) {
                            f(next, aVar6, 0, aVar4, 0);
                            next.e.e.m = next.n();
                        } else if (i2 == 2) {
                            c6.a[] aVarArr3 = d6Var.L;
                            if (aVarArr3[1] == aVar5 || aVarArr3[1] == aVar9) {
                                f(next, aVar6, next.t(), aVar5, (int) ((f2 * d6Var.n()) + 0.5f));
                                next.d.e.c(next.t());
                                next.e.e.c(next.n());
                                next.a = true;
                            }
                        } else {
                            b6[] b6VarArr2 = next.I;
                            if (b6VarArr2[2].d == null || b6VarArr2[3].d == null) {
                                f(next, aVar4, 0, aVar8, 0);
                                next.d.e.c(next.t());
                                next.e.e.c(next.n());
                                next.a = true;
                            }
                        }
                    }
                    if (aVar6 == aVar3 && aVar8 == aVar3) {
                        if (i == 1 || i2 == 1) {
                            f(next, aVar4, 0, aVar4, 0);
                            next.d.e.m = next.t();
                            next.e.e.m = next.n();
                        } else if (i2 == 2 && i == 2) {
                            c6.a[] aVarArr4 = d6Var.L;
                            if (aVarArr4[0] == aVar5 || aVarArr4[0] == aVar5) {
                                if (aVarArr4[1] == aVar5 || aVarArr4[1] == aVar5) {
                                    f(next, aVar5, (int) ((f * d6Var.t()) + 0.5f), aVar5, (int) ((f2 * d6Var.n()) + 0.5f));
                                    next.d.e.c(next.t());
                                    next.e.e.c(next.n());
                                    next.a = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public void c() {
        ArrayList<x6> arrayList = this.e;
        arrayList.clear();
        this.d.d.f();
        this.d.e.f();
        arrayList.add(this.d.d);
        arrayList.add(this.d.e);
        Iterator<c6> it = this.d.C0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            c6 next = it.next();
            if (next instanceof f6) {
                arrayList.add(new s6(next));
            } else {
                if (next.x()) {
                    if (next.b == null) {
                        next.b = new n6(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.b);
                } else {
                    arrayList.add(next.d);
                }
                if (next.y()) {
                    if (next.c == null) {
                        next.c = new n6(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.c);
                } else {
                    arrayList.add(next.e);
                }
                if (next instanceof h6) {
                    arrayList.add(new t6(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<x6> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().f();
        }
        Iterator<x6> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            x6 next2 = it3.next();
            if (next2.b != this.d) {
                next2.d();
            }
        }
        this.h.clear();
        v6.c = 0;
        e(this.a.d, 0, this.h);
        e(this.a.e, 1, this.h);
        this.b = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(defpackage.d6 r18, int r19) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p6.d(d6, int):int");
    }

    public final void e(x6 x6Var, int i, ArrayList<v6> arrayList) {
        for (o6 o6Var : x6Var.h.k) {
            if (o6Var instanceof q6) {
                a((q6) o6Var, i, 0, x6Var.i, arrayList, null);
            } else if (o6Var instanceof x6) {
                a(((x6) o6Var).h, i, 0, x6Var.i, arrayList, null);
            }
        }
        for (o6 o6Var2 : x6Var.i.k) {
            if (o6Var2 instanceof q6) {
                a((q6) o6Var2, i, 1, x6Var.h, arrayList, null);
            } else if (o6Var2 instanceof x6) {
                a(((x6) o6Var2).i, i, 1, x6Var.h, arrayList, null);
            }
        }
        if (i == 1) {
            for (o6 o6Var3 : ((w6) x6Var).k.k) {
                if (o6Var3 instanceof q6) {
                    a((q6) o6Var3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    public final void f(c6 c6Var, c6.a aVar, int i, c6.a aVar2, int i2) {
        m6.a aVar3 = this.g;
        aVar3.a = aVar;
        aVar3.b = aVar2;
        aVar3.c = i;
        aVar3.d = i2;
        ((ConstraintLayout.b) this.f).a(c6Var, aVar3);
        c6Var.I(this.g.e);
        c6Var.D(this.g.f);
        m6.a aVar4 = this.g;
        c6Var.y = aVar4.h;
        c6Var.C(aVar4.g);
    }

    public void g() {
        r6 r6Var;
        c6.a aVar = c6.a.FIXED;
        c6.a aVar2 = c6.a.MATCH_CONSTRAINT;
        Iterator<c6> it = this.a.C0.iterator();
        while (it.hasNext()) {
            c6 next = it.next();
            if (!next.a) {
                c6.a[] aVarArr = next.L;
                boolean z = false;
                c6.a aVar3 = aVarArr[0];
                c6.a aVar4 = aVarArr[1];
                int i = next.j;
                int i2 = next.k;
                c6.a aVar5 = c6.a.WRAP_CONTENT;
                boolean z2 = aVar3 == aVar5 || (aVar3 == aVar2 && i == 1);
                if (aVar4 == aVar5 || (aVar4 == aVar2 && i2 == 1)) {
                    z = true;
                }
                r6 r6Var2 = next.d.e;
                boolean z3 = r6Var2.j;
                r6 r6Var3 = next.e.e;
                boolean z4 = r6Var3.j;
                if (z3 && z4) {
                    f(next, aVar, r6Var2.g, aVar, r6Var3.g);
                    next.a = true;
                } else if (z3 && z) {
                    f(next, aVar, r6Var2.g, aVar5, r6Var3.g);
                    if (aVar4 == aVar2) {
                        next.e.e.m = next.n();
                    } else {
                        next.e.e.c(next.n());
                        next.a = true;
                    }
                } else if (z4 && z2) {
                    f(next, aVar5, r6Var2.g, aVar, r6Var3.g);
                    if (aVar3 == aVar2) {
                        next.d.e.m = next.t();
                    } else {
                        next.d.e.c(next.t());
                        next.a = true;
                    }
                }
                if (next.a && (r6Var = next.e.l) != null) {
                    r6Var.c(next.X);
                }
            }
        }
    }
}
