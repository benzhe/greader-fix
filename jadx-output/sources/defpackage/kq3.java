package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class kq3 extends s63<kq3, a> implements f83 {
    private static final kq3 zzcgb;
    private static volatile l83<kq3> zzek;
    private int zzcfy;
    private int zzcfz;
    private int zzcga;
    private int zzdv;

    public static final class a extends s63.b<kq3, a> implements f83 {
        public a() {
            super(kq3.zzcgb);
        }

        public a(rq3 rq3Var) {
            super(kq3.zzcgb);
        }
    }

    static {
        kq3 kq3Var = new kq3();
        zzcgb = kq3Var;
        s63.s(kq3.class, kq3Var);
    }

    public static a A() {
        return zzcgb.u();
    }

    public static void x(kq3 kq3Var, int i) {
        kq3Var.zzdv |= 1;
        kq3Var.zzcfy = i;
    }

    public static void y(kq3 kq3Var, int i) {
        kq3Var.zzdv |= 2;
        kq3Var.zzcfz = i;
    }

    public static void z(kq3 kq3Var, int i) {
        kq3Var.zzdv |= 4;
        kq3Var.zzcga = i;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new kq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcgb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzdv", "zzcfy", "zzcfz", "zzcga"});
            case 4:
                return zzcgb;
            case 5:
                l83<kq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (kq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcgb);
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
