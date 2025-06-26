package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class w03 extends s63<w03, a> implements f83 {
    private static volatile l83<w03> zzek;
    private static final w03 zzihz;
    private int zzihc;
    private k53 zzihd = k53.f;

    public static final class a extends s63.b<w03, a> implements f83 {
        public a() {
            super(w03.zzihz);
        }

        public a(x03 x03Var) {
            super(w03.zzihz);
        }
    }

    static {
        w03 w03Var = new w03();
        zzihz = w03Var;
        s63.s(w03.class, w03Var);
    }

    public static a B() {
        return zzihz.u();
    }

    public static w03 E(k53 k53Var, e63 e63Var) throws e73 {
        return (w03) s63.l(zzihz, k53Var, e63Var);
    }

    public static void y(w03 w03Var) {
        w03Var.zzihc = 0;
    }

    public static void z(w03 w03Var, k53 k53Var) {
        Objects.requireNonNull(w03Var);
        k53Var.getClass();
        w03Var.zzihd = k53Var;
    }

    public final k53 A() {
        return this.zzihd;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (x03.a[i - 1]) {
            case 1:
                return new w03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihz, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zzihz;
            case 5:
                l83<w03> aVar = zzek;
                if (aVar == null) {
                    synchronized (w03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihz);
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
