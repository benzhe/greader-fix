package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class co4 extends pk4<co4, a> implements bm4 {
    private static final co4 zzo;
    private static volatile jm4<co4> zzp;
    private int zzc;
    private yn4 zzd;
    private fo4 zze;
    private ao4 zzf;
    private int zzg;
    private zn4 zzh;
    private io4 zzi;
    private long zzj;
    private long zzk;
    private boolean zzl;
    private int zzm;
    private byte zzn = 2;

    public static final class a extends pk4.b<co4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(co4.zzo);
        }
    }

    static {
        co4 co4Var = new co4();
        zzo = co4Var;
        pk4.l(co4.class, co4Var);
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [jm4<co4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<co4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new co4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzo, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0001\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဌ\u0003\u0004ဉ\u0004\u0005ᐉ\u0005\u0006ဂ\u0006\u0007ဂ\u0007\bဇ\b\tင\t\nဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzg", mo4.a, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzf"});
            case 4:
                return zzo;
            case 5:
                jm4<co4> jm4Var2 = zzp;
                jm4<co4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (co4.class) {
                        jm4<co4> jm4Var4 = zzp;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzo);
                            zzp = aVar;
                            jm4Var = aVar;
                        }
                    }
                    jm4Var3 = jm4Var;
                }
                return jm4Var3;
            case 6:
                return Byte.valueOf(this.zzn);
            case 7:
                this.zzn = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
