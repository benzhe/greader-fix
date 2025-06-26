package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class tp3 extends s63<tp3, a> implements f83 {
    private static final tp3 zzcbf;
    private static volatile l83<tp3> zzek;
    private String zzcbc = "";
    private b73<sp3> zzcbd = p83.h;
    private int zzcbe;
    private int zzdv;

    public static final class a extends s63.b<tp3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(tp3.zzcbf);
        }
    }

    static {
        tp3 tp3Var = new tp3();
        zzcbf = tp3Var;
        s63.s(tp3.class, tp3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new tp3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcbf, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzdv", "zzcbc", "zzcbd", sp3.class, "zzcbe", xq3.a});
            case 4:
                return zzcbf;
            case 5:
                l83<tp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (tp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcbf);
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
