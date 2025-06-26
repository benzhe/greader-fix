package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class ao4 extends pk4<ao4, a> implements bm4 {
    private static final ao4 zzk;
    private static volatile jm4<ao4> zzl;
    private int zzc;
    private int zzg;
    private int zzh;
    private int zzj;
    private String zzd = "";
    private String zze = "";
    private String zzf = "";
    private String zzi = "";

    public static final class a extends pk4.b<ao4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(ao4.zzk);
        }
    }

    static {
        ao4 ao4Var = new ao4();
        zzk = ao4Var;
        pk4.l(ao4.class, ao4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<ao4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<ao4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new ao4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005င\u0004\u0006ဈ\u0005\u0007င\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
            case 4:
                return zzk;
            case 5:
                jm4<ao4> jm4Var2 = zzl;
                jm4<ao4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (ao4.class) {
                        jm4<ao4> jm4Var4 = zzl;
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
