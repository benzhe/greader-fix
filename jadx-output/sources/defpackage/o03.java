package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class o03 extends s63<o03, a> implements f83 {
    private static volatile l83<o03> zzek;
    private static final o03 zzihu;
    private int zziht;

    public static final class a extends s63.b<o03, a> implements f83 {
        public a(p03 p03Var) {
            super(o03.zzihu);
        }
    }

    static {
        o03 o03Var = new o03();
        zzihu = o03Var;
        s63.s(o03.class, o03Var);
    }

    public static o03 y() {
        return zzihu;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (p03.a[i - 1]) {
            case 1:
                return new o03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihu, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zziht"});
            case 4:
                return zzihu;
            case 5:
                l83<o03> aVar = zzek;
                if (aVar == null) {
                    synchronized (o03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihu);
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
