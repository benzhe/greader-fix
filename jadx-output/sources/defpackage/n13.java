package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class n13 extends s63<n13, a> implements f83 {
    private static volatile l83<n13> zzek;
    private static final n13 zziio;
    private o13 zziin;

    public static final class a extends s63.b<n13, a> implements f83 {
        public a(m13 m13Var) {
            super(n13.zziio);
        }
    }

    static {
        n13 n13Var = new n13();
        zziio = n13Var;
        s63.s(n13.class, n13Var);
    }

    public static n13 z(k53 k53Var, e63 e63Var) throws e73 {
        return (n13) s63.l(zziio, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (m13.a[i - 1]) {
            case 1:
                return new n13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziio, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zziin"});
            case 4:
                return zziio;
            case 5:
                l83<n13> aVar = zzek;
                if (aVar == null) {
                    synchronized (n13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziio);
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

    public final o13 x() {
        o13 o13Var = this.zziin;
        return o13Var == null ? o13.A() : o13Var;
    }
}
