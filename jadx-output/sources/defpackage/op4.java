package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class op4 extends pk4<op4, a> implements bm4 {
    private static final op4 zzl;
    private static volatile jm4<op4> zzm;
    private int zzc;
    private int zzf;
    private int zzi;
    private long zzj;
    private boolean zzk;
    private String zzd = "";
    private String zze = "";
    private String zzg = "";
    private String zzh = "";

    public static final class a extends pk4.b<op4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(op4.zzl);
        }
    }

    static {
        op4 op4Var = new op4();
        zzl = op4Var;
        pk4.l(op4.class, op4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<op4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<op4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new op4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဌ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဌ\u0005\u0007ဃ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", bi4.a, "zzg", "zzh", "zzi", ai4.a, "zzj", "zzk"});
            case 4:
                return zzl;
            case 5:
                jm4<op4> jm4Var2 = zzm;
                jm4<op4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (op4.class) {
                        jm4<op4> jm4Var4 = zzm;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzl);
                            zzm = aVar;
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
