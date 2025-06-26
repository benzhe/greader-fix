package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class yq4 extends pk4<yq4, a> implements bm4 {
    private static final yq4 zzf;
    private static volatile jm4<yq4> zzg;
    private int zzc;
    private int zzd;
    private int zze;

    public static final class a extends pk4.b<yq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(yq4.zzf);
        }
    }

    static {
        yq4 yq4Var = new yq4();
        zzf = yq4Var;
        pk4.l(yq4.class, yq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<yq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<yq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new yq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဌ\u0001", new Object[]{"zzc", "zzd", "zze", kh4.a});
            case 4:
                return zzf;
            case 5:
                jm4<yq4> jm4Var2 = zzg;
                jm4<yq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (yq4.class) {
                        jm4<yq4> jm4Var4 = zzg;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzf);
                            zzg = aVar;
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
