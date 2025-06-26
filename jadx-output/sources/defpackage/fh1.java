package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class fh1 extends s63<fh1, a> implements f83 {
    private static volatile l83<fh1> zzek;
    private static final fh1 zzex;
    private int zzdv;
    private gh1 zzev;
    private hh1 zzew;

    public static final class a extends s63.b<fh1, a> implements f83 {
        public a(hg1 hg1Var) {
            super(fh1.zzex);
        }
    }

    static {
        fh1 fh1Var = new fh1();
        zzex = fh1Var;
        s63.s(fh1.class, fh1Var);
    }

    public final gh1 A() {
        gh1 gh1Var = this.zzev;
        return gh1Var == null ? gh1.y() : gh1Var;
    }

    public final boolean B() {
        return (this.zzdv & 2) != 0;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (hg1.a[i - 1]) {
            case 1:
                return new fh1();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzex, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzdv", "zzev", "zzew"});
            case 4:
                return zzex;
            case 5:
                l83<fh1> aVar = zzek;
                if (aVar == null) {
                    synchronized (fh1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzex);
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

    public final hh1 x() {
        hh1 hh1Var = this.zzew;
        return hh1Var == null ? hh1.y() : hh1Var;
    }

    public final boolean z() {
        return (this.zzdv & 1) != 0;
    }
}
