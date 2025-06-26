package defpackage;

import defpackage.pk4;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ip4 extends pk4<ip4, a> implements bm4 {
    private static final ip4 zzl;
    private static volatile jm4<ip4> zzm;
    private int zzc;
    private long zzd;
    private int zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private int zzj;
    private wk4<jq4> zzk = mm4.h;

    public static final class a extends pk4.b<ip4, a> implements bm4 {
        public a() {
            super(ip4.zzl);
        }

        public a(bp4 bp4Var) {
            super(ip4.zzl);
        }
    }

    static {
        ip4 ip4Var = new ip4();
        zzl = ip4Var;
        pk4.l(ip4.class, ip4Var);
    }

    public static a p() {
        return zzl.o();
    }

    public static void q(ip4 ip4Var, long j) {
        ip4Var.zzc |= 1;
        ip4Var.zzd = j;
    }

    public static void s(ip4 ip4Var, nh4 nh4Var) {
        Objects.requireNonNull(ip4Var);
        ip4Var.zze = nh4Var.e;
        ip4Var.zzc |= 2;
    }

    public static void t(ip4 ip4Var, boolean z) {
        ip4Var.zzc |= 4;
        ip4Var.zzf = z;
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<ip4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<ip4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new ip4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဃ\u0000\u0002ဌ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဋ\u0006\b\u001b", new Object[]{"zzc", "zzd", "zze", ph4.a, "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", jq4.class});
            case 4:
                return zzl;
            case 5:
                jm4<ip4> jm4Var2 = zzm;
                jm4<ip4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (ip4.class) {
                        jm4<ip4> jm4Var4 = zzm;
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
