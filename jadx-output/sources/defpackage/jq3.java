package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class jq3 extends s63<jq3, a> implements f83 {
    private static final jq3 zzcfx;
    private static volatile l83<jq3> zzek;
    private int zzcfv;
    private int zzcfw;
    private int zzdv;

    public static final class a extends s63.b<jq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(jq3.zzcfx);
        }
    }

    static {
        jq3 jq3Var = new jq3();
        zzcfx = jq3Var;
        s63.s(jq3.class, jq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new jq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcfx, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzdv", "zzcfv", "zzcfw"});
            case 4:
                return zzcfx;
            case 5:
                l83<jq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (jq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcfx);
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
