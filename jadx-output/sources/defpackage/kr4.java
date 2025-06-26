package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class kr4 extends pk4<kr4, a> implements bm4 {
    private static final xk4<Integer, nh4> zzg = new mh4();
    private static final kr4 zzj;
    private static volatile jm4<kr4> zzk;
    private int zzc;
    private pp4 zzd;
    private pp4 zze;
    private uk4 zzf = sk4.h;
    private long zzh;
    private boolean zzi;

    public static final class a extends pk4.b<kr4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(kr4.zzj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [mh4, xk4<java.lang.Integer, nh4>] */
    static {
        kr4 kr4Var = new kr4();
        zzj = kr4Var;
        pk4.l(kr4.class, kr4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<kr4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<kr4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new kr4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001e\u0004ဃ\u0002\u0005ဇ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", ph4.a, "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                jm4<kr4> jm4Var2 = zzk;
                jm4<kr4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (kr4.class) {
                        jm4<kr4> jm4Var4 = zzk;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzj);
                            zzk = aVar;
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
