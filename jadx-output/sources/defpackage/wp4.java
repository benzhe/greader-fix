package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class wp4 extends pk4<wp4, a> implements bm4 {
    private static final wp4 zzg;
    private static volatile jm4<wp4> zzh;
    private int zzc;
    private int zzd;
    private float zze;
    private pp4 zzf;

    public static final class a extends pk4.b<wp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(wp4.zzg);
        }
    }

    static {
        wp4 wp4Var = new wp4();
        zzg = wp4Var;
        pk4.l(wp4.class, wp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<wp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<wp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new wp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဋ\u0000\u0002ခ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<wp4> jm4Var2 = zzh;
                jm4<wp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (wp4.class) {
                        jm4<wp4> jm4Var4 = zzh;
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
