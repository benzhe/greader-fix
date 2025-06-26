package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class eq4 extends pk4<eq4, a> implements bm4 {
    private static final eq4 zzg;
    private static volatile jm4<eq4> zzh;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;

    public static final class a extends pk4.b<eq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(eq4.zzg);
        }
    }

    static {
        eq4 eq4Var = new eq4();
        zzg = eq4Var;
        pk4.l(eq4.class, eq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<eq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<eq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new eq4();
            case 2:
                return new a(null);
            case 3:
                vk4 vk4Var = ki4.a;
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002", new Object[]{"zzc", "zzd", ji4.a, "zze", vk4Var, "zzf", vk4Var});
            case 4:
                return zzg;
            case 5:
                jm4<eq4> jm4Var2 = zzh;
                jm4<eq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (eq4.class) {
                        jm4<eq4> jm4Var4 = zzh;
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
