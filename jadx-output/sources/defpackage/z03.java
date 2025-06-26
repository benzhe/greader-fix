package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class z03 extends s63<z03, a> implements f83 {
    private static volatile l83<z03> zzek;
    private static final z03 zziia;
    private int zzihc;
    private int zzihg;

    public static final class a extends s63.b<z03, a> implements f83 {
        public a(y03 y03Var) {
            super(z03.zziia);
        }
    }

    static {
        z03 z03Var = new z03();
        zziia = z03Var;
        s63.s(z03.class, z03Var);
    }

    public static z03 z(k53 k53Var, e63 e63Var) throws e73 {
        return (z03) s63.l(zziia, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (y03.a[i - 1]) {
            case 1:
                return new z03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziia, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzihg", "zzihc"});
            case 4:
                return zziia;
            case 5:
                l83<z03> aVar = zzek;
                if (aVar == null) {
                    synchronized (z03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziia);
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
        return this.zzihg;
    }
}
