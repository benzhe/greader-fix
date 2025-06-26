package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class gh1 extends s63<gh1, a> implements f83 {
    private static volatile l83<gh1> zzek;
    private static final gh1 zzez;
    private int zzdv;
    private int zzey = 2;

    public static final class a extends s63.b<gh1, a> implements f83 {
        public a(hg1 hg1Var) {
            super(gh1.zzez);
        }
    }

    static {
        gh1 gh1Var = new gh1();
        zzez = gh1Var;
        s63.s(gh1.class, gh1Var);
    }

    public static gh1 y() {
        return zzez;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (hg1.a[i - 1]) {
            case 1:
                return new gh1();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzez, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001bဌ\u0000", new Object[]{"zzdv", "zzey", fk1.a});
            case 4:
                return zzez;
            case 5:
                l83<gh1> aVar = zzek;
                if (aVar == null) {
                    synchronized (gh1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzez);
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

    public final ej1 x() {
        ej1 ej1VarI = ej1.i(this.zzey);
        return ej1VarI == null ? ej1.ENUM_SIGNAL_SOURCE_ADSHIELD : ej1VarI;
    }
}
