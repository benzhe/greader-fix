package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class d13 extends s63<d13, a> implements f83 {
    private static volatile l83<d13> zzek;
    private static final d13 zziic;
    private int zzihc;
    private int zzihg;

    public static final class a extends s63.b<d13, a> implements f83 {
        public a(c13 c13Var) {
            super(d13.zziic);
        }
    }

    static {
        d13 d13Var = new d13();
        zziic = d13Var;
        s63.s(d13.class, d13Var);
    }

    public static d13 z(k53 k53Var, e63 e63Var) throws e73 {
        return (d13) s63.l(zziic, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (c13.a[i - 1]) {
            case 1:
                return new d13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziic, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzihc", "zzihg"});
            case 4:
                return zziic;
            case 5:
                l83<d13> aVar = zzek;
                if (aVar == null) {
                    synchronized (d13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziic);
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
