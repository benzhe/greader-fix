package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class v03 extends s63<v03, a> implements f83 {
    private static volatile l83<v03> zzek;
    private static final v03 zzihy;
    private int zziht;

    public static final class a extends s63.b<v03, a> implements f83 {
        public a(u03 u03Var) {
            super(v03.zzihy);
        }
    }

    static {
        v03 v03Var = new v03();
        zzihy = v03Var;
        s63.s(v03.class, v03Var);
    }

    public static v03 y() {
        return zzihy;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (u03.a[i - 1]) {
            case 1:
                return new v03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihy, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zziht"});
            case 4:
                return zzihy;
            case 5:
                l83<v03> aVar = zzek;
                if (aVar == null) {
                    synchronized (v03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihy);
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
        return this.zziht;
    }
}
