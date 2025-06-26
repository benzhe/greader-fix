package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class e13 extends s63<e13, a> implements f83 {
    private static volatile l83<e13> zzek;
    private static final e13 zziid;
    private int zzihc;
    private k53 zzihd = k53.f;

    public static final class a extends s63.b<e13, a> implements f83 {
        public a() {
            super(e13.zziid);
        }

        public a(g13 g13Var) {
            super(e13.zziid);
        }
    }

    static {
        e13 e13Var = new e13();
        zziid = e13Var;
        s63.s(e13.class, e13Var);
    }

    public static a B() {
        return zziid.u();
    }

    public static e13 E(k53 k53Var, e63 e63Var) throws e73 {
        return (e13) s63.l(zziid, k53Var, e63Var);
    }

    public static void y(e13 e13Var) {
        e13Var.zzihc = 0;
    }

    public static void z(e13 e13Var, k53 k53Var) {
        Objects.requireNonNull(e13Var);
        k53Var.getClass();
        e13Var.zzihd = k53Var;
    }

    public final k53 A() {
        return this.zzihd;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (g13.a[i - 1]) {
            case 1:
                return new e13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziid, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zziid;
            case 5:
                l83<e13> aVar = zzek;
                if (aVar == null) {
                    synchronized (e13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziid);
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
