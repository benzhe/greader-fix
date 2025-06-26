package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class hl1 extends s63<hl1, a> implements f83 {
    private static volatile l83<hl1> zzek;
    private static final hl1 zzlk;
    private int zzdv;
    private long zzlf;
    private int zzlg;
    private boolean zzlh;
    private x63 zzli = v63.h;
    private long zzlj;

    public static final class a extends s63.b<hl1, a> implements f83 {
        public a(mm1 mm1Var) {
            super(hl1.zzlk);
        }
    }

    static {
        hl1 hl1Var = new hl1();
        zzlk = hl1Var;
        s63.s(hl1.class, hl1Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (mm1.a[i - 1]) {
            case 1:
                return new hl1();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzlk, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzdv", "zzlf", "zzlg", "zzlh", "zzli", "zzlj"});
            case 4:
                return zzlk;
            case 5:
                l83<hl1> aVar = zzek;
                if (aVar == null) {
                    synchronized (hl1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzlk);
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
}
