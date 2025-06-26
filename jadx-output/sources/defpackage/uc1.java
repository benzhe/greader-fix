package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class uc1 extends s63<uc1, b> implements f83 {
    private static final uc1 zzej;
    private static volatile l83<uc1> zzek;
    private int zzdv;
    private long zzdx;
    private long zzeb;
    private long zzec;
    private long zzee;
    private int zzei;
    private String zzdw = "";
    private String zzdy = "";
    private String zzdz = "";
    private String zzea = "";
    private String zzed = "";
    private String zzef = "";
    private String zzeg = "";
    private b73<a> zzeh = p83.h;

    public static final class a extends s63<a, C0049a> implements f83 {
        private static volatile l83<a> zzek;
        private static final a zzeo;
        private int zzdv;
        private String zzem = "";
        private String zzen = "";

        /* renamed from: uc1$a$a, reason: collision with other inner class name */
        public static final class C0049a extends s63.b<a, C0049a> implements f83 {
            public C0049a(gd1 gd1Var) {
                super(a.zzeo);
            }
        }

        static {
            a aVar = new a();
            zzeo = aVar;
            s63.s(a.class, aVar);
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (gd1.a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0049a(null);
                case 3:
                    return new r83(zzeo, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzdv", "zzem", "zzen"});
                case 4:
                    return zzeo;
                case 5:
                    l83<a> aVar = zzek;
                    if (aVar == null) {
                        synchronized (a.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzeo);
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

    public static final class b extends s63.b<uc1, b> implements f83 {
        public b() {
            super(uc1.zzej);
        }

        public b(gd1 gd1Var) {
            super(uc1.zzej);
        }
    }

    public enum c implements w63 {
        UNKNOWN(0),
        ENABLED(1),
        DISABLED(2);

        public final int e;

        c(int i2) {
            this.e = i2;
        }

        @Override // defpackage.w63
        public final int f() {
            return this.e;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
        }
    }

    static {
        uc1 uc1Var = new uc1();
        zzej = uc1Var;
        s63.s(uc1.class, uc1Var);
    }

    public static void A(uc1 uc1Var, String str) {
        Objects.requireNonNull(uc1Var);
        str.getClass();
        uc1Var.zzdv |= 4;
        uc1Var.zzdy = str;
    }

    public static void B(uc1 uc1Var, String str) {
        Objects.requireNonNull(uc1Var);
        str.getClass();
        uc1Var.zzdv |= 8;
        uc1Var.zzdz = str;
    }

    public static void D(uc1 uc1Var, String str) {
        Objects.requireNonNull(uc1Var);
        str.getClass();
        uc1Var.zzdv |= 16;
        uc1Var.zzea = str;
    }

    public static void E(uc1 uc1Var, String str) {
        Objects.requireNonNull(uc1Var);
        str.getClass();
        uc1Var.zzdv |= 1024;
        uc1Var.zzeg = str;
    }

    public static b F() {
        return zzej.u();
    }

    public static void x(uc1 uc1Var, long j) {
        uc1Var.zzdv |= 2;
        uc1Var.zzdx = j;
    }

    public static void y(uc1 uc1Var, c cVar) {
        Objects.requireNonNull(uc1Var);
        uc1Var.zzei = cVar.e;
        uc1Var.zzdv |= RecyclerView.a0.FLAG_MOVED;
    }

    public static void z(uc1 uc1Var, String str) {
        Objects.requireNonNull(uc1Var);
        str.getClass();
        uc1Var.zzdv |= 1;
        uc1Var.zzdw = str;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (gd1.a[i - 1]) {
            case 1:
                return new uc1();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzej, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzdv", "zzdw", "zzdx", "zzdy", "zzdz", "zzea", "zzeb", "zzec", "zzed", "zzee", "zzef", "zzeg", "zzeh", a.class, "zzei", he1.a});
            case 4:
                return zzej;
            case 5:
                l83<uc1> aVar = zzek;
                if (aVar == null) {
                    synchronized (uc1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzej);
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
