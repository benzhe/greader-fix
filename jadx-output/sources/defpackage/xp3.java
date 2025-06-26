package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class xp3 extends s63<xp3, a> implements f83 {
    private static final xp3 zzccg;
    private static volatile l83<xp3> zzek;
    private int zzccc;
    private kq3 zzccd;
    private String zzcce = "";
    private String zzccf = "";
    private int zzdv;

    public static final class a extends s63.b<xp3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(xp3.zzccg);
        }
    }

    public enum b implements w63 {
        PLATFORM_UNSPECIFIED(0),
        IOS(1),
        ANDROID(2);

        public final int e;

        b(int i2) {
            this.e = i2;
        }

        @Override // defpackage.w63
        public final int f() {
            return this.e;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
        }
    }

    static {
        xp3 xp3Var = new xp3();
        zzccg = xp3Var;
        s63.s(xp3.class, xp3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new xp3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzccg, "\u0001\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005ဌ\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzdv", "zzccc", wq3.a, "zzccd", "zzcce", "zzccf"});
            case 4:
                return zzccg;
            case 5:
                l83<xp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (xp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzccg);
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
}
