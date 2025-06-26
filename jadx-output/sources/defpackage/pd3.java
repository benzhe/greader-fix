package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pd3 extends s63<pd3, a> implements f83 {
    private static final pd3 zzacn;
    private static volatile l83<pd3> zzek;
    private String zzaci = "";
    private String zzacj = "";
    private long zzack;
    private long zzacl;
    private long zzacm;
    private int zzdv;

    public static final class a extends s63.b<pd3, a> implements f83 {
        public a() {
            super(pd3.zzacn);
        }

        public a(od3 od3Var) {
            super(pd3.zzacn);
        }
    }

    static {
        pd3 pd3Var = new pd3();
        zzacn = pd3Var;
        s63.s(pd3.class, pd3Var);
    }

    public static void A(pd3 pd3Var, long j) {
        pd3Var.zzdv |= 8;
        pd3Var.zzacl = j;
    }

    public static void B(pd3 pd3Var, String str) {
        Objects.requireNonNull(pd3Var);
        str.getClass();
        pd3Var.zzdv |= 2;
        pd3Var.zzacj = str;
    }

    public static void D(pd3 pd3Var, long j) {
        pd3Var.zzdv |= 16;
        pd3Var.zzacm = j;
    }

    public static a J() {
        return zzacn.u();
    }

    public static pd3 K() {
        return zzacn;
    }

    public static pd3 M(k53 k53Var) throws e73 {
        s63 s63VarT = s63.t(zzacn, k53Var, e63.a());
        s63.k(s63VarT);
        s63.k(s63VarT);
        return (pd3) s63VarT;
    }

    public static void x(pd3 pd3Var, long j) {
        pd3Var.zzdv |= 4;
        pd3Var.zzack = j;
    }

    public static void y(pd3 pd3Var, String str) {
        Objects.requireNonNull(pd3Var);
        str.getClass();
        pd3Var.zzdv |= 1;
        pd3Var.zzaci = str;
    }

    public static pd3 z(k53 k53Var, e63 e63Var) throws e73 {
        return (pd3) s63.l(zzacn, k53Var, e63Var);
    }

    public final String E() {
        return this.zzaci;
    }

    public final String F() {
        return this.zzacj;
    }

    public final long G() {
        return this.zzack;
    }

    public final long H() {
        return this.zzacl;
    }

    public final long I() {
        return this.zzacm;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (od3.a[i - 1]) {
            case 1:
                return new pd3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzacn, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzdv", "zzaci", "zzacj", "zzack", "zzacl", "zzacm"});
            case 4:
                return zzacn;
            case 5:
                l83<pd3> aVar = zzek;
                if (aVar == null) {
                    synchronized (pd3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzacn);
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
