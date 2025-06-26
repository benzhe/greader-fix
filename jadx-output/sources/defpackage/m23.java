package defpackage;

import defpackage.s63;
import java.util.List;

/* loaded from: classes.dex */
public final class m23 extends s63<m23, a> implements f83 {
    private static volatile l83<m23> zzek;
    private static final m23 zzikv;
    private int zzikt;
    private b73<b> zziku = p83.h;

    public static final class a extends s63.b<m23, a> implements f83 {
        public a(n23 n23Var) {
            super(m23.zzikv);
        }
    }

    public static final class b extends s63<b, a> implements f83 {
        private static volatile l83<b> zzek;
        private static final b zzikz;
        private int zzikm;
        private g23 zzikw;
        private int zzikx;
        private int zziky;

        public static final class a extends s63.b<b, a> implements f83 {
            public a(n23 n23Var) {
                super(b.zzikz);
            }
        }

        static {
            b bVar = new b();
            zzikz = bVar;
            s63.s(b.class, bVar);
        }

        public final g23 A() {
            g23 g23Var = this.zzikw;
            return g23Var == null ? g23.F() : g23Var;
        }

        public final int B() {
            return this.zziky;
        }

        @Override // defpackage.s63
        public final Object q(int i, Object obj, Object obj2) {
            switch (n23.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new r83(zzikz, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzikw", "zzikx", "zziky", "zzikm"});
                case 4:
                    return zzikz;
                case 5:
                    l83<b> aVar = zzek;
                    if (aVar == null) {
                        synchronized (b.class) {
                            aVar = zzek;
                            if (aVar == null) {
                                aVar = new s63.a<>(zzikz);
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

        public final h23 x() {
            int i = this.zzikx;
            h23 h23Var = i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : h23.DESTROYED : h23.DISABLED : h23.ENABLED : h23.UNKNOWN_STATUS;
            return h23Var == null ? h23.UNRECOGNIZED : h23Var;
        }

        public final y23 y() {
            int i = this.zzikm;
            y23 y23Var = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : y23.CRUNCHY : y23.RAW : y23.LEGACY : y23.TINK : y23.UNKNOWN_PREFIX;
            return y23Var == null ? y23.UNRECOGNIZED : y23Var;
        }

        public final boolean z() {
            return this.zzikw != null;
        }
    }

    static {
        m23 m23Var = new m23();
        zzikv = m23Var;
        s63.s(m23.class, m23Var);
    }

    public static m23 B(byte[] bArr, e63 e63Var) throws e73 {
        s63 s63VarN = s63.n(zzikv, bArr, bArr.length, e63Var);
        s63.k(s63VarN);
        return (m23) s63VarN;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (n23.a[i - 1]) {
            case 1:
                return new m23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzikv, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzikt", "zziku", b.class});
            case 4:
                return zzikv;
            case 5:
                l83<m23> aVar = zzek;
                if (aVar == null) {
                    synchronized (m23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzikv);
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
        return this.zzikt;
    }

    public final List<b> y() {
        return this.zziku;
    }

    public final int z() {
        return this.zziku.size();
    }
}
