package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class o13 extends s63<o13, a> implements f83 {
    private static volatile l83<o13> zzek;
    private static final o13 zziis;
    private v13 zziip;
    private k13 zziiq;
    private int zziir;

    public static final class a extends s63.b<o13, a> implements f83 {
        public a(p13 p13Var) {
            super(o13.zziis);
        }
    }

    static {
        o13 o13Var = new o13();
        zziis = o13Var;
        s63.s(o13.class, o13Var);
    }

    public static o13 A() {
        return zziis;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (p13.a[i - 1]) {
            case 1:
                return new o13();
            case 2:
                return new a(null);
            case 3:
                return new r83(zziis, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zziip", "zziiq", "zziir"});
            case 4:
                return zziis;
            case 5:
                l83<o13> aVar = zzek;
                if (aVar == null) {
                    synchronized (o13.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zziis);
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

    public final v13 x() {
        v13 v13Var = this.zziip;
        return v13Var == null ? v13.A() : v13Var;
    }

    public final k13 y() {
        k13 k13Var = this.zziiq;
        return k13Var == null ? k13.y() : k13Var;
    }

    public final j13 z() {
        int i = this.zziir;
        j13 j13Var = i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : j13.DO_NOT_USE_CRUNCHY_UNCOMPRESSED : j13.COMPRESSED : j13.UNCOMPRESSED : j13.UNKNOWN_FORMAT;
        return j13Var == null ? j13.UNRECOGNIZED : j13Var;
    }
}
