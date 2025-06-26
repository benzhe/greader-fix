package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class md3 extends s63<md3, a> implements f83 {
    private static final md3 zzach;
    private static volatile l83<md3> zzek;
    private pd3 zzace;
    private k53 zzacf;
    private k53 zzacg;
    private int zzdv;

    public static final class a extends s63.b<md3, a> implements f83 {
        public a(nd3 nd3Var) {
            super(md3.zzach);
        }
    }

    static {
        md3 md3Var = new md3();
        zzach = md3Var;
        s63.s(md3.class, md3Var);
    }

    public md3() {
        k53 k53Var = k53.f;
        this.zzacf = k53Var;
        this.zzacg = k53Var;
    }

    public static md3 x(k53 k53Var, e63 e63Var) throws e73 {
        return (md3) s63.l(zzach, k53Var, e63Var);
    }

    public final k53 A() {
        return this.zzacg;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (nd3.a[i - 1]) {
            case 1:
                return new md3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzach, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzace", "zzacf", "zzacg"});
            case 4:
                return zzach;
            case 5:
                l83<md3> aVar = zzek;
                if (aVar == null) {
                    synchronized (md3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzach);
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

    public final pd3 y() {
        pd3 pd3Var = this.zzace;
        return pd3Var == null ? pd3.K() : pd3Var;
    }

    public final k53 z() {
        return this.zzacf;
    }
}
