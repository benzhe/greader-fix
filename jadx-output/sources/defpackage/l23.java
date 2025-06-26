package defpackage;

import defpackage.s63;

@Deprecated
/* loaded from: classes.dex */
public final class l23 extends s63<l23, a> implements f83 {
    private static volatile l83<l23> zzek;
    private static final l23 zziks;
    private int zzikp;
    private boolean zzikq;
    private String zziko = "";
    private String zzijv = "";
    private String zzikr = "";

    public static final class a extends s63.b<l23, a> implements f83 {
        public a(k23 k23Var) {
            super(l23.zziks);
        }
    }

    static {
        l23 l23Var = new l23();
        zziks = l23Var;
        s63.s(l23.class, l23Var);
    }

    public final boolean A() {
        return this.zzikq;
    }

    public final String B() {
        return this.zzikr;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (k23.a[i - 1]) {
            case 1:
                return new l23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziks, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zziko", "zzijv", "zzikp", "zzikq", "zzikr"});
            case 4:
                return zziks;
            case 5:
                l83<l23> aVar = zzek;
                if (aVar == null) {
                    synchronized (l23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziks);
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

    public final String y() {
        return this.zziko;
    }

    public final int z() {
        return this.zzikp;
    }
}
