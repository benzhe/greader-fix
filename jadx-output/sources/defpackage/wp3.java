package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class wp3 extends s63<wp3, a> implements f83 {
    private static final wp3 zzccb;
    private static volatile l83<wp3> zzek;
    private jq3 zzcbu;
    private int zzcbv;
    private kq3 zzcbw;
    private int zzcbx;
    private int zzdv;
    private String zzcbt = "";
    private int zzcby = 1000;
    private int zzcbz = 1000;
    private int zzcca = 1000;

    public static final class a extends s63.b<wp3, a> implements f83 {
        public a() {
            super(wp3.zzccb);
        }

        public a(rq3 rq3Var) {
            super(wp3.zzccb);
        }
    }

    static {
        wp3 wp3Var = new wp3();
        zzccb = wp3Var;
        s63.s(wp3.class, wp3Var);
    }

    public static void x(wp3 wp3Var, kq3 kq3Var) {
        Objects.requireNonNull(wp3Var);
        kq3Var.getClass();
        wp3Var.zzcbw = kq3Var;
        wp3Var.zzdv |= 8;
    }

    public static void y(wp3 wp3Var, String str) {
        Objects.requireNonNull(wp3Var);
        str.getClass();
        wp3Var.zzdv |= 1;
        wp3Var.zzcbt = str;
    }

    public static wp3 z() {
        return zzccb;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new wp3();
            case 2:
                return new a(null);
            case 3:
                y63 y63Var = xq3.a;
                return new r83(zzccb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzdv", "zzcbt", "zzcbu", "zzcbv", "zzcbw", "zzcbx", "zzcby", y63Var, "zzcbz", y63Var, "zzcca", y63Var});
            case 4:
                return zzccb;
            case 5:
                l83<wp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (wp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzccb);
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
