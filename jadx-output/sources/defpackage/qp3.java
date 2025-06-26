package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class qp3 extends s63<qp3, a> implements f83 {
    private static final qp3 zzcho;
    private static volatile l83<qp3> zzek;
    private boolean zzchm;
    private int zzchn;
    private int zzdv;

    public static final class a extends s63.b<qp3, a> implements f83 {
        public a() {
            super(qp3.zzcho);
        }

        public a(rq3 rq3Var) {
            super(qp3.zzcho);
        }
    }

    static {
        qp3 qp3Var = new qp3();
        zzcho = qp3Var;
        s63.s(qp3.class, qp3Var);
    }

    public static a A() {
        return zzcho.u();
    }

    public static void x(qp3 qp3Var, int i) {
        qp3Var.zzdv |= 2;
        qp3Var.zzchn = i;
    }

    public static void y(qp3 qp3Var, boolean z) {
        qp3Var.zzdv |= 1;
        qp3Var.zzchm = z;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new qp3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcho, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zzdv", "zzchm", "zzchn"});
            case 4:
                return zzcho;
            case 5:
                l83<qp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (qp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcho);
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

    public final boolean z() {
        return this.zzchm;
    }
}
