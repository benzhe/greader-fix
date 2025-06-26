package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class i13 extends s63<i13, a> implements f83 {
    private static volatile l83<i13> zzek;
    private static final i13 zziie;

    public static final class a extends s63.b<i13, a> implements f83 {
        public a(h13 h13Var) {
            super(i13.zziie);
        }
    }

    static {
        i13 i13Var = new i13();
        zziie = i13Var;
        s63.s(i13.class, i13Var);
    }

    public static i13 y(k53 k53Var, e63 e63Var) throws e73 {
        return (i13) s63.l(zziie, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (h13.a[i - 1]) {
            case 1:
                return new i13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziie, "\u0000\u0000", null);
            case 4:
                return zziie;
            case 5:
                l83<i13> aVar = zzek;
                if (aVar == null) {
                    synchronized (i13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziie);
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
}
