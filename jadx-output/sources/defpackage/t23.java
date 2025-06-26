package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class t23 extends s63<t23, a> implements f83 {
    private static volatile l83<t23> zzek;
    private static final t23 zzilg;
    private String zzilf = "";

    public static final class a extends s63.b<t23, a> implements f83 {
        public a(s23 s23Var) {
            super(t23.zzilg);
        }
    }

    static {
        t23 t23Var = new t23();
        zzilg = t23Var;
        s63.s(t23.class, t23Var);
    }

    public static t23 A(k53 k53Var, e63 e63Var) throws e73 {
        return (t23) s63.l(zzilg, k53Var, e63Var);
    }

    public static t23 y() {
        return zzilg;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (s23.a[i - 1]) {
            case 1:
                return new t23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzilg, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzilf"});
            case 4:
                return zzilg;
            case 5:
                l83<t23> aVar = zzek;
                if (aVar == null) {
                    synchronized (t23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzilg);
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

    public final String x() {
        return this.zzilf;
    }
}
