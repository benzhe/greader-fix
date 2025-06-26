package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class c23 extends s63<c23, a> implements f83 {
    private static volatile l83<c23> zzek;
    private static final c23 zziju;
    private int zzihi;
    private int zzijt;

    public static final class a extends s63.b<c23, a> implements f83 {
        public a(e23 e23Var) {
            super(c23.zziju);
        }
    }

    static {
        c23 c23Var = new c23();
        zziju = c23Var;
        s63.s(c23.class, c23Var);
    }

    public static c23 z() {
        return zziju;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (e23.a[i - 1]) {
            case 1:
                return new c23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziju, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzijt", "zzihi"});
            case 4:
                return zziju;
            case 5:
                l83<c23> aVar = zzek;
                if (aVar == null) {
                    synchronized (c23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziju);
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
        return this.zzihi;
    }

    public final x13 y() {
        x13 x13VarI = x13.i(this.zzijt);
        return x13VarI == null ? x13.UNRECOGNIZED : x13VarI;
    }
}
