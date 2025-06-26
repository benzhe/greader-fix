package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class s13 extends s63<s13, a> implements f83 {
    private static volatile l83<s13> zzek;
    private static final s13 zziix;
    private int zzihc;
    private o13 zziin;
    private k53 zziiv;
    private k53 zziiw;

    public static final class a extends s63.b<s13, a> implements f83 {
        public a() {
            super(s13.zziix);
        }

        public a(t13 t13Var) {
            super(s13.zziix);
        }
    }

    static {
        s13 s13Var = new s13();
        zziix = s13Var;
        s63.s(s13.class, s13Var);
    }

    public s13() {
        k53 k53Var = k53.f;
        this.zziiv = k53Var;
        this.zziiw = k53Var;
    }

    public static void A(s13 s13Var, k53 k53Var) {
        Objects.requireNonNull(s13Var);
        k53Var.getClass();
        s13Var.zziiv = k53Var;
    }

    public static void B(s13 s13Var, k53 k53Var) {
        Objects.requireNonNull(s13Var);
        k53Var.getClass();
        s13Var.zziiw = k53Var;
    }

    public static a G() {
        return zziix.u();
    }

    public static s13 H() {
        return zziix;
    }

    public static s13 J(k53 k53Var, e63 e63Var) throws e73 {
        return (s13) s63.l(zziix, k53Var, e63Var);
    }

    public static void y(s13 s13Var) {
        s13Var.zzihc = 0;
    }

    public static void z(s13 s13Var, o13 o13Var) {
        Objects.requireNonNull(s13Var);
        o13Var.getClass();
        s13Var.zziin = o13Var;
    }

    public final o13 D() {
        o13 o13Var = this.zziin;
        return o13Var == null ? o13.A() : o13Var;
    }

    public final k53 E() {
        return this.zziiv;
    }

    public final k53 F() {
        return this.zziiw;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (t13.a[i - 1]) {
            case 1:
                return new s13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziix, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzihc", "zziin", "zziiv", "zziiw"});
            case 4:
                return zziix;
            case 5:
                l83<s13> aVar = zzek;
                if (aVar == null) {
                    synchronized (s13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziix);
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
