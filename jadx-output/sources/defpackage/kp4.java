package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class kp4 extends pk4<kp4, a> implements bm4 {
    private static final kp4 zzg;
    private static volatile jm4<kp4> zzh;
    private int zzc;
    private int zzd;
    private boolean zze;
    private String zzf = "";

    public static final class a extends pk4.b<kp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(kp4.zzg);
        }
    }

    static {
        kp4 kp4Var = new kp4();
        zzg = kp4Var;
        pk4.l(kp4.class, kp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<kp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<kp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new kp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002", new Object[]{"zzc", "zzd", ai4.a, "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<kp4> jm4Var2 = zzh;
                jm4<kp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (kp4.class) {
                        jm4<kp4> jm4Var4 = zzh;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzg);
                            zzh = aVar;
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
