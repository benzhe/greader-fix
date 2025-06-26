package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class wq4 extends pk4<wq4, a> implements bm4 {
    private static final xk4<Integer, nh4> zzg = new jh4();
    private static final wq4 zzi;
    private static volatile jm4<wq4> zzj;
    private int zzc;
    private pp4 zzd;
    private pp4 zze;
    private uk4 zzf = sk4.h;
    private long zzh;

    public static final class a extends pk4.b<wq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(wq4.zzi);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [jh4, xk4<java.lang.Integer, nh4>] */
    static {
        wq4 wq4Var = new wq4();
        zzi = wq4Var;
        pk4.l(wq4.class, wq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<wq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<wq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new wq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001e\u0004ဃ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", ph4.a, "zzh"});
            case 4:
                return zzi;
            case 5:
                jm4<wq4> jm4Var2 = zzj;
                jm4<wq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (wq4.class) {
                        jm4<wq4> jm4Var4 = zzj;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzi);
                            zzj = aVar;
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
