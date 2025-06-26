package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class s03 extends s63<s03, a> implements f83 {
    private static volatile l83<s03> zzek;
    private static final s03 zzihx;
    private int zzihg;
    private v03 zzihv;

    public static final class a extends s63.b<s03, a> implements f83 {
        public a(t03 t03Var) {
            super(s03.zzihx);
        }
    }

    static {
        s03 s03Var = new s03();
        zzihx = s03Var;
        s63.s(s03.class, s03Var);
    }

    public static s03 A(k53 k53Var, e63 e63Var) throws e73 {
        return (s03) s63.l(zzihx, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (t03.a[i - 1]) {
            case 1:
                return new s03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihx, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzihv", "zzihg"});
            case 4:
                return zzihx;
            case 5:
                l83<s03> aVar = zzek;
                if (aVar == null) {
                    synchronized (s03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihx);
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

    public final v03 y() {
        v03 v03Var = this.zzihv;
        return v03Var == null ? v03.y() : v03Var;
    }
}
