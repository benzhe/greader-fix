package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class kq4 extends pk4<kq4, a> implements bm4 {
    private static final xk4<Integer, Object> zzf = new pi4();
    private static final xk4<Integer, Object> zzh = new ri4();
    private static final xk4<Integer, Object> zzj = new qi4();
    private static final kq4 zzl;
    private static volatile jm4<kq4> zzm;
    private int zzc;
    private long zzd;
    private uk4 zze;
    private uk4 zzg;
    private uk4 zzi;
    private int zzk;

    public static final class a extends pk4.b<kq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(kq4.zzl);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [pi4, xk4<java.lang.Integer, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [ri4, xk4<java.lang.Integer, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [qi4, xk4<java.lang.Integer, java.lang.Object>] */
    static {
        kq4 kq4Var = new kq4();
        zzl = kq4Var;
        pk4.l(kq4.class, kq4Var);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [sk4, uk4] */
    public kq4() {
        ?? r0 = sk4.h;
        this.zze = r0;
        this.zzg = r0;
        this.zzi = r0;
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<kq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<kq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new kq4();
            case 2:
                return new a(null);
            case 3:
                vk4 vk4Var = si4.a;
                return new lm4(zzl, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001ဃ\u0000\u0002\u001e\u0003\u001e\u0004\u001e\u0005င\u0001", new Object[]{"zzc", "zzd", "zze", vk4Var, "zzg", vk4Var, "zzi", vk4Var, "zzk"});
            case 4:
                return zzl;
            case 5:
                jm4<kq4> jm4Var2 = zzm;
                jm4<kq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (kq4.class) {
                        jm4<kq4> jm4Var4 = zzm;
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
