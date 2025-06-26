package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class u23 extends s63<u23, a> implements f83 {
    private static volatile l83<u23> zzek;
    private static final u23 zzili;
    private int zzihc;
    private x23 zzilh;

    public static final class a extends s63.b<u23, a> implements f83 {
        public a() {
            super(u23.zzili);
        }

        public a(v23 v23Var) {
            super(u23.zzili);
        }
    }

    static {
        u23 u23Var = new u23();
        zzili = u23Var;
        s63.s(u23.class, u23Var);
    }

    public static a B() {
        return zzili.u();
    }

    public static u23 E(k53 k53Var, e63 e63Var) throws e73 {
        return (u23) s63.l(zzili, k53Var, e63Var);
    }

    public static void y(u23 u23Var) {
        u23Var.zzihc = 0;
    }

    public static void z(u23 u23Var, x23 x23Var) {
        Objects.requireNonNull(u23Var);
        x23Var.getClass();
        u23Var.zzilh = x23Var;
    }

    public final x23 A() {
        x23 x23Var = this.zzilh;
        return x23Var == null ? x23.z() : x23Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (v23.a[i - 1]) {
            case 1:
                return new u23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzili, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzihc", "zzilh"});
            case 4:
                return zzili;
            case 5:
                l83<u23> aVar = zzek;
                if (aVar == null) {
                    synchronized (u23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzili);
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

    public final int x() {
        return this.zzihc;
    }
}
