package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class up3 extends s63<up3, a> implements f83 {
    private static final up3 zzcbl;
    private static volatile l83<up3> zzek;
    private String zzcbg = "";
    private b73<sp3> zzcbh = p83.h;
    private int zzcbi = 1000;
    private int zzcbj = 1000;
    private int zzcbk = 1000;
    private int zzdv;

    public static final class a extends s63.b<up3, a> implements f83 {
        public a() {
            super(up3.zzcbl);
        }

        public a(rq3 rq3Var) {
            super(up3.zzcbl);
        }
    }

    static {
        up3 up3Var = new up3();
        zzcbl = up3Var;
        s63.s(up3.class, up3Var);
    }

    public static void x(up3 up3Var, String str) {
        Objects.requireNonNull(up3Var);
        str.getClass();
        up3Var.zzdv |= 1;
        up3Var.zzcbg = str;
    }

    public static up3 y() {
        return zzcbl;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new up3();
            case 2:
                return new a(null);
            case 3:
                y63 y63Var = xq3.a;
                return new r83(zzcbl, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzdv", "zzcbg", "zzcbh", sp3.class, "zzcbi", y63Var, "zzcbj", y63Var, "zzcbk", y63Var});
            case 4:
                return zzcbl;
            case 5:
                l83<up3> aVar = zzek;
                if (aVar == null) {
                    synchronized (up3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcbl);
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
