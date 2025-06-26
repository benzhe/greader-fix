package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class rp4 extends pk4<rp4, a> implements bm4 {
    private static final xk4<Integer, Object> zzg = new ei4();
    private static final xk4<Integer, Object> zzi = new di4();
    private static final rp4 zzk;
    private static volatile jm4<rp4> zzl;
    private int zzc;
    private ip4 zzd;
    private ui4 zze;
    private uk4 zzf;
    private uk4 zzh;
    private hp4 zzj;

    public static final class a extends pk4.b<rp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(rp4.zzk);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ei4, xk4<java.lang.Integer, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [di4, xk4<java.lang.Integer, java.lang.Object>] */
    static {
        rp4 rp4Var = new rp4();
        zzk = rp4Var;
        pk4.l(rp4.class, rp4Var);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [sk4, uk4] */
    public rp4() {
        ?? r0 = sk4.h;
        this.zzf = r0;
        this.zzh = r0;
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<rp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<rp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new rp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzk, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001e\u0004\u001e\u0005ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", fi4.a, "zzh", gi4.a, "zzj"});
            case 4:
                return zzk;
            case 5:
                jm4<rp4> jm4Var2 = zzl;
                jm4<rp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (rp4.class) {
                        jm4<rp4> jm4Var4 = zzl;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzk);
                            zzl = aVar;
                            jm4Var = aVar;
                        }
                    }
                    jm4Var3 = jm4Var;
                }
                return jm4Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
