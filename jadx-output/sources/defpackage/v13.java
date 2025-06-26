package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class v13 extends s63<v13, a> implements f83 {
    private static volatile l83<v13> zzek;
    private static final v13 zzijb;
    private int zziiy;
    private int zziiz;
    private k53 zzija = k53.f;

    public static final class a extends s63.b<v13, a> implements f83 {
        public a(u13 u13Var) {
            super(v13.zzijb);
        }
    }

    static {
        v13 v13Var = new v13();
        zzijb = v13Var;
        s63.s(v13.class, v13Var);
    }

    public static v13 A() {
        return zzijb;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (u13.a[i - 1]) {
            case 1:
                return new v13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzijb, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zziiy", "zziiz", "zzija"});
            case 4:
                return zzijb;
            case 5:
                l83<v13> aVar = zzek;
                if (aVar == null) {
                    synchronized (v13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzijb);
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

    public final w13 x() {
        int i = this.zziiy;
        w13 w13Var = i != 0 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : w13.CURVE25519 : w13.NIST_P521 : w13.NIST_P384 : w13.NIST_P256 : w13.UNKNOWN_CURVE;
        return w13Var == null ? w13.UNRECOGNIZED : w13Var;
    }

    public final x13 y() {
        x13 x13VarI = x13.i(this.zziiz);
        return x13VarI == null ? x13.UNRECOGNIZED : x13VarI;
    }

    public final k53 z() {
        return this.zzija;
    }
}
