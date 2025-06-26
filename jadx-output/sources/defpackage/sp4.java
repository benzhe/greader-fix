package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class sp4 extends pk4<sp4, a> implements bm4 {
    private static final sp4 zzj;
    private static volatile jm4<sp4> zzk;
    private int zzc;
    private ip4 zzd;
    private vi4 zze;
    private hp4 zzf;
    private fp4 zzg;
    private int zzh;
    private int zzi;

    public static final class a extends pk4.b<sp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(sp4.zzj);
        }
    }

    static {
        sp4 sp4Var = new sp4();
        zzj = sp4Var;
        pk4.l(sp4.class, sp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<sp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<sp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new sp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဋ\u0004\u0006ဋ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                jm4<sp4> jm4Var2 = zzk;
                jm4<sp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (sp4.class) {
                        jm4<sp4> jm4Var4 = zzk;
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
