package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class r03 extends s63<r03, a> implements f83 {
    private static volatile l83<r03> zzek;
    private static final r03 zzihw;
    private int zzihc;
    private k53 zzihd = k53.f;
    private v03 zzihv;

    public static final class a extends s63.b<r03, a> implements f83 {
        public a() {
            super(r03.zzihw);
        }

        public a(q03 q03Var) {
            super(r03.zzihw);
        }
    }

    static {
        r03 r03Var = new r03();
        zzihw = r03Var;
        s63.s(r03.class, r03Var);
    }

    public static void A(r03 r03Var, k53 k53Var) {
        Objects.requireNonNull(r03Var);
        k53Var.getClass();
        r03Var.zzihd = k53Var;
    }

    public static a E() {
        return zzihw.u();
    }

    public static r03 G(k53 k53Var, e63 e63Var) throws e73 {
        return (r03) s63.l(zzihw, k53Var, e63Var);
    }

    public static void y(r03 r03Var) {
        r03Var.zzihc = 0;
    }

    public static void z(r03 r03Var, v03 v03Var) {
        Objects.requireNonNull(r03Var);
        v03Var.getClass();
        r03Var.zzihv = v03Var;
    }

    public final k53 B() {
        return this.zzihd;
    }

    public final v03 D() {
        v03 v03Var = this.zzihv;
        return v03Var == null ? v03.y() : v03Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (q03.a[i - 1]) {
            case 1:
                return new r03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihw, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzihv", "zzihd"});
            case 4:
                return zzihw;
            case 5:
                l83<r03> aVar = zzek;
                if (aVar == null) {
                    synchronized (r03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihw);
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
