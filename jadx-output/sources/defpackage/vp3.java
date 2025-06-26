package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class vp3 extends s63<vp3, a> implements f83 {
    private static final vp3 zzcbs;
    private static volatile l83<vp3> zzek;
    private int zzcbm;
    private jq3 zzcbn;
    private jq3 zzcbo;
    private jq3 zzcbp;
    private b73<jq3> zzcbq = p83.h;
    private int zzcbr;
    private int zzdv;

    public static final class a extends s63.b<vp3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(vp3.zzcbs);
        }
    }

    static {
        vp3 vp3Var = new vp3();
        zzcbs = vp3Var;
        s63.s(vp3.class, vp3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new vp3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcbs, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzdv", "zzcbm", "zzcbn", "zzcbo", "zzcbp", "zzcbq", jq3.class, "zzcbr"});
            case 4:
                return zzcbs;
            case 5:
                l83<vp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (vp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcbs);
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
