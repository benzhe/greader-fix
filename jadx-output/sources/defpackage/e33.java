package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class e33 extends s63<e33, a> implements f83 {
    private static volatile l83<e33> zzek;
    private static final e33 zzilx;

    public static final class a extends s63.b<e33, a> implements f83 {
        public a(f33 f33Var) {
            super(e33.zzilx);
        }
    }

    static {
        e33 e33Var = new e33();
        zzilx = e33Var;
        s63.s(e33.class, e33Var);
    }

    public static e33 x(k53 k53Var, e63 e63Var) throws e73 {
        return (e33) s63.l(zzilx, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (f33.a[i - 1]) {
            case 1:
                return new e33();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzilx, "\u0000\u0000", null);
            case 4:
                return zzilx;
            case 5:
                l83<e33> aVar = zzek;
                if (aVar == null) {
                    synchronized (e33.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzilx);
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
