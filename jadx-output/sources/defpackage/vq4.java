package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class vq4 extends pk4<vq4, a> implements bm4 {
    private static final vq4 zzi;
    private static volatile jm4<vq4> zzj;
    private int zzc;
    private ip4 zzd;
    private pp4 zze;
    private long zzf;
    private float zzg;
    private hp4 zzh;

    public static final class a extends pk4.b<vq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(vq4.zzi);
        }
    }

    static {
        vq4 vq4Var = new vq4();
        zzi = vq4Var;
        pk4.l(vq4.class, vq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<vq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<vq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new vq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဃ\u0002\u0004ခ\u0003\u0005ဉ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzi;
            case 5:
                jm4<vq4> jm4Var2 = zzj;
                jm4<vq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (vq4.class) {
                        jm4<vq4> jm4Var4 = zzj;
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
