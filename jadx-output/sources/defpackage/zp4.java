package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class zp4 extends pk4<zp4, a> implements bm4 {
    private static final zp4 zzj;
    private static volatile jm4<zp4> zzk;
    private int zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;
    private float zzh;
    private pp4 zzi;

    public static final class a extends pk4.b<zp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(zp4.zzj);
        }
    }

    static {
        zp4 zp4Var = new zp4();
        zzj = zp4Var;
        pk4.l(zp4.class, zp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<zp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<zp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new zp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဋ\u0003\u0005ခ\u0004\u0006ဉ\u0005", new Object[]{"zzc", "zzd", ii4.a, "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                jm4<zp4> jm4Var2 = zzk;
                jm4<zp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (zp4.class) {
                        jm4<zp4> jm4Var4 = zzk;
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
