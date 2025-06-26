package defpackage;

import defpackage.sx3;

/* loaded from: classes.dex */
public final class e14 extends sx3<e14, a> implements zy3 {
    private static volatile gz3<e14> zzbg;
    private static final e14 zztx;
    private int zzbb;
    private int zztu;
    private String zztv = "";
    private String zztw = "";

    public static final class a extends sx3.a<e14, a> implements zy3 {
        public a(h14 h14Var) {
            super(e14.zztx);
        }
    }

    static {
        e14 e14Var = new e14();
        zztx = e14Var;
        sx3.f(e14.class, e14Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [gz3<e14>, sx3$b] */
    @Override // defpackage.sx3
    public final Object d(int i, Object obj, Object obj2) {
        gz3<e14> gz3Var;
        switch (h14.a[i - 1]) {
            case 1:
                return new e14();
            case 2:
                return new a(null);
            case 3:
                return new kz3(zztx, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\b\u0002", new Object[]{"zzbb", "zztu", "zztv", "zztw"});
            case 4:
                return zztx;
            case 5:
                gz3<e14> gz3Var2 = zzbg;
                gz3<e14> gz3Var3 = gz3Var2;
                if (gz3Var2 == null) {
                    synchronized (e14.class) {
                        gz3<e14> gz3Var4 = zzbg;
                        gz3Var = gz3Var4;
                        if (gz3Var4 == null) {
                            ?? bVar = new sx3.b(zztx);
                            zzbg = bVar;
                            gz3Var = bVar;
                        }
                    }
                    gz3Var3 = gz3Var;
                }
                return gz3Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
