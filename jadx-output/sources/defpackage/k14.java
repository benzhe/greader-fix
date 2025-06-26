package defpackage;

import defpackage.sx3;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class k14 extends sx3<k14, a> implements zy3 {
    private static volatile gz3<k14> zzbg;
    private static final k14 zzbir;
    private xx3<b> zzbiq = jz3.g;

    public static final class a extends sx3.a<k14, a> implements zy3 {
        public a(l14 l14Var) {
            super(k14.zzbir);
        }
    }

    public static final class b extends sx3<b, a> implements zy3 {
        private static volatile gz3<b> zzbg;
        private static final b zzbiv;
        private int zzbb;
        private String zzbis = "";
        private long zzbit;
        private long zzbiu;
        private int zzya;

        public static final class a extends sx3.a<b, a> implements zy3 {
            public a() {
                super(b.zzbiv);
            }

            public a(l14 l14Var) {
                super(b.zzbiv);
            }
        }

        static {
            b bVar = new b();
            zzbiv = bVar;
            sx3.f(b.class, bVar);
        }

        public static void i(b bVar, long j) {
            bVar.zzbb |= 4;
            bVar.zzbit = j;
        }

        public static void j(b bVar, String str) {
            Objects.requireNonNull(bVar);
            Objects.requireNonNull(str);
            bVar.zzbb |= 2;
            bVar.zzbis = str;
        }

        public static void k(b bVar, long j) {
            bVar.zzbb |= 8;
            bVar.zzbiu = j;
        }

        public static a u() {
            return (a) ((sx3.a) zzbiv.d(5, null, null));
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [gz3<k14$b>, sx3$b] */
        @Override // defpackage.sx3
        public final Object d(int i, Object obj, Object obj2) {
            gz3<b> gz3Var;
            switch (l14.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new kz3(zzbiv, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003", new Object[]{"zzbb", "zzya", "zzbis", "zzbit", "zzbiu"});
                case 4:
                    return zzbiv;
                case 5:
                    gz3<b> gz3Var2 = zzbg;
                    gz3<b> gz3Var3 = gz3Var2;
                    if (gz3Var2 == null) {
                        synchronized (b.class) {
                            gz3<b> gz3Var4 = zzbg;
                            gz3Var = gz3Var4;
                            if (gz3Var4 == null) {
                                ?? bVar = new sx3.b(zzbiv);
                                zzbg = bVar;
                                gz3Var = bVar;
                            }
                        }
                        gz3Var3 = gz3Var;
                    }
                    return gz3Var3;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final int h() {
            return this.zzya;
        }

        public final boolean m() {
            return (this.zzbb & 1) == 1;
        }

        public final String n() {
            return this.zzbis;
        }

        public final long s() {
            return this.zzbit;
        }

        public final long t() {
            return this.zzbiu;
        }
    }

    static {
        k14 k14Var = new k14();
        zzbir = k14Var;
        sx3.f(k14.class, k14Var);
    }

    public static k14 i() {
        return zzbir;
    }

    public static k14 k(byte[] bArr) throws yx3 {
        sx3 sx3Var = (sx3) zzbir.d(4, null, null);
        try {
            iz3 iz3Var = iz3.c;
            iz3Var.b(sx3Var).i(sx3Var, bArr, 0, bArr.length, new ow3());
            iz3Var.b(sx3Var).b(sx3Var);
            if (sx3Var.zzex != 0) {
                throw new RuntimeException();
            }
            boolean zE = true;
            byte bByteValue = ((Byte) sx3Var.d(1, null, null)).byteValue();
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zE = false;
                } else {
                    zE = iz3Var.b(sx3Var).e(sx3Var);
                    sx3Var.d(2, zE ? sx3Var : null, null);
                }
            }
            if (zE) {
                return (k14) sx3Var;
            }
            throw new yx3(new a04().getMessage());
        } catch (IOException e) {
            if (e.getCause() instanceof yx3) {
                throw ((yx3) e.getCause());
            }
            throw new yx3(e.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw yx3.a();
        }
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [gz3<k14>, sx3$b] */
    @Override // defpackage.sx3
    public final Object d(int i, Object obj, Object obj2) {
        gz3<k14> gz3Var;
        switch (l14.a[i - 1]) {
            case 1:
                return new k14();
            case 2:
                return new a(null);
            case 3:
                return new kz3(zzbir, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzbiq", b.class});
            case 4:
                return zzbir;
            case 5:
                gz3<k14> gz3Var2 = zzbg;
                gz3<k14> gz3Var3 = gz3Var2;
                if (gz3Var2 == null) {
                    synchronized (k14.class) {
                        gz3<k14> gz3Var4 = zzbg;
                        gz3Var = gz3Var4;
                        if (gz3Var4 == null) {
                            ?? bVar = new sx3.b(zzbir);
                            zzbg = bVar;
                            gz3Var = bVar;
                        }
                    }
                    gz3Var3 = gz3Var;
                }
                return gz3Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final List<b> h() {
        return this.zzbiq;
    }
}
