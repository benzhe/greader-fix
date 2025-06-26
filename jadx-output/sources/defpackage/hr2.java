package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class hr2 extends s63<hr2, b> implements f83 {
    private static volatile l83<hr2> zzek;
    private static final z63<Integer, a> zzhwj = new kr2();
    private static final hr2 zzhwn;
    private int zzdv;
    private x63 zzhwi = v63.h;
    private String zzhwk = "";
    private String zzhwl = "";
    private String zzhwm = "";

    public enum a implements w63 {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);

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

    public static final class b extends s63.b<hr2, b> implements f83 {
        public b() {
            super(hr2.zzhwn);
        }

        public b(kr2 kr2Var) {
            super(hr2.zzhwn);
        }
    }

    static {
        hr2 hr2Var = new hr2();
        zzhwn = hr2Var;
        s63.s(hr2.class, hr2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void x(hr2 hr2Var, a aVar) {
        Objects.requireNonNull(hr2Var);
        aVar.getClass();
        x63 x63Var = hr2Var.zzhwi;
        if (!((f53) x63Var).e) {
            hr2Var.zzhwi = s63.o(x63Var);
        }
        ((v63) hr2Var.zzhwi).o(aVar.e);
    }

    public static void y(hr2 hr2Var, String str) {
        Objects.requireNonNull(hr2Var);
        str.getClass();
        hr2Var.zzdv |= 1;
        hr2Var.zzhwk = str;
    }

    public static b z() {
        return zzhwn.u();
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (jr2.a[i - 1]) {
            case 1:
                return new hr2();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzhwn, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzdv", "zzhwi", lr2.a, "zzhwk", "zzhwl", "zzhwm"});
            case 4:
                return zzhwn;
            case 5:
                l83<hr2> aVar = zzek;
                if (aVar == null) {
                    synchronized (hr2.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzhwn);
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
