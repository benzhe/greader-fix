package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g23 extends s63<g23, b> implements f83 {
    private static volatile l83<g23> zzek;
    private static final g23 zzijy;
    private String zzijv = "";
    private k53 zzijw = k53.f;
    private int zzijx;

    public enum a implements w63 {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        public final int e;

        a(int i) {
            this.e = i;
        }

        @Override // defpackage.w63
        public final int f() {
            if (this != UNRECOGNIZED) {
                return this.e;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(a.class.getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(f());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }
    }

    public static final class b extends s63.b<g23, b> implements f83 {
        public b() {
            super(g23.zzijy);
        }

        public b(f23 f23Var) {
            super(g23.zzijy);
        }
    }

    static {
        g23 g23Var = new g23();
        zzijy = g23Var;
        s63.s(g23.class, g23Var);
    }

    public static b E() {
        return zzijy.u();
    }

    public static g23 F() {
        return zzijy;
    }

    public static void x(g23 g23Var, a aVar) {
        Objects.requireNonNull(g23Var);
        g23Var.zzijx = aVar.f();
    }

    public static void y(g23 g23Var, k53 k53Var) {
        Objects.requireNonNull(g23Var);
        k53Var.getClass();
        g23Var.zzijw = k53Var;
    }

    public static void z(g23 g23Var, String str) {
        Objects.requireNonNull(g23Var);
        str.getClass();
        g23Var.zzijv = str;
    }

    public final String A() {
        return this.zzijv;
    }

    public final k53 B() {
        return this.zzijw;
    }

    public final a D() {
        int i = this.zzijx;
        a aVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : a.REMOTE : a.ASYMMETRIC_PUBLIC : a.ASYMMETRIC_PRIVATE : a.SYMMETRIC : a.UNKNOWN_KEYMATERIAL;
        return aVar == null ? a.UNRECOGNIZED : aVar;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (f23.a[i - 1]) {
            case 1:
                return new g23();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzijy, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzijv", "zzijw", "zzijx"});
            case 4:
                return zzijy;
            case 5:
                l83<g23> aVar = zzek;
                if (aVar == null) {
                    synchronized (g23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzijy);
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
