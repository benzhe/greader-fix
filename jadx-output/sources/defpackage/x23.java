package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class x23 extends s63<x23, a> implements f83 {
    private static volatile l83<x23> zzek;
    private static final x23 zzill;
    private String zzilj = "";
    private i23 zzilk;

    public static final class a extends s63.b<x23, a> implements f83 {
        public a(w23 w23Var) {
            super(x23.zzill);
        }
    }

    static {
        x23 x23Var = new x23();
        zzill = x23Var;
        s63.s(x23.class, x23Var);
    }

    public static x23 B(k53 k53Var, e63 e63Var) throws e73 {
        return (x23) s63.l(zzill, k53Var, e63Var);
    }

    public static x23 z() {
        return zzill;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (w23.a[i - 1]) {
            case 1:
                return new x23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzill, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzilj", "zzilk"});
            case 4:
                return zzill;
            case 5:
                l83<x23> aVar = zzek;
                if (aVar == null) {
                    synchronized (x23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzill);
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
        return this.zzilj;
    }

    public final i23 y() {
        i23 i23Var = this.zzilk;
        return i23Var == null ? i23.z() : i23Var;
    }
}
