package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class r93 {
    public static final Unsafe a;
    public static final Class<?> b;
    public static final boolean c;
    public static final boolean d;
    public static final d e;
    public static final boolean f;
    public static final boolean g;
    public static final long h;
    public static final boolean i;

    public static final class a extends d {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // r93.d
        public final void a(Object obj, long j, double d) {
            c(obj, j, Double.doubleToLongBits(d));
        }

        @Override // r93.d
        public final void b(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // r93.d
        public final void d(Object obj, long j, boolean z) {
            if (r93.i) {
                r93.b(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                r93.g(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // r93.d
        public final void f(Object obj, long j, byte b) {
            if (r93.i) {
                r93.b(obj, j, b);
            } else {
                r93.g(obj, j, b);
            }
        }

        @Override // r93.d
        public final boolean i(Object obj, long j) {
            return r93.i ? r93.u(obj, j) != 0 : r93.v(obj, j) != 0;
        }

        @Override // r93.d
        public final float j(Object obj, long j) {
            return Float.intBitsToFloat(g(obj, j));
        }

        @Override // r93.d
        public final double k(Object obj, long j) {
            return Double.longBitsToDouble(h(obj, j));
        }

        @Override // r93.d
        public final byte l(Object obj, long j) {
            return r93.i ? r93.u(obj, j) : r93.v(obj, j);
        }
    }

    public static final class b extends d {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // r93.d
        public final void a(Object obj, long j, double d) {
            this.a.putDouble(obj, j, d);
        }

        @Override // r93.d
        public final void b(Object obj, long j, float f) {
            this.a.putFloat(obj, j, f);
        }

        @Override // r93.d
        public final void d(Object obj, long j, boolean z) {
            this.a.putBoolean(obj, j, z);
        }

        @Override // r93.d
        public final void f(Object obj, long j, byte b) {
            this.a.putByte(obj, j, b);
        }

        @Override // r93.d
        public final boolean i(Object obj, long j) {
            return this.a.getBoolean(obj, j);
        }

        @Override // r93.d
        public final float j(Object obj, long j) {
            return this.a.getFloat(obj, j);
        }

        @Override // r93.d
        public final double k(Object obj, long j) {
            return this.a.getDouble(obj, j);
        }

        @Override // r93.d
        public final byte l(Object obj, long j) {
            return this.a.getByte(obj, j);
        }
    }

    public static final class c extends d {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // r93.d
        public final void a(Object obj, long j, double d) {
            c(obj, j, Double.doubleToLongBits(d));
        }

        @Override // r93.d
        public final void b(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // r93.d
        public final void d(Object obj, long j, boolean z) {
            if (r93.i) {
                r93.b(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                r93.g(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // r93.d
        public final void f(Object obj, long j, byte b) {
            if (r93.i) {
                r93.b(obj, j, b);
            } else {
                r93.g(obj, j, b);
            }
        }

        @Override // r93.d
        public final boolean i(Object obj, long j) {
            return r93.i ? r93.u(obj, j) != 0 : r93.v(obj, j) != 0;
        }

        @Override // r93.d
        public final float j(Object obj, long j) {
            return Float.intBitsToFloat(g(obj, j));
        }

        @Override // r93.d
        public final double k(Object obj, long j) {
            return Double.longBitsToDouble(h(obj, j));
        }

        @Override // r93.d
        public final byte l(Object obj, long j) {
            return r93.i ? r93.u(obj, j) : r93.v(obj, j);
        }
    }

    public static abstract class d {
        public Unsafe a;

        public d(Unsafe unsafe) {
            this.a = unsafe;
        }

        public abstract void a(Object obj, long j, double d);

        public abstract void b(Object obj, long j, float f);

        public final void c(Object obj, long j, long j2) {
            this.a.putLong(obj, j, j2);
        }

        public abstract void d(Object obj, long j, boolean z);

        public final void e(Object obj, long j, int i) {
            this.a.putInt(obj, j, i);
        }

        public abstract void f(Object obj, long j, byte b);

        public final int g(Object obj, long j) {
            return this.a.getInt(obj, j);
        }

        public final long h(Object obj, long j) {
            return this.a.getLong(obj, j);
        }

        public abstract boolean i(Object obj, long j);

        public abstract float j(Object obj, long j);

        public abstract double k(Object obj, long j);

        public abstract byte l(Object obj, long j);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r93.<clinit>():void");
    }

    public static byte a(byte[] bArr, long j) {
        return e.l(bArr, h + j);
    }

    public static void b(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int iK = k(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        e.e(obj, j2, ((255 & b2) << i2) | (iK & (~(Base64.BASELENGTH << i2))));
    }

    public static void c(Object obj, long j, double d2) {
        e.a(obj, j, d2);
    }

    public static void d(Object obj, long j, long j2) {
        e.c(obj, j, j2);
    }

    public static void e(Object obj, long j, Object obj2) {
        e.a.putObject(obj, j, obj2);
    }

    public static void f(byte[] bArr, long j, byte b2) {
        e.f(bArr, h + j, b2);
    }

    public static void g(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i2 = (((int) j) & 3) << 3;
        e.e(obj, j2, ((255 & b2) << i2) | (k(obj, j2) & (~(Base64.BASELENGTH << i2))));
    }

    public static void h(Object obj, long j, int i2) {
        e.e(obj, j, i2);
    }

    public static Unsafe i() {
        try {
            return (Unsafe) AccessController.doPrivileged(new t93());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field j() {
        Field declaredField;
        Field declaredField2;
        if (e53.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField(InetAddressKeys.KEY_ADDRESS);
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static int k(Object obj, long j) {
        return e.g(obj, j);
    }

    public static long l(Object obj, long j) {
        return e.h(obj, j);
    }

    public static <T> T m(Class<T> cls) {
        try {
            return (T) a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static int n(Class<?> cls) {
        if (g) {
            return e.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static boolean o(Object obj, long j) {
        return e.i(obj, j);
    }

    public static float p(Object obj, long j) {
        return e.j(obj, j);
    }

    public static int q(Class<?> cls) {
        if (g) {
            return e.a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static double r(Object obj, long j) {
        return e.k(obj, j);
    }

    public static boolean s(Class<?> cls) {
        if (!e53.a()) {
            return false;
        }
        try {
            Class<?> cls2 = b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object t(Object obj, long j) {
        return e.a.getObject(obj, j);
    }

    public static byte u(Object obj, long j) {
        return (byte) (k(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3)));
    }

    public static byte v(Object obj, long j) {
        return (byte) (k(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }
}
