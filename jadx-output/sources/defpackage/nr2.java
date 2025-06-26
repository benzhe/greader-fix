package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class nr2 extends s63<nr2, b> implements f83 {
    private static volatile l83<nr2> zzek;
    private static final nr2 zzhwu;
    private int zzdv;
    private int zzhwr;
    private hr2 zzhwt;
    private String zzdw = "";
    private String zzhws = "";

    public enum a implements w63 {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);

        public final int e;

        a(int i) {
            this.e = i;
        }

        @Override // defpackage.w63
        public final int f() {
            return this.e;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
        }
    }

    public static final class b extends s63.b<nr2, b> implements f83 {
        public b() {
            super(nr2.zzhwu);
        }

        public b(mr2 mr2Var) {
            super(nr2.zzhwu);
        }
    }

    static {
        nr2 nr2Var = new nr2();
        zzhwu = nr2Var;
        s63.s(nr2.class, nr2Var);
    }

    public static b A() {
        return zzhwu.u();
    }

    public static void x(nr2 nr2Var, hr2 hr2Var) {
        Objects.requireNonNull(nr2Var);
        nr2Var.zzhwt = hr2Var;
        nr2Var.zzdv |= 8;
    }

    public static void y(nr2 nr2Var, a aVar) {
        Objects.requireNonNull(nr2Var);
        nr2Var.zzhwr = aVar.e;
        nr2Var.zzdv |= 1;
    }

    public static void z(nr2 nr2Var, String str) {
        Objects.requireNonNull(nr2Var);
        str.getClass();
        nr2Var.zzdv |= 2;
        nr2Var.zzdw = str;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (mr2.a[i - 1]) {
            case 1:
                return new nr2();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzhwu, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzhwr", or2.a, "zzdw", "zzhws", "zzhwt"});
            case 4:
                return zzhwu;
            case 5:
                l83<nr2> aVar = zzek;
                if (aVar == null) {
                    synchronized (nr2.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzhwu);
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
