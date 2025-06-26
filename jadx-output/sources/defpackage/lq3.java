package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class lq3 extends s63<lq3, a> implements f83 {
    private static final lq3 zzcgs;
    private static volatile l83<lq3> zzek;
    private pq3 zzcgc;
    private np3 zzcgd;
    private op3 zzcge;
    private pp3 zzcgf;
    private mq3 zzcgg;
    private mp3 zzcgh;
    private oq3 zzcgi;
    private int zzcgj;
    private int zzcgk;
    private jq3 zzcgl;
    private int zzcgm;
    private int zzcgn;
    private int zzcgo;
    private int zzcgp;
    private int zzcgq;
    private long zzcgr;
    private int zzdv;

    public static final class a extends s63.b<lq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(lq3.zzcgs);
        }
    }

    static {
        lq3 lq3Var = new lq3();
        zzcgs = lq3Var;
        s63.s(lq3.class, lq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new lq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcgs, "\u0001\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005ဉ\u0000\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzdv", "zzcgc", "zzcgd", "zzcge", "zzcgf", "zzcgg", "zzcgh", "zzcgi", "zzcgj", "zzcgk", "zzcgl", "zzcgm", "zzcgn", "zzcgo", "zzcgp", "zzcgq", "zzcgr"});
            case 4:
                return zzcgs;
            case 5:
                l83<lq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (lq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcgs);
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
