package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class ho4 extends pk4<ho4, a> implements bm4 {
    private static final ho4 zzf;
    private static volatile jm4<ho4> zzg;
    private int zzc;
    private int zzd;
    private float zze;

    public static final class a extends pk4.b<ho4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(ho4.zzf);
        }
    }

    static {
        ho4 ho4Var = new ho4();
        zzf = ho4Var;
        pk4.l(ho4.class, ho4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<ho4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<ho4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new ho4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ခ\u0001", new Object[]{"zzc", "zzd", oo4.a, "zze"});
            case 4:
                return zzf;
            case 5:
                jm4<ho4> jm4Var2 = zzg;
                jm4<ho4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (ho4.class) {
                        jm4<ho4> jm4Var4 = zzg;
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
