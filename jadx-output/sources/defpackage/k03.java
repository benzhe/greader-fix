package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class k03 extends s63<k03, a> implements f83 {
    private static volatile l83<k03> zzek;
    private static final k03 zzihr;
    private int zzihc;
    private k53 zzihd = k53.f;
    private o03 zzihq;

    public static final class a extends s63.b<k03, a> implements f83 {
        public a() {
            super(k03.zzihr);
        }

        public a(l03 l03Var) {
            super(k03.zzihr);
        }
    }

    static {
        k03 k03Var = new k03();
        zzihr = k03Var;
        s63.s(k03.class, k03Var);
    }

    public static void A(k03 k03Var, k53 k53Var) {
        Objects.requireNonNull(k03Var);
        k53Var.getClass();
        k03Var.zzihd = k53Var;
    }

    public static a E() {
        return zzihr.u();
    }

    public static k03 F() {
        return zzihr;
    }

    public static k03 H(k53 k53Var, e63 e63Var) throws e73 {
        return (k03) s63.l(zzihr, k53Var, e63Var);
    }

    public static void y(k03 k03Var) {
        k03Var.zzihc = 0;
    }

    public static void z(k03 k03Var, o03 o03Var) {
        Objects.requireNonNull(k03Var);
        o03Var.getClass();
        k03Var.zzihq = o03Var;
    }

    public final k53 B() {
        return this.zzihd;
    }

    public final o03 D() {
        o03 o03Var = this.zzihq;
        return o03Var == null ? o03.y() : o03Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (l03.a[i - 1]) {
            case 1:
                return new k03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihr, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzihq", "zzihd"});
            case 4:
                return zzihr;
            case 5:
                l83<k03> aVar = zzek;
                if (aVar == null) {
                    synchronized (k03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihr);
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
