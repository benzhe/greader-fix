package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class f03 extends s63<f03, a> implements f83 {
    private static volatile l83<f03> zzek;
    private static final f03 zzihj;
    private int zzihi;

    public static final class a extends s63.b<f03, a> implements f83 {
        public a(d03 d03Var) {
            super(f03.zzihj);
        }
    }

    static {
        f03 f03Var = new f03();
        zzihj = f03Var;
        s63.s(f03.class, f03Var);
    }

    public static f03 y() {
        return zzihj;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (d03.a[i - 1]) {
            case 1:
                return new f03();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzihj, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzihi"});
            case 4:
                return zzihj;
            case 5:
                l83<f03> aVar = zzek;
                if (aVar == null) {
                    synchronized (f03.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzihj);
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
}
