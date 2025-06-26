package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.s63;
import defpackage.sp3;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class eq3 extends s63<eq3, c> implements f83 {
    private static final eq3 zzceu;
    private static volatile l83<eq3> zzek;
    private int zzcep;
    private int zzceq;
    private long zzcer;
    private long zzcet;
    private int zzdv;
    private b73<a> zzcac = p83.h;
    private String zzdw = "";
    private String zzces = "";

    public static final class a extends s63<a, C0012a> implements f83 {
        private static final z63<Integer, sp3.a> zzceg = new ar3();
        private static final a zzceo;
        private static volatile l83<a> zzek;
        private long zzceb;
        private int zzcec;
        private long zzced;
        private long zzcee;
        private x63 zzcef = v63.h;
        private cq3 zzceh;
        private int zzcei;
        private int zzcej;
        private int zzcek;
        private int zzcel;
        private int zzcem;
        private int zzcen;
        private int zzdv;

        /* renamed from: eq3$a$a, reason: collision with other inner class name */
        public static final class C0012a extends s63.b<a, C0012a> implements f83 {
            public C0012a() {
                super(a.zzceo);
            }

            public C0012a(rq3 rq3Var) {
                super(a.zzceo);
            }
        }

        static {
            a aVar = new a();
            zzceo = aVar;
            s63.s(a.class, aVar);
        }

        public static void A(a aVar, cq3 cq3Var) {
            Objects.requireNonNull(aVar);
            cq3Var.getClass();
            aVar.zzceh = cq3Var;
            aVar.zzdv |= 16;
        }

        public static void B(a aVar, b bVar) {
            Objects.requireNonNull(aVar);
            aVar.zzcen = bVar.e;
            aVar.zzdv |= 1024;
        }

        public static void D(a aVar, vq3 vq3Var) {
            Objects.requireNonNull(aVar);
            aVar.zzcec = vq3Var.e;
            aVar.zzdv |= 2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void E(a aVar, Iterable iterable) {
            x63 x63Var = aVar.zzcef;
            if (!((f53) x63Var).e) {
                aVar.zzcef = s63.o(x63Var);
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                sp3.a aVar2 = (sp3.a) it.next();
                ((v63) aVar.zzcef).o(aVar2.e);
            }
        }

        public static void F(a aVar, long j) {
            aVar.zzdv |= 4;
            aVar.zzced = j;
        }

        public static void G(a aVar, vq3 vq3Var) {
            Objects.requireNonNull(aVar);
            aVar.zzcei = vq3Var.e;
            aVar.zzdv |= 32;
        }

        public static void H(a aVar, long j) {
            aVar.zzdv |= 8;
            aVar.zzcee = j;
        }

        public static void I(a aVar, vq3 vq3Var) {
            Objects.requireNonNull(aVar);
            aVar.zzcej = vq3Var.e;
            aVar.zzdv |= 64;
        }

        public static void J(a aVar, vq3 vq3Var) {
            Objects.requireNonNull(aVar);
            aVar.zzcek = vq3Var.e;
            aVar.zzdv |= 128;
        }

        public static void K(a aVar, vq3 vq3Var) {
            Objects.requireNonNull(aVar);
            aVar.zzcem = vq3Var.e;
            aVar.zzdv |= 512;
        }

        public static a L(byte[] bArr) throws e73 {
            s63 s63VarN = s63.n(zzceo, bArr, bArr.length, e63.a());
            s63.k(s63VarN);
            return (a) s63VarN;
        }

        public static C0012a X() {
            return zzceo.u();
        }

        public static void y(a aVar, int i) {
            aVar.zzdv |= RecyclerView.a0.FLAG_TMP_DETACHED;
            aVar.zzcel = i;
        }

        public static void z(a aVar, long j) {
            aVar.zzdv |= 1;
            aVar.zzceb = j;
        }

        public final vq3 M() {
            vq3 vq3VarI = vq3.i(this.zzcec);
            return vq3VarI == null ? vq3.ENUM_FALSE : vq3VarI;
        }

        public final long N() {
            return this.zzced;
        }

        public final long O() {
            return this.zzcee;
        }

        public final List<sp3.a> P() {
            return new a73(this.zzcef, zzceg);
        }

        public final cq3 Q() {
            cq3 cq3Var = this.zzceh;
            return cq3Var == null ? cq3.F() : cq3Var;
        }

        public final vq3 R() {
            vq3 vq3VarI = vq3.i(this.zzcei);
            return vq3VarI == null ? vq3.ENUM_FALSE : vq3VarI;
        }

        public final vq3 S() {
            vq3 vq3VarI = vq3.i(this.zzcej);
            return vq3VarI == null ? vq3.ENUM_FALSE : vq3VarI;
        }

        public final vq3 T() {
            vq3 vq3VarI = vq3.i(this.zzcek);
            return vq3VarI == null ? vq3.ENUM_FALSE : vq3VarI;
        }

        public final int U() {
            return this.zzcel;
        }

        public final vq3 V() {
            vq3 vq3VarI = vq3.i(this.zzcem);
            return vq3VarI == null ? vq3.ENUM_FALSE : vq3VarI;
        }

        public final b W() {
            b bVarI = b.i(this.zzcen);
            return bVarI == null ? b.UNSPECIFIED : bVarI;
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (rq3.a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0012a(null);
                case 3:
                    y63 y63Var = xq3.a;
                    return new r83(zzceo, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzdv", "zzceb", "zzcec", y63Var, "zzced", "zzcee", "zzcef", uq3.a, "zzceh", "zzcei", y63Var, "zzcej", y63Var, "zzcek", y63Var, "zzcel", "zzcem", y63Var, "zzcen", cr3.a});
                case 4:
                    return zzceo;
                case 5:
                    l83<a> aVar = zzek;
                    if (aVar == null) {
                        synchronized (a.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzceo);
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

        public final long x() {
            return this.zzceb;
        }
    }

    public enum b implements w63 {
        UNSPECIFIED(0),
        CONNECTING(1),
        CONNECTED(2),
        DISCONNECTING(3),
        DISCONNECTED(4),
        SUSPENDED(5);

        public final int e;

        b(int i) {
            this.e = i;
        }

        public static b i(int i) {
            if (i == 0) {
                return UNSPECIFIED;
            }
            if (i == 1) {
                return CONNECTING;
            }
            if (i == 2) {
                return CONNECTED;
            }
            if (i == 3) {
                return DISCONNECTING;
            }
            if (i == 4) {
                return DISCONNECTED;
            }
            if (i != 5) {
                return null;
            }
            return SUSPENDED;
        }

        @Override // defpackage.w63
        public final int f() {
            return this.e;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
        }
    }

    public static final class c extends s63.b<eq3, c> implements f83 {
        public c() {
            super(eq3.zzceu);
        }

        public c(rq3 rq3Var) {
            super(eq3.zzceu);
        }
    }

    static {
        eq3 eq3Var = new eq3();
        zzceu = eq3Var;
        s63.s(eq3.class, eq3Var);
    }

    public static void A(eq3 eq3Var, String str) {
        Objects.requireNonNull(eq3Var);
        str.getClass();
        eq3Var.zzdv |= 8;
        eq3Var.zzdw = str;
    }

    public static void B(eq3 eq3Var, int i) {
        eq3Var.zzdv |= 2;
        eq3Var.zzceq = i;
    }

    public static void D(eq3 eq3Var, long j) {
        eq3Var.zzdv |= 32;
        eq3Var.zzcet = j;
    }

    public static void E(eq3 eq3Var, String str) {
        Objects.requireNonNull(eq3Var);
        str.getClass();
        eq3Var.zzdv |= 16;
        eq3Var.zzces = str;
    }

    public static c F() {
        return zzceu.u();
    }

    public static void x(eq3 eq3Var, int i) {
        eq3Var.zzdv |= 1;
        eq3Var.zzcep = i;
    }

    public static void y(eq3 eq3Var, long j) {
        eq3Var.zzdv |= 4;
        eq3Var.zzcer = j;
    }

    public static void z(eq3 eq3Var, Iterable iterable) {
        b73<a> b73Var = eq3Var.zzcac;
        if (!b73Var.h0()) {
            eq3Var.zzcac = s63.p(b73Var);
        }
        b53.a(iterable, eq3Var.zzcac);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new eq3();
            case 2:
                return new c(null);
            case 3:
                return new r83(zzceu, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzdv", "zzcac", a.class, "zzcep", "zzceq", "zzcer", "zzdw", "zzces", "zzcet"});
            case 4:
                return zzceu;
            case 5:
                l83<eq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (eq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzceu);
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
