package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class j03 extends s63<j03, a> implements f83 {
    private static volatile l83<j03> zzek;
    private static final j03 zzihp;
    private n03 zzihn;
    private b23 zziho;

    public static final class a extends s63.b<j03, a> implements f83 {
        public a(i03 i03Var) {
            super(j03.zzihp);
        }
    }

    static {
        j03 j03Var = new j03();
        zzihp = j03Var;
        s63.s(j03.class, j03Var);
    }

    public static j03 A(k53 k53Var, e63 e63Var) throws e73 {
        return (j03) s63.l(zzihp, k53Var, e63Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (i03.a[i - 1]) {
            case 1:
                return new j03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihp, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzihn", "zziho"});
            case 4:
                return zzihp;
            case 5:
                l83<j03> aVar = zzek;
                if (aVar == null) {
                    synchronized (j03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihp);
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

    public final n03 x() {
        n03 n03Var = this.zzihn;
        return n03Var == null ? n03.z() : n03Var;
    }

    public final b23 y() {
        b23 b23Var = this.zziho;
        return b23Var == null ? b23.z() : b23Var;
    }
}
