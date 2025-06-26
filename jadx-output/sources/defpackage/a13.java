package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class a13 extends s63<a13, a> implements f83 {
    private static volatile l83<a13> zzek;
    private static final a13 zziib;
    private int zzihc;
    private k53 zzihd = k53.f;

    public static final class a extends s63.b<a13, a> implements f83 {
        public a() {
            super(a13.zziib);
        }

        public a(b13 b13Var) {
            super(a13.zziib);
        }
    }

    static {
        a13 a13Var = new a13();
        zziib = a13Var;
        s63.s(a13.class, a13Var);
    }

    public static a B() {
        return zziib.u();
    }

    public static a13 E(k53 k53Var, e63 e63Var) throws e73 {
        return (a13) s63.l(zziib, k53Var, e63Var);
    }

    public static void y(a13 a13Var) {
        a13Var.zzihc = 0;
    }

    public static void z(a13 a13Var, k53 k53Var) {
        Objects.requireNonNull(a13Var);
        k53Var.getClass();
        a13Var.zzihd = k53Var;
    }

    public final k53 A() {
        return this.zzihd;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (b13.a[i - 1]) {
            case 1:
                return new a13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziib, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zziib;
            case 5:
                l83<a13> aVar = zzek;
                if (aVar == null) {
                    synchronized (a13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziib);
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
