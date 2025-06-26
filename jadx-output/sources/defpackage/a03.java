package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class a03 extends s63<a03, a> implements f83 {
    private static volatile l83<a03> zzek;
    private static final a03 zzihf;
    private int zzihc;
    private k53 zzihd = k53.f;
    private f03 zzihe;

    public static final class a extends s63.b<a03, a> implements f83 {
        public a() {
            super(a03.zzihf);
        }

        public a(zz2 zz2Var) {
            super(a03.zzihf);
        }
    }

    static {
        a03 a03Var = new a03();
        zzihf = a03Var;
        s63.s(a03.class, a03Var);
    }

    public static void A(a03 a03Var, k53 k53Var) {
        Objects.requireNonNull(a03Var);
        k53Var.getClass();
        a03Var.zzihd = k53Var;
    }

    public static a E() {
        return zzihf.u();
    }

    public static a03 G(k53 k53Var, e63 e63Var) throws e73 {
        return (a03) s63.l(zzihf, k53Var, e63Var);
    }

    public static void y(a03 a03Var) {
        a03Var.zzihc = 0;
    }

    public static void z(a03 a03Var, f03 f03Var) {
        Objects.requireNonNull(a03Var);
        f03Var.getClass();
        a03Var.zzihe = f03Var;
    }

    public final k53 B() {
        return this.zzihd;
    }

    public final f03 D() {
        f03 f03Var = this.zzihe;
        return f03Var == null ? f03.y() : f03Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (zz2.a[i - 1]) {
            case 1:
                return new a03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihf, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzihc", "zzihd", "zzihe"});
            case 4:
                return zzihf;
            case 5:
                l83<a03> aVar = zzek;
                if (aVar == null) {
                    synchronized (a03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihf);
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
