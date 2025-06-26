package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class k13 extends s63<k13, a> implements f83 {
    private static volatile l83<k13> zzek;
    private static final k13 zziim;
    private i23 zziil;

    public static final class a extends s63.b<k13, a> implements f83 {
        public a(l13 l13Var) {
            super(k13.zziim);
        }
    }

    static {
        k13 k13Var = new k13();
        zziim = k13Var;
        s63.s(k13.class, k13Var);
    }

    public static k13 y() {
        return zziim;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (l13.a[i - 1]) {
            case 1:
                return new k13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziim, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zziil"});
            case 4:
                return zziim;
            case 5:
                l83<k13> aVar = zzek;
                if (aVar == null) {
                    synchronized (k13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziim);
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

    public final i23 x() {
        i23 i23Var = this.zziil;
        return i23Var == null ? i23.z() : i23Var;
    }
}
