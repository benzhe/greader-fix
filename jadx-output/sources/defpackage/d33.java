package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class d33 extends s63<d33, a> implements f83 {
    private static volatile l83<d33> zzek;
    private static final d33 zzilw;
    private int zzihc;
    private k53 zzihd = k53.f;

    public static final class a extends s63.b<d33, a> implements f83 {
        public a() {
            super(d33.zzilw);
        }

        public a(c33 c33Var) {
            super(d33.zzilw);
        }
    }

    static {
        d33 d33Var = new d33();
        zzilw = d33Var;
        s63.s(d33.class, d33Var);
    }

    public static a B() {
        return zzilw.u();
    }

    public static d33 E(k53 k53Var, e63 e63Var) throws e73 {
        return (d33) s63.l(zzilw, k53Var, e63Var);
    }

    public static void y(d33 d33Var) {
        d33Var.zzihc = 0;
    }

    public static void z(d33 d33Var, k53 k53Var) {
        Objects.requireNonNull(d33Var);
        k53Var.getClass();
        d33Var.zzihd = k53Var;
    }

    public final k53 A() {
        return this.zzihd;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (c33.a[i - 1]) {
            case 1:
                return new d33();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzilw, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zzilw;
            case 5:
                l83<d33> aVar = zzek;
                if (aVar == null) {
                    synchronized (d33.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzilw);
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
