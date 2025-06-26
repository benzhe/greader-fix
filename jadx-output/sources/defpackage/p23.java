package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class p23 extends s63<p23, b> implements f83 {
    private static volatile l83<p23> zzek;
    private static final p23 zzilb;
    private int zzikt;
    private b73<a> zzila = p83.h;

    public static final class a extends s63<a, C0029a> implements f83 {
        private static volatile l83<a> zzek;
        private static final a zzilc;
        private String zzijv = "";
        private int zzikm;
        private int zzikx;
        private int zziky;

        /* renamed from: p23$a$a, reason: collision with other inner class name */
        public static final class C0029a extends s63.b<a, C0029a> implements f83 {
            public C0029a() {
                super(a.zzilc);
            }

            public C0029a(o23 o23Var) {
                super(a.zzilc);
            }
        }

        static {
            a aVar = new a();
            zzilc = aVar;
            s63.s(a.class, aVar);
        }

        public static void A(a aVar, String str) {
            Objects.requireNonNull(aVar);
            str.getClass();
            aVar.zzijv = str;
        }

        public static C0029a B() {
            return zzilc.u();
        }

        public static void x(a aVar, int i) {
            aVar.zziky = i;
        }

        public static void y(a aVar, h23 h23Var) {
            Objects.requireNonNull(aVar);
            aVar.zzikx = h23Var.f();
        }

        public static void z(a aVar, y23 y23Var) {
            Objects.requireNonNull(aVar);
            aVar.zzikm = y23Var.f();
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (o23.a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0029a(null);
                case 3:
                    return new r83(zzilc, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzijv", "zzikx", "zziky", "zzikm"});
                case 4:
                    return zzilc;
                case 5:
                    l83<a> aVar = zzek;
                    if (aVar == null) {
                        synchronized (a.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzilc);
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

    public static final class b extends s63.b<p23, b> implements f83 {
        public b() {
            super(p23.zzilb);
        }

        public b(o23 o23Var) {
            super(p23.zzilb);
        }
    }

    static {
        p23 p23Var = new p23();
        zzilb = p23Var;
        s63.s(p23.class, p23Var);
    }

    public static void x(p23 p23Var, int i) {
        p23Var.zzikt = i;
    }

    public static void y(p23 p23Var, a aVar) {
        Objects.requireNonNull(p23Var);
        aVar.getClass();
        b73<a> b73Var = p23Var.zzila;
        if (!b73Var.h0()) {
            p23Var.zzila = s63.p(b73Var);
        }
        p23Var.zzila.add(aVar);
    }

    public static b z() {
        return zzilb.u();
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (o23.a[i - 1]) {
            case 1:
                return new p23();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzilb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzikt", "zzila", a.class});
            case 4:
                return zzilb;
            case 5:
                l83<p23> aVar = zzek;
                if (aVar == null) {
                    synchronized (p23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzilb);
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
