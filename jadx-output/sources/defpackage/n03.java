package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class n03 extends s63<n03, a> implements f83 {
    private static volatile l83<n03> zzek;
    private static final n03 zzihs;
    private int zzihg;
    private o03 zzihq;

    public static final class a extends s63.b<n03, a> implements f83 {
        public a(m03 m03Var) {
            super(n03.zzihs);
        }
    }

    static {
        n03 n03Var = new n03();
        zzihs = n03Var;
        s63.s(n03.class, n03Var);
    }

    public static n03 B(k53 k53Var, e63 e63Var) throws e73 {
        return (n03) s63.l(zzihs, k53Var, e63Var);
    }

    public static n03 z() {
        return zzihs;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (m03.a[i - 1]) {
            case 1:
                return new n03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihs, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzihq", "zzihg"});
            case 4:
                return zzihs;
            case 5:
                l83<n03> aVar = zzek;
                if (aVar == null) {
                    synchronized (n03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihs);
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
        return this.zzihg;
    }

    public final o03 y() {
        o03 o03Var = this.zzihq;
        return o03Var == null ? o03.y() : o03Var;
    }
}
