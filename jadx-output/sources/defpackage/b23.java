package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class b23 extends s63<b23, a> implements f83 {
    private static volatile l83<b23> zzek;
    private static final b23 zzijs;
    private int zzihc;
    private int zzihg;
    private c23 zzijq;

    public static final class a extends s63.b<b23, a> implements f83 {
        public a(a23 a23Var) {
            super(b23.zzijs);
        }
    }

    static {
        b23 b23Var = new b23();
        zzijs = b23Var;
        s63.s(b23.class, b23Var);
    }

    public static b23 B(k53 k53Var, e63 e63Var) throws e73 {
        return (b23) s63.l(zzijs, k53Var, e63Var);
    }

    public static b23 z() {
        return zzijs;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (a23.a[i - 1]) {
            case 1:
                return new b23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzijs, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzijq", "zzihg", "zzihc"});
            case 4:
                return zzijs;
            case 5:
                l83<b23> aVar = zzek;
                if (aVar == null) {
                    synchronized (b23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzijs);
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

    public final c23 y() {
        c23 c23Var = this.zzijq;
        return c23Var == null ? c23.z() : c23Var;
    }
}
