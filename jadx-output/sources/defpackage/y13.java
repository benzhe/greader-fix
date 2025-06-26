package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class y13 extends s63<y13, a> implements f83 {
    private static volatile l83<y13> zzek;
    private static final y13 zzijr;
    private int zzihc;
    private k53 zzihd = k53.f;
    private c23 zzijq;

    public static final class a extends s63.b<y13, a> implements f83 {
        public a() {
            super(y13.zzijr);
        }

        public a(z13 z13Var) {
            super(y13.zzijr);
        }
    }

    static {
        y13 y13Var = new y13();
        zzijr = y13Var;
        s63.s(y13.class, y13Var);
    }

    public static void A(y13 y13Var, k53 k53Var) {
        Objects.requireNonNull(y13Var);
        k53Var.getClass();
        y13Var.zzihd = k53Var;
    }

    public static a E() {
        return zzijr.u();
    }

    public static y13 F() {
        return zzijr;
    }

    public static y13 H(k53 k53Var, e63 e63Var) throws e73 {
        return (y13) s63.l(zzijr, k53Var, e63Var);
    }

    public static void y(y13 y13Var) {
        y13Var.zzihc = 0;
    }

    public static void z(y13 y13Var, c23 c23Var) {
        Objects.requireNonNull(y13Var);
        c23Var.getClass();
        y13Var.zzijq = c23Var;
    }

    public final k53 B() {
        return this.zzihd;
    }

    public final c23 D() {
        c23 c23Var = this.zzijq;
        return c23Var == null ? c23.z() : c23Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (z13.a[i - 1]) {
            case 1:
                return new y13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzijr, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzijq", "zzihd"});
            case 4:
                return zzijr;
            case 5:
                l83<y13> aVar = zzek;
                if (aVar == null) {
                    synchronized (y13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzijr);
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
