package defpackage;

import com.google.firebase.Timestamp;
import defpackage.cd6;
import defpackage.jc6;
import defpackage.lc6;
import defpackage.mc6;
import defpackage.mu5;
import defpackage.pc6;
import defpackage.rc6;
import defpackage.wk6;
import defpackage.xc6;
import defpackage.yc6;
import defpackage.zc6;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ow5 {
    public final wt5 a;
    public final String b;

    public ow5(wt5 wt5Var) {
        this.a = wt5Var;
        this.b = q(wt5Var).l();
    }

    public static iu5 q(wt5 wt5Var) {
        return iu5.M(Arrays.asList("projects", wt5Var.e, "databases", wt5Var.f));
    }

    public static iu5 r(iu5 iu5Var) {
        bx5.c(iu5Var.I() > 4 && iu5Var.y(4).equals("documents"), "Tried to deserialize invalid key %s", iu5Var);
        return iu5Var.K(5);
    }

    public bu5 a(String str) {
        iu5 iu5VarD = d(str);
        bx5.c(iu5VarD.y(1).equals(this.a.e), "Tried to deserialize key from different project.", new Object[0]);
        bx5.c(iu5VarD.y(3).equals(this.a.f), "Tried to deserialize key from different database.", new Object[0]);
        return new bu5(r(iu5VarD));
    }

    public qu5 b(cd6 cd6Var) {
        wu5 wu5VarA;
        pu5 pu5Var;
        if (cd6Var.P()) {
            xc6 xc6VarI = cd6Var.I();
            int iOrdinal = xc6VarI.E().ordinal();
            if (iOrdinal == 0) {
                wu5VarA = wu5.a(xc6VarI.G());
            } else if (iOrdinal == 1) {
                wu5VarA = new wu5(e(xc6VarI.H()), null);
            } else {
                if (iOrdinal != 2) {
                    bx5.a("Unknown precondition", new Object[0]);
                    throw null;
                }
                wu5VarA = wu5.c;
            }
        } else {
            wu5VarA = wu5.c;
        }
        int iOrdinal2 = cd6Var.K().ordinal();
        if (iOrdinal2 == 0) {
            if (!cd6Var.Q()) {
                return new yu5(a(cd6Var.M().H()), hu5.b(cd6Var.M().G()), wu5VarA);
            }
            bu5 bu5VarA = a(cd6Var.M().H());
            hu5 hu5VarB = hu5.b(cd6Var.M().G());
            pc6 pc6VarN = cd6Var.N();
            int iF = pc6VarN.F();
            HashSet hashSet = new HashSet(iF);
            for (int i = 0; i < iF; i++) {
                hashSet.add(eu5.M(pc6VarN.E(i)));
            }
            return new vu5(bu5VarA, hu5VarB, new ou5(hashSet), wu5VarA);
        }
        if (iOrdinal2 == 1) {
            return new nu5(a(cd6Var.J()), wu5VarA);
        }
        if (iOrdinal2 == 2) {
            return new bv5(a(cd6Var.O()), wu5VarA);
        }
        if (iOrdinal2 != 3) {
            bx5.a("Unknown mutation operation: %d", cd6Var.K());
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (rc6.c cVar : cd6Var.L().G()) {
            int iOrdinal3 = cVar.M().ordinal();
            if (iOrdinal3 == 0) {
                bx5.c(cVar.L() == rc6.c.b.REQUEST_TIME, "Unknown transform setToServerValue: %s", cVar.L());
                pu5Var = new pu5(eu5.M(cVar.I()), xu5.a);
            } else if (iOrdinal3 == 1) {
                pu5Var = new pu5(eu5.M(cVar.I()), new uu5(cVar.J()));
            } else if (iOrdinal3 == 4) {
                pu5Var = new pu5(eu5.M(cVar.I()), new mu5.b(cVar.H().i()));
            } else {
                if (iOrdinal3 != 5) {
                    bx5.a("Unknown FieldTransform proto: %s", cVar);
                    throw null;
                }
                pu5Var = new pu5(eu5.M(cVar.I()), new mu5.a(cVar.K().i()));
            }
            arrayList.add(pu5Var);
        }
        Boolean bool = wu5VarA.b;
        bx5.c(bool != null && bool.booleanValue(), "Transforms only support precondition \"exists == true\"", new Object[0]);
        return new zu5(a(cd6Var.L().F()), arrayList);
    }

    public final iu5 c(String str) {
        iu5 iu5VarD = d(str);
        return iu5VarD.I() == 4 ? iu5.f : r(iu5VarD);
    }

    public final iu5 d(String str) {
        iu5 iu5VarN = iu5.N(str);
        bx5.c(iu5VarN.I() >= 4 && iu5VarN.y(0).equals("projects") && iu5VarN.y(2).equals("databases"), "Tried to deserialize invalid key %s", iu5VarN);
        return iu5VarN;
    }

    public ju5 e(wk6 wk6Var) {
        return (wk6Var.G() == 0 && wk6Var.F() == 0) ? ju5.f : new ju5(new Timestamp(wk6Var.G(), wk6Var.F()));
    }

    public final lc6 f(yp5 yp5Var) {
        lc6.b bVarG = lc6.G();
        List<bd6> list = yp5Var.b;
        bVarG.o();
        lc6.C((lc6) bVarG.f, list);
        boolean z = yp5Var.a;
        bVarG.o();
        lc6.D((lc6) bVarG.f, z);
        return bVarG.l();
    }

    public mc6 g(bu5 bu5Var, hu5 hu5Var) {
        mc6.b bVarJ = mc6.J();
        String strN = n(this.a, bu5Var.e);
        bVarJ.o();
        mc6.C((mc6) bVarJ.f, strN);
        Map<String, bd6> mapF = hu5Var.a.U().F();
        bVarJ.o();
        ((uj6) mc6.D((mc6) bVarJ.f)).putAll(mapF);
        return bVarJ.l();
    }

    public zc6.c h(dr5 dr5Var) {
        zc6.c.a aVarG = zc6.c.G();
        String strL = l(dr5Var.d);
        aVarG.o();
        zc6.c.C((zc6.c) aVarG.f, strL);
        return aVarG.l();
    }

    public final yc6.g i(eu5 eu5Var) {
        yc6.g.a aVarF = yc6.g.F();
        String strL = eu5Var.l();
        aVarF.o();
        yc6.g.C((yc6.g) aVarF.f, strL);
        return aVarF.l();
    }

    public String j(bu5 bu5Var) {
        return n(this.a, bu5Var.e);
    }

    public cd6 k(qu5 qu5Var) {
        rc6.c cVarL;
        xc6 xc6VarL;
        cd6.b bVarR = cd6.R();
        if (qu5Var instanceof yu5) {
            mc6 mc6VarG = g(qu5Var.a, ((yu5) qu5Var).c);
            bVarR.o();
            cd6.F((cd6) bVarR.f, mc6VarG);
        } else if (qu5Var instanceof vu5) {
            vu5 vu5Var = (vu5) qu5Var;
            mc6 mc6VarG2 = g(qu5Var.a, vu5Var.c);
            bVarR.o();
            cd6.F((cd6) bVarR.f, mc6VarG2);
            ou5 ou5Var = vu5Var.d;
            pc6.b bVarG = pc6.G();
            Iterator<eu5> it = ou5Var.a.iterator();
            while (it.hasNext()) {
                String strL = it.next().l();
                bVarG.o();
                pc6.C((pc6) bVarG.f, strL);
            }
            pc6 pc6VarL = bVarG.l();
            bVarR.o();
            cd6.D((cd6) bVarR.f, pc6VarL);
        } else if (qu5Var instanceof zu5) {
            zu5 zu5Var = (zu5) qu5Var;
            rc6.b bVarH = rc6.H();
            String strJ = j(zu5Var.a);
            bVarH.o();
            rc6.C((rc6) bVarH.f, strJ);
            for (pu5 pu5Var : zu5Var.c) {
                av5 av5Var = pu5Var.b;
                if (av5Var instanceof xu5) {
                    rc6.c.a aVarN = rc6.c.N();
                    aVarN.r(pu5Var.a.l());
                    rc6.c.b bVar = rc6.c.b.REQUEST_TIME;
                    aVarN.o();
                    rc6.c.F((rc6.c) aVarN.f, bVar);
                    cVarL = aVarN.l();
                } else if (av5Var instanceof mu5.b) {
                    rc6.c.a aVarN2 = rc6.c.N();
                    aVarN2.r(pu5Var.a.l());
                    jc6.b bVarJ = jc6.J();
                    List<bd6> list = ((mu5.b) av5Var).a;
                    bVarJ.o();
                    jc6.D((jc6) bVarJ.f, list);
                    aVarN2.o();
                    rc6.c.C((rc6.c) aVarN2.f, bVarJ.l());
                    cVarL = aVarN2.l();
                } else if (av5Var instanceof mu5.a) {
                    rc6.c.a aVarN3 = rc6.c.N();
                    aVarN3.r(pu5Var.a.l());
                    jc6.b bVarJ2 = jc6.J();
                    List<bd6> list2 = ((mu5.a) av5Var).a;
                    bVarJ2.o();
                    jc6.D((jc6) bVarJ2.f, list2);
                    aVarN3.o();
                    rc6.c.E((rc6.c) aVarN3.f, bVarJ2.l());
                    cVarL = aVarN3.l();
                } else {
                    if (!(av5Var instanceof uu5)) {
                        bx5.a("Unknown transform: %s", av5Var);
                        throw null;
                    }
                    rc6.c.a aVarN4 = rc6.c.N();
                    aVarN4.r(pu5Var.a.l());
                    bd6 bd6Var = ((uu5) av5Var).a;
                    aVarN4.o();
                    rc6.c.G((rc6.c) aVarN4.f, bd6Var);
                    cVarL = aVarN4.l();
                }
                bVarH.o();
                rc6.D((rc6) bVarH.f, cVarL);
            }
            bVarR.o();
            cd6.C((cd6) bVarR.f, bVarH.l());
        } else if (qu5Var instanceof nu5) {
            String strJ2 = j(qu5Var.a);
            bVarR.o();
            cd6.G((cd6) bVarR.f, strJ2);
        } else {
            if (!(qu5Var instanceof bv5)) {
                bx5.a("unknown mutation type %s", qu5Var.getClass());
                throw null;
            }
            String strJ3 = j(qu5Var.a);
            bVarR.o();
            cd6.H((cd6) bVarR.f, strJ3);
        }
        if (!qu5Var.b.b()) {
            wu5 wu5Var = qu5Var.b;
            bx5.c(!wu5Var.b(), "Can't serialize an empty precondition", new Object[0]);
            xc6.b bVarI = xc6.I();
            ju5 ju5Var = wu5Var.a;
            if (ju5Var != null) {
                wk6 wk6VarP = p(ju5Var);
                bVarI.o();
                xc6.D((xc6) bVarI.f, wk6VarP);
                xc6VarL = bVarI.l();
            } else {
                Boolean bool = wu5Var.b;
                if (bool == null) {
                    bx5.a("Unknown Precondition", new Object[0]);
                    throw null;
                }
                boolean zBooleanValue = bool.booleanValue();
                bVarI.o();
                xc6.C((xc6) bVarI.f, zBooleanValue);
                xc6VarL = bVarI.l();
            }
            bVarR.o();
            cd6.E((cd6) bVarR.f, xc6VarL);
        }
        return bVarR.l();
    }

    public final String l(iu5 iu5Var) {
        return n(this.a, iu5Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zc6.d m(defpackage.dr5 r13) {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ow5.m(dr5):zc6$d");
    }

    public final String n(wt5 wt5Var, iu5 iu5Var) {
        return q(wt5Var).k("documents").i(iu5Var).l();
    }

    public wk6 o(Timestamp timestamp) {
        wk6.b bVarH = wk6.H();
        bVarH.s(timestamp.e);
        bVarH.r(timestamp.f);
        return bVarH.l();
    }

    public wk6 p(ju5 ju5Var) {
        return o(ju5Var.e);
    }
}
