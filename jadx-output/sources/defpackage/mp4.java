package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class mp4 extends pk4<mp4, a> implements bm4 {
    private static final mp4 zze;
    private static volatile jm4<mp4> zzf;
    private int zzc;
    private int zzd;

    public static final class a extends pk4.b<mp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(mp4.zze);
        }
    }

    static {
        mp4 mp4Var = new mp4();
        zze = mp4Var;
        pk4.l(mp4.class, mp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<mp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<mp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new mp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zzc", "zzd", xh4.a});
            case 4:
                return zze;
            case 5:
                jm4<mp4> jm4Var2 = zzf;
                jm4<mp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (mp4.class) {
                        jm4<mp4> jm4Var4 = zzf;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zze);
                            zzf = aVar;
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
