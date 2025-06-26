package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class r13 extends s63<r13, a> implements f83 {
    private static volatile l83<r13> zzek;
    private static final r13 zziiu;
    private int zzihc;
    private k53 zzihd = k53.f;
    private s13 zziit;

    public static final class a extends s63.b<r13, a> implements f83 {
        public a() {
            super(r13.zziiu);
        }

        public a(q13 q13Var) {
            super(r13.zziiu);
        }
    }

    static {
        r13 r13Var = new r13();
        zziiu = r13Var;
        s63.s(r13.class, r13Var);
    }

    public static void A(r13 r13Var, k53 k53Var) {
        Objects.requireNonNull(r13Var);
        k53Var.getClass();
        r13Var.zzihd = k53Var;
    }

    public static a E() {
        return zziiu.u();
    }

    public static r13 G(k53 k53Var, e63 e63Var) throws e73 {
        return (r13) s63.l(zziiu, k53Var, e63Var);
    }

    public static void y(r13 r13Var) {
        r13Var.zzihc = 0;
    }

    public static void z(r13 r13Var, s13 s13Var) {
        Objects.requireNonNull(r13Var);
        s13Var.getClass();
        r13Var.zziit = s13Var;
    }

    public final k53 B() {
        return this.zzihd;
    }

    public final s13 D() {
        s13 s13Var = this.zziit;
        return s13Var == null ? s13.H() : s13Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (q13.a[i - 1]) {
            case 1:
                return new r13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziiu, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zziit", "zzihd"});
            case 4:
                return zziiu;
            case 5:
                l83<r13> aVar = zzek;
                if (aVar == null) {
                    synchronized (r13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziiu);
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
