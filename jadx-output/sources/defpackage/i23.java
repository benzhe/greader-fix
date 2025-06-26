package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class i23 extends s63<i23, a> implements f83 {
    private static volatile l83<i23> zzek;
    private static final i23 zzikn;
    private String zzijv = "";
    private k53 zzijw = k53.f;
    private int zzikm;

    public static final class a extends s63.b<i23, a> implements f83 {
        public a(j23 j23Var) {
            super(i23.zzikn);
        }
    }

    static {
        i23 i23Var = new i23();
        zzikn = i23Var;
        s63.s(i23.class, i23Var);
    }

    public static i23 z() {
        return zzikn;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (j23.a[i - 1]) {
            case 1:
                return new i23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzikn, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzijv", "zzijw", "zzikm"});
            case 4:
                return zzikn;
            case 5:
                l83<i23> aVar = zzek;
                if (aVar == null) {
                    synchronized (i23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzikn);
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
        return this.zzijv;
    }

    public final k53 y() {
        return this.zzijw;
    }
}
