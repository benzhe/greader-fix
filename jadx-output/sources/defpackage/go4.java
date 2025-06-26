package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class go4 extends pk4<go4, a> implements bm4 {
    private static final go4 zzg;
    private static volatile jm4<go4> zzh;
    private int zzc;
    private int zzd;
    private eo4 zze;
    private bo4 zzf;

    public static final class a extends pk4.b<go4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(go4.zzg);
        }
    }

    static {
        go4 go4Var = new go4();
        zzg = go4Var;
        pk4.l(go4.class, go4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<go4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<go4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new go4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", no4.a, "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<go4> jm4Var2 = zzh;
                jm4<go4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (go4.class) {
                        jm4<go4> jm4Var4 = zzh;
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
