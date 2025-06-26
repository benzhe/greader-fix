package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.s63;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ja3 extends s63<ja3, b> implements f83 {
    private static volatile l83<ja3> zzek;
    private static final ja3 zzjbv;
    private int zzcan;
    private int zzdv;
    private k53 zzjap;
    private int zzjbg;
    private a zzjbj;
    private b73<h> zzjbk;
    private String zzjbl;
    private f zzjbm;
    private boolean zzjbn;
    private b73<String> zzjbo;
    private String zzjbp;
    private boolean zzjbq;
    private boolean zzjbr;
    private i zzjbs;
    private b73<String> zzjbt;
    private b73<String> zzjbu;
    private byte zzjat = 2;
    private String zzjaw = "";
    private String zzjbh = "";
    private String zzjbi = "";

    public static final class a extends s63<a, C0017a> implements f83 {
        private static volatile l83<a> zzek;
        private static final a zzjbx;
        private int zzdv;
        private String zzjbw = "";

        /* renamed from: ja3$a$a, reason: collision with other inner class name */
        public static final class C0017a extends s63.b<a, C0017a> implements f83 {
            public C0017a() {
                super(a.zzjbx);
            }

            public C0017a(ha3 ha3Var) {
                super(a.zzjbx);
            }
        }

        static {
            a aVar = new a();
            zzjbx = aVar;
            s63.s(a.class, aVar);
        }

        public static void x(a aVar, String str) {
            Objects.requireNonNull(aVar);
            str.getClass();
            aVar.zzdv |= 1;
            aVar.zzjbw = str;
        }

        public static C0017a y() {
            return zzjbx.u();
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0017a(null);
                case 3:
                    return new r83(zzjbx, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzdv", "zzjbw"});
                case 4:
                    return zzjbx;
                case 5:
                    l83<a> aVar = zzek;
                    if (aVar == null) {
                        synchronized (a.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjbx);
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

    public static final class b extends s63.b<ja3, b> implements f83 {
        public b() {
            super(ja3.zzjbv);
        }

        public b(ha3 ha3Var) {
            super(ja3.zzjbv);
        }
    }

    public static final class c extends s63<c, a> implements f83 {
        private static volatile l83<c> zzek;
        private static final c zzjbz;
        private int zzdv;
        private k53 zzijw;
        private byte zzjat = 2;
        private k53 zzjby;

        public static final class a extends s63.b<c, a> implements f83 {
            public a() {
                super(c.zzjbz);
            }

            public a(ha3 ha3Var) {
                super(c.zzjbz);
            }
        }

        static {
            c cVar = new c();
            zzjbz = cVar;
            s63.s(c.class, cVar);
        }

        public c() {
            k53 k53Var = k53.f;
            this.zzjby = k53Var;
            this.zzijw = k53Var;
        }

        public static void x(c cVar, k53 k53Var) {
            Objects.requireNonNull(cVar);
            k53Var.getClass();
            cVar.zzdv |= 1;
            cVar.zzjby = k53Var;
        }

        public static void y(c cVar, k53 k53Var) {
            Objects.requireNonNull(cVar);
            k53Var.getClass();
            cVar.zzdv |= 2;
            cVar.zzijw = k53Var;
        }

        public static a z() {
            return zzjbz.u();
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new c();
                case 2:
                    return new a(null);
                case 3:
                    return new r83(zzjbz, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzdv", "zzjby", "zzijw"});
                case 4:
                    return zzjbz;
                case 5:
                    l83<c> aVar = zzek;
                    if (aVar == null) {
                        synchronized (c.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjbz);
                                zzek = aVar;
                            }
                        }
                    }
                    return aVar;
                case 6:
                    return Byte.valueOf(this.zzjat);
                case 7:
                    this.zzjat = (byte) (obj == null ? 0 : 1);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class d extends s63<d, b> implements f83 {
        private static volatile l83<d> zzek;
        private static final d zzjcf;
        private int zzdv;
        private a zzjca;
        private k53 zzjcc;
        private k53 zzjcd;
        private int zzjce;
        private byte zzjat = 2;
        private b73<c> zzjcb = p83.h;

        public static final class a extends s63<a, C0018a> implements f83 {
            private static volatile l83<a> zzek;
            private static final a zzjcj;
            private int zzdv;
            private k53 zzjcg;
            private k53 zzjch;
            private k53 zzjci;

            /* renamed from: ja3$d$a$a, reason: collision with other inner class name */
            public static final class C0018a extends s63.b<a, C0018a> implements f83 {
                public C0018a(ha3 ha3Var) {
                    super(a.zzjcj);
                }
            }

            static {
                a aVar = new a();
                zzjcj = aVar;
                s63.s(a.class, aVar);
            }

            public a() {
                k53 k53Var = k53.f;
                this.zzjcg = k53Var;
                this.zzjch = k53Var;
                this.zzjci = k53Var;
            }

            @Override // defpackage.s63
            public final Object q(int i, Object obj, Object obj2) {
                switch (ha3.a[i - 1]) {
                    case 1:
                        return new a();
                    case 2:
                        return new C0018a(null);
                    case 3:
                        return new r83(zzjcj, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzjcg", "zzjch", "zzjci"});
                    case 4:
                        return zzjcj;
                    case 5:
                        l83<a> aVar = zzek;
                        if (aVar == null) {
                            synchronized (a.class) {
                                aVar = zzek;
                                if (aVar == null) {
                                    aVar = new s63.a<>(zzjcj);
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

        public static final class b extends s63.b<d, b> implements f83 {
            public b() {
                super(d.zzjcf);
            }

            public b(ha3 ha3Var) {
                super(d.zzjcf);
            }
        }

        static {
            d dVar = new d();
            zzjcf = dVar;
            s63.s(d.class, dVar);
        }

        public d() {
            k53 k53Var = k53.f;
            this.zzjcc = k53Var;
            this.zzjcd = k53Var;
        }

        public static void x(d dVar, c cVar) {
            Objects.requireNonNull(dVar);
            cVar.getClass();
            b73<c> b73Var = dVar.zzjcb;
            if (!b73Var.h0()) {
                dVar.zzjcb = s63.p(b73Var);
            }
            dVar.zzjcb.add(cVar);
        }

        public static b y() {
            return zzjcf.u();
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new d();
                case 2:
                    return new b(null);
                case 3:
                    return new r83(zzjcf, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzdv", "zzjca", "zzjcb", c.class, "zzjcc", "zzjcd", "zzjce"});
                case 4:
                    return zzjcf;
                case 5:
                    l83<d> aVar = zzek;
                    if (aVar == null) {
                        synchronized (d.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjcf);
                                zzek = aVar;
                            }
                        }
                    }
                    return aVar;
                case 6:
                    return Byte.valueOf(this.zzjat);
                case 7:
                    this.zzjat = (byte) (obj == null ? 0 : 1);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class e extends s63<e, b> implements f83 {
        private static volatile l83<e> zzek;
        private static final e zzjcm;
        private int zzdv;
        private byte zzjat = 2;
        private b73<c> zzjcb = p83.h;
        private k53 zzjcc;
        private k53 zzjcd;
        private int zzjce;
        private a zzjck;
        private k53 zzjcl;

        public static final class a extends s63<a, C0019a> implements f83 {
            private static volatile l83<a> zzek;
            private static final a zzjcp;
            private int zzdv;
            private k53 zzjci;
            private int zzjcn;
            private k53 zzjco;

            /* renamed from: ja3$e$a$a, reason: collision with other inner class name */
            public static final class C0019a extends s63.b<a, C0019a> implements f83 {
                public C0019a(ha3 ha3Var) {
                    super(a.zzjcp);
                }
            }

            static {
                a aVar = new a();
                zzjcp = aVar;
                s63.s(a.class, aVar);
            }

            public a() {
                k53 k53Var = k53.f;
                this.zzjco = k53Var;
                this.zzjci = k53Var;
            }

            @Override // defpackage.s63
            public final Object q(int i, Object obj, Object obj2) {
                switch (ha3.a[i - 1]) {
                    case 1:
                        return new a();
                    case 2:
                        return new C0019a(null);
                    case 3:
                        return new r83(zzjcp, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzjcn", "zzjco", "zzjci"});
                    case 4:
                        return zzjcp;
                    case 5:
                        l83<a> aVar = zzek;
                        if (aVar == null) {
                            synchronized (a.class) {
                                aVar = zzek;
                                if (aVar == null) {
                                    aVar = new s63.a<>(zzjcp);
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

        public static final class b extends s63.b<e, b> implements f83 {
            public b(ha3 ha3Var) {
                super(e.zzjcm);
            }
        }

        static {
            e eVar = new e();
            zzjcm = eVar;
            s63.s(e.class, eVar);
        }

        public e() {
            k53 k53Var = k53.f;
            this.zzjcc = k53Var;
            this.zzjcd = k53Var;
            this.zzjcl = k53Var;
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new e();
                case 2:
                    return new b(null);
                case 3:
                    return new r83(zzjcm, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzdv", "zzjck", "zzjcb", c.class, "zzjcc", "zzjcd", "zzjce", "zzjcl"});
                case 4:
                    return zzjcm;
                case 5:
                    l83<e> aVar = zzek;
                    if (aVar == null) {
                        synchronized (e.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjcm);
                                zzek = aVar;
                            }
                        }
                    }
                    return aVar;
                case 6:
                    return Byte.valueOf(this.zzjat);
                case 7:
                    this.zzjat = (byte) (obj == null ? 0 : 1);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class f extends s63<f, b> implements f83 {
        private static volatile l83<f> zzek;
        private static final f zzjcs;
        private int zzcan;
        private int zzdv;
        private String zzjcq = "";
        private k53 zzjcr = k53.f;

        public enum a implements w63 {
            TYPE_UNKNOWN(0),
            TYPE_CREATIVE(1);

            public final int e;

            a(int i) {
                this.e = i;
            }

            @Override // defpackage.w63
            public final int f() {
                return this.e;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
            }
        }

        public static final class b extends s63.b<f, b> implements f83 {
            public b() {
                super(f.zzjcs);
            }

            public b(ha3 ha3Var) {
                super(f.zzjcs);
            }
        }

        static {
            f fVar = new f();
            zzjcs = fVar;
            s63.s(f.class, fVar);
        }

        public static b A() {
            return zzjcs.u();
        }

        public static void x(f fVar, k53 k53Var) {
            Objects.requireNonNull(fVar);
            k53Var.getClass();
            fVar.zzdv |= 4;
            fVar.zzjcr = k53Var;
        }

        public static void y(f fVar, a aVar) {
            Objects.requireNonNull(fVar);
            fVar.zzcan = aVar.e;
            fVar.zzdv |= 1;
        }

        public static void z(f fVar, String str) {
            Objects.requireNonNull(fVar);
            str.getClass();
            fVar.zzdv |= 2;
            fVar.zzjcq = str;
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new f();
                case 2:
                    return new b(null);
                case 3:
                    return new r83(zzjcs, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzcan", ma3.a, "zzjcq", "zzjcr"});
                case 4:
                    return zzjcs;
                case 5:
                    l83<f> aVar = zzek;
                    if (aVar == null) {
                        synchronized (f.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjcs);
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

    public enum g implements w63 {
        UNKNOWN(0),
        URL_PHISHING(1),
        URL_MALWARE(2),
        URL_UNWANTED(3),
        CLIENT_SIDE_PHISHING_URL(4),
        CLIENT_SIDE_MALWARE_URL(5),
        DANGEROUS_DOWNLOAD_RECOVERY(6),
        DANGEROUS_DOWNLOAD_WARNING(7),
        OCTAGON_AD(8),
        OCTAGON_AD_SB_MATCH(9);

        public final int e;

        g(int i) {
            this.e = i;
        }

        @Override // defpackage.w63
        public final int f() {
            return this.e;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + g.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
        }
    }

    public static final class h extends s63<h, b> implements f83 {
        private static volatile l83<h> zzek;
        private static final h zzjdp;
        private int zzdv;
        private int zzjdh;
        private d zzjdi;
        private e zzjdj;
        private int zzjdk;
        private int zzjdn;
        private byte zzjat = 2;
        private String zzjaw = "";
        private x63 zzjdl = v63.h;
        private String zzjdm = "";
        private b73<String> zzjdo = p83.h;

        public enum a implements w63 {
            AD_RESOURCE_UNKNOWN(0),
            AD_RESOURCE_CREATIVE(1),
            AD_RESOURCE_POST_CLICK(2),
            AD_RESOURCE_AUTO_CLICK_DESTINATION(3);

            public final int e;

            a(int i) {
                this.e = i;
            }

            public static a i(int i) {
                if (i == 0) {
                    return AD_RESOURCE_UNKNOWN;
                }
                if (i == 1) {
                    return AD_RESOURCE_CREATIVE;
                }
                if (i == 2) {
                    return AD_RESOURCE_POST_CLICK;
                }
                if (i != 3) {
                    return null;
                }
                return AD_RESOURCE_AUTO_CLICK_DESTINATION;
            }

            @Override // defpackage.w63
            public final int f() {
                return this.e;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
            }
        }

        public static final class b extends s63.b<h, b> implements f83 {
            public b() {
                super(h.zzjdp);
            }

            public b(ha3 ha3Var) {
                super(h.zzjdp);
            }
        }

        static {
            h hVar = new h();
            zzjdp = hVar;
            s63.s(h.class, hVar);
        }

        public static void A(h hVar, a aVar) {
            Objects.requireNonNull(hVar);
            hVar.zzjdn = aVar.e;
            hVar.zzdv |= 64;
        }

        public static void B(h hVar, String str) {
            Objects.requireNonNull(hVar);
            str.getClass();
            hVar.zzdv |= 2;
            hVar.zzjaw = str;
        }

        public static void D(h hVar, String str) {
            Objects.requireNonNull(hVar);
            str.getClass();
            b73<String> b73Var = hVar.zzjdo;
            if (!b73Var.h0()) {
                hVar.zzjdo = s63.p(b73Var);
            }
            hVar.zzjdo.add(str);
        }

        public static b F() {
            return zzjdp.u();
        }

        public static void y(h hVar, int i) {
            hVar.zzdv |= 1;
            hVar.zzjdh = i;
        }

        public static void z(h hVar, d dVar) {
            Objects.requireNonNull(hVar);
            dVar.getClass();
            hVar.zzjdi = dVar;
            hVar.zzdv |= 4;
        }

        public final int E() {
            return this.zzjdo.size();
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new h();
                case 2:
                    return new b(null);
                case 3:
                    return new r83(zzjdp, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzdv", "zzjdh", "zzjaw", "zzjdi", "zzjdj", "zzjdk", "zzjdl", "zzjdm", "zzjdn", oa3.a, "zzjdo"});
                case 4:
                    return zzjdp;
                case 5:
                    l83<h> aVar = zzek;
                    if (aVar == null) {
                        synchronized (h.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjdp);
                                zzek = aVar;
                            }
                        }
                    }
                    return aVar;
                case 6:
                    return Byte.valueOf(this.zzjat);
                case 7:
                    this.zzjat = (byte) (obj == null ? 0 : 1);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String x() {
            return this.zzjaw;
        }
    }

    public static final class i extends s63<i, a> implements f83 {
        private static volatile l83<i> zzek;
        private static final i zzjdy;
        private int zzdv;
        private String zzjdv = "";
        private long zzjdw;
        private boolean zzjdx;

        public static final class a extends s63.b<i, a> implements f83 {
            public a() {
                super(i.zzjdy);
            }

            public a(ha3 ha3Var) {
                super(i.zzjdy);
            }
        }

        static {
            i iVar = new i();
            zzjdy = iVar;
            s63.s(i.class, iVar);
        }

        public static a A() {
            return zzjdy.u();
        }

        public static void x(i iVar, long j) {
            iVar.zzdv |= 2;
            iVar.zzjdw = j;
        }

        public static void y(i iVar, String str) {
            Objects.requireNonNull(iVar);
            str.getClass();
            iVar.zzdv |= 1;
            iVar.zzjdv = str;
        }

        public static void z(i iVar, boolean z) {
            iVar.zzdv |= 4;
            iVar.zzjdx = z;
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (ha3.a[i - 1]) {
                case 1:
                    return new i();
                case 2:
                    return new a(null);
                case 3:
                    return new r83(zzjdy, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzdv", "zzjdv", "zzjdw", "zzjdx"});
                case 4:
                    return zzjdy;
                case 5:
                    l83<i> aVar = zzek;
                    if (aVar == null) {
                        synchronized (i.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzjdy);
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

    static {
        ja3 ja3Var = new ja3();
        zzjbv = ja3Var;
        s63.s(ja3.class, ja3Var);
    }

    public ja3() {
        p83<Object> p83Var = p83.h;
        this.zzjbk = p83Var;
        this.zzjbl = "";
        this.zzjbo = p83Var;
        this.zzjbp = "";
        this.zzjap = k53.f;
        this.zzjbt = p83Var;
        this.zzjbu = p83Var;
    }

    public static void A(ja3 ja3Var, f fVar) {
        Objects.requireNonNull(ja3Var);
        fVar.getClass();
        ja3Var.zzjbm = fVar;
        ja3Var.zzdv |= 128;
    }

    public static void B(ja3 ja3Var, g gVar) {
        Objects.requireNonNull(ja3Var);
        ja3Var.zzcan = gVar.e;
        ja3Var.zzdv |= 1;
    }

    public static void D(ja3 ja3Var, h hVar) {
        Objects.requireNonNull(ja3Var);
        hVar.getClass();
        b73<h> b73Var = ja3Var.zzjbk;
        if (!b73Var.h0()) {
            ja3Var.zzjbk = s63.p(b73Var);
        }
        ja3Var.zzjbk.add(hVar);
    }

    public static void E(ja3 ja3Var, i iVar) {
        Objects.requireNonNull(ja3Var);
        iVar.getClass();
        ja3Var.zzjbs = iVar;
        ja3Var.zzdv |= RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
    }

    public static void F(ja3 ja3Var, Iterable iterable) {
        b73<String> b73Var = ja3Var.zzjbt;
        if (!b73Var.h0()) {
            ja3Var.zzjbt = s63.p(b73Var);
        }
        b53.a(iterable, ja3Var.zzjbt);
    }

    public static void G(ja3 ja3Var, String str) {
        Objects.requireNonNull(ja3Var);
        str.getClass();
        ja3Var.zzdv |= 4;
        ja3Var.zzjaw = str;
    }

    public static void H(ja3 ja3Var, Iterable iterable) {
        b73<String> b73Var = ja3Var.zzjbu;
        if (!b73Var.h0()) {
            ja3Var.zzjbu = s63.p(b73Var);
        }
        b53.a(iterable, ja3Var.zzjbu);
    }

    public static void I(ja3 ja3Var, String str) {
        Objects.requireNonNull(ja3Var);
        str.getClass();
        ja3Var.zzdv |= 8;
        ja3Var.zzjbh = str;
    }

    public static b L() {
        return zzjbv.u();
    }

    public static void N(ja3 ja3Var, String str) {
        Objects.requireNonNull(ja3Var);
        str.getClass();
        ja3Var.zzdv |= 64;
        ja3Var.zzjbl = str;
    }

    public static void y(ja3 ja3Var) {
        ja3Var.zzdv &= -65;
        ja3Var.zzjbl = zzjbv.zzjbl;
    }

    public static void z(ja3 ja3Var, a aVar) {
        Objects.requireNonNull(ja3Var);
        aVar.getClass();
        ja3Var.zzjbj = aVar;
        ja3Var.zzdv |= 32;
    }

    public final List<h> J() {
        return this.zzjbk;
    }

    public final String K() {
        return this.zzjbl;
    }

    @Override // defpackage.s63
    public final Object q(int i2, Object obj, Object obj2) {
        switch (ha3.a[i2 - 1]) {
            case 1:
                return new ja3();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzjbv, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ\u0000\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzdv", "zzjaw", "zzjbh", "zzjbi", "zzjbk", h.class, "zzjbn", "zzjbo", "zzjbp", "zzjbq", "zzjbr", "zzcan", na3.a, "zzjbg", la3.a, "zzjbj", "zzjbl", "zzjbm", "zzjap", "zzjbs", "zzjbt", "zzjbu"});
            case 4:
                return zzjbv;
            case 5:
                l83<ja3> aVar = zzek;
                if (aVar == null) {
                    synchronized (ja3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzjbv);
                            zzek = aVar;
                        }
                    }
                }
                return aVar;
            case 6:
                return Byte.valueOf(this.zzjat);
            case 7:
                this.zzjat = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final String x() {
        return this.zzjaw;
    }
}
