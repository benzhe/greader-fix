package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class b03 extends s63<b03, a> implements f83 {
    private static volatile l83<b03> zzek;
    private static final b03 zzihh;
    private f03 zzihe;
    private int zzihg;

    public static final class a extends s63.b<b03, a> implements f83 {
        public a(c03 c03Var) {
            super(b03.zzihh);
        }
    }

    static {
        b03 b03Var = new b03();
        zzihh = b03Var;
        s63.s(b03.class, b03Var);
    }

    public static b03 A(k53 k53Var, e63 e63Var) throws e73 {
        return (b03) s63.l(zzihh, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (c03.a[i - 1]) {
            case 1:
                return new b03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihh, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzihg", "zzihe"});
            case 4:
                return zzihh;
            case 5:
                l83<b03> aVar = zzek;
                if (aVar == null) {
                    synchronized (b03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihh);
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

    public final f03 y() {
        f03 f03Var = this.zzihe;
        return f03Var == null ? f03.y() : f03Var;
    }
}
