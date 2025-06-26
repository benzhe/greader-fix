package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class yn4 extends pk4<yn4, a> implements bm4 {
    private static final yn4 zzn;
    private static volatile jm4<yn4> zzo;
    private int zzc;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";
    private String zzl = "";
    private String zzm = "";

    public static final class a extends pk4.b<yn4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(yn4.zzn);
        }
    }

    static {
        yn4 yn4Var = new yn4();
        zzn = yn4Var;
        pk4.l(yn4.class, yn4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<yn4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<yn4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new yn4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzn, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007\tဈ\b\nဈ\t", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
            case 4:
                return zzn;
            case 5:
                jm4<yn4> jm4Var2 = zzo;
                jm4<yn4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (yn4.class) {
                        jm4<yn4> jm4Var4 = zzo;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzn);
                            zzo = aVar;
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
