package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class q23 extends s63<q23, a> implements f83 {
    private static volatile l83<q23> zzek;
    private static final q23 zzile;
    private int zzihc;
    private t23 zzild;

    public static final class a extends s63.b<q23, a> implements f83 {
        public a() {
            super(q23.zzile);
        }

        public a(r23 r23Var) {
            super(q23.zzile);
        }
    }

    static {
        q23 q23Var = new q23();
        zzile = q23Var;
        s63.s(q23.class, q23Var);
    }

    public static a B() {
        return zzile.u();
    }

    public static q23 E(k53 k53Var, e63 e63Var) throws e73 {
        return (q23) s63.l(zzile, k53Var, e63Var);
    }

    public static void y(q23 q23Var) {
        q23Var.zzihc = 0;
    }

    public static void z(q23 q23Var, t23 t23Var) {
        Objects.requireNonNull(q23Var);
        t23Var.getClass();
        q23Var.zzild = t23Var;
    }

    public final t23 A() {
        t23 t23Var = this.zzild;
        return t23Var == null ? t23.y() : t23Var;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (r23.a[i - 1]) {
            case 1:
                return new q23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzile, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzihc", "zzild"});
            case 4:
                return zzile;
            case 5:
                l83<q23> aVar = zzek;
                if (aVar == null) {
                    synchronized (q23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzile);
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
