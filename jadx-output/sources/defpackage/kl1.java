package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class kl1 extends s63<kl1, a> implements f83 {
    private static volatile l83<kl1> zzek;
    private static final kl1 zzmk;
    private int zzdv;
    private String zzfl = "";

    public static final class a extends s63.b<kl1, a> implements f83 {
        public a(mm1 mm1Var) {
            super(kl1.zzmk);
        }
    }

    static {
        kl1 kl1Var = new kl1();
        zzmk = kl1Var;
        s63.s(kl1.class, kl1Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (mm1.a[i - 1]) {
            case 1:
                return new kl1();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzmk, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzdv", "zzfl"});
            case 4:
                return zzmk;
            case 5:
                l83<kl1> aVar = zzek;
                if (aVar == null) {
                    synchronized (kl1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzmk);
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
}
