package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g03 extends s63<g03, a> implements f83 {
    private static volatile l83<g03> zzek;
    private static final g03 zzihm;
    private int zzihc;
    private k03 zzihk;
    private y13 zzihl;

    public static final class a extends s63.b<g03, a> implements f83 {
        public a() {
            super(g03.zzihm);
        }

        public a(h03 h03Var) {
            super(g03.zzihm);
        }
    }

    static {
        g03 g03Var = new g03();
        zzihm = g03Var;
        s63.s(g03.class, g03Var);
    }

    public static void A(g03 g03Var, y13 y13Var) {
        Objects.requireNonNull(g03Var);
        y13Var.getClass();
        g03Var.zzihl = y13Var;
    }

    public static a E() {
        return zzihm.u();
    }

    public static g03 G(k53 k53Var, e63 e63Var) throws e73 {
        return (g03) s63.l(zzihm, k53Var, e63Var);
    }

    public static void y(g03 g03Var, int i) {
        g03Var.zzihc = i;
    }

    public static void z(g03 g03Var, k03 k03Var) {
        Objects.requireNonNull(g03Var);
        k03Var.getClass();
        g03Var.zzihk = k03Var;
    }

    public final k03 B() {
        k03 k03Var = this.zzihk;
        return k03Var == null ? k03.F() : k03Var;
    }

    public final y13 D() {
        y13 y13Var = this.zzihl;
        return y13Var == null ? y13.F() : y13Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (h03.a[i - 1]) {
            case 1:
                return new g03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihm, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzihc", "zzihk", "zzihl"});
            case 4:
                return zzihm;
            case 5:
                l83<g03> aVar = zzek;
                if (aVar == null) {
                    synchronized (g03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihm);
                            zzek = aVar;
                        }
                    }
                }
                return aVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final int x() {
        return this.zzihc;
    }
}
