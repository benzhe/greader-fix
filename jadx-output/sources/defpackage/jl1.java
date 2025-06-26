package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class jl1 extends s63<jl1, a> implements f83 {
    private static volatile l83<jl1> zzek;
    private static final jl1 zzmj;
    private int zzdv;
    private long zzlf;
    private String zzmh = "";
    private k53 zzmi = k53.f;

    public static final class a extends s63.b<jl1, a> implements f83 {
        public a(mm1 mm1Var) {
            super(jl1.zzmj);
        }
    }

    static {
        jl1 jl1Var = new jl1();
        zzmj = jl1Var;
        s63.s(jl1.class, jl1Var);
    }

    public static jl1 z() {
        return zzmj;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (mm1.a[i - 1]) {
            case 1:
                return new jl1();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzmj, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzdv", "zzlf", "zzmh", "zzmi"});
            case 4:
                return zzmj;
            case 5:
                l83<jl1> aVar = zzek;
                if (aVar == null) {
                    synchronized (jl1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzmj);
                            zzek = aVar;
                        }
                    }
                }
                return aVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final boolean x() {
        return (this.zzdv & 1) != 0;
    }

    public final long y() {
        return this.zzlf;
    }
}
