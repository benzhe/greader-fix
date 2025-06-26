package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class vp4 extends pk4<vp4, a> implements bm4 {
    private static final xk4<Integer, nh4> zzf = new hi4();
    private static final vp4 zzj;
    private static volatile jm4<vp4> zzk;
    private int zzc;
    private wp4 zzd;
    private long zzg;
    private long zzh;
    private uk4 zze = sk4.h;
    private wk4<jq4> zzi = mm4.h;

    public static final class a extends pk4.b<vp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(vp4.zzj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [hi4, xk4<java.lang.Integer, nh4>] */
    static {
        vp4 vp4Var = new vp4();
        zzj = vp4Var;
        pk4.l(vp4.class, vp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<vp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<vp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new vp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဉ\u0000\u0002\u001e\u0003ဃ\u0001\u0004ဃ\u0002\u0005\u001b", new Object[]{"zzc", "zzd", "zze", ph4.a, "zzg", "zzh", "zzi", jq4.class});
            case 4:
                return zzj;
            case 5:
                jm4<vp4> jm4Var2 = zzk;
                jm4<vp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (vp4.class) {
                        jm4<vp4> jm4Var4 = zzk;
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
