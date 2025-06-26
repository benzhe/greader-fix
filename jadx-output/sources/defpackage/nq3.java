package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class nq3 extends s63<nq3, a> implements f83 {
    private static final nq3 zzcgx;
    private static volatile l83<nq3> zzek;
    private int zzcgw;
    private int zzdv;

    public static final class a extends s63.b<nq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(nq3.zzcgx);
        }
    }

    public enum b implements w63 {
        VIDEO_ERROR_CODE_UNSPECIFIED(0),
        OPENGL_RENDERING_FAILED(1),
        CACHE_LOAD_FAILED(2),
        ANDROID_TARGET_API_TOO_LOW(3);

        public final int e;

        b(int i) {
            this.e = i;
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
        nq3 nq3Var = new nq3();
        zzcgx = nq3Var;
        s63.s(nq3.class, nq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new nq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcgx, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zzdv", "zzcgw", dr3.a});
            case 4:
                return zzcgx;
            case 5:
                l83<nq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (nq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcgx);
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
