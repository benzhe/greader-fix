package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class in4 {
    public static final Logger a = Logger.getLogger(in4.class.getName());
    public static final Unsafe b;
    public static final Class<?> c;
    public static final boolean d;
    public static final boolean e;
    public static final c f;
    public static final boolean g;
    public static final boolean h;
    public static final long i;
    public static final boolean j;

    public static final class a extends c {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // in4.c
        public final byte a(Object obj, long j) {
            return in4.j ? in4.s(obj, j) : in4.t(obj, j);
        }

        @Override // in4.c
        public final void b(Object obj, long j, byte b) {
            if (in4.j) {
                in4.k(obj, j, b);
            } else {
                in4.n(obj, j, b);
            }
        }

        @Override // in4.c
        public final void c(Object obj, long j, double d) {
            f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // in4.c
        public final void d(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // in4.c
        public final void g(Object obj, long j, boolean z) {
            if (in4.j) {
                in4.k(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                in4.n(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // in4.c
        public final boolean h(Object obj, long j) {
            return in4.j ? in4.s(obj, j) != 0 : in4.t(obj, j) != 0;
        }

        @Override // in4.c
        public final float i(Object obj, long j) {
            return Float.intBitsToFloat(k(obj, j));
        }

        @Override // in4.c
        public final double j(Object obj, long j) {
            return Double.longBitsToDouble(l(obj, j));
        }
    }

    public static final class b extends c {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // in4.c
        public final byte a(Object obj, long j) {
            return in4.j ? in4.s(obj, j) : in4.t(obj, j);
        }

        @Override // in4.c
        public final void b(Object obj, long j, byte b) {
            if (in4.j) {
                in4.k(obj, j, b);
            } else {
                in4.n(obj, j, b);
            }
        }

        @Override // in4.c
        public final void c(Object obj, long j, double d) {
            f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // in4.c
        public final void d(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // in4.c
        public final void g(Object obj, long j, boolean z) {
            if (in4.j) {
                in4.k(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                in4.n(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // in4.c
        public final boolean h(Object obj, long j) {
            return in4.j ? in4.s(obj, j) != 0 : in4.t(obj, j) != 0;
        }

        @Override // in4.c
        public final float i(Object obj, long j) {
            return Float.intBitsToFloat(k(obj, j));
        }

        @Override // in4.c
        public final double j(Object obj, long j) {
            return Double.longBitsToDouble(l(obj, j));
        }
    }

    public static abstract class c {
        public Unsafe a;

        public c(Unsafe unsafe) {
            this.a = unsafe;
        }

        public abstract byte a(Object obj, long j);

        public abstract void b(Object obj, long j, byte b);

        public abstract void c(Object obj, long j, double d);

        public abstract void d(Object obj, long j, float f);

        public final void e(Object obj, long j, int i) {
            this.a.putInt(obj, j, i);
        }

        public final void f(Object obj, long j, long j2) {
            this.a.putLong(obj, j, j2);
        }

        public abstract void g(Object obj, long j, boolean z);

        public abstract boolean h(Object obj, long j);

        public abstract float i(Object obj, long j);

        public abstract double j(Object obj, long j);

        public final int k(Object obj, long j) {
            return this.a.getInt(obj, j);
        }

        public final long l(Object obj, long j) {
            return this.a.getLong(obj, j);
        }
    }

    public static final class d extends c {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // in4.c
        public final byte a(Object obj, long j) {
            return this.a.getByte(obj, j);
        }

        @Override // in4.c
        public final void b(Object obj, long j, byte b) {
            this.a.putByte(obj, j, b);
        }

        @Override // in4.c
        public final void c(Object obj, long j, double d) {
            this.a.putDouble(obj, j, d);
        }

        @Override // in4.c
        public final void d(Object obj, long j, float f) {
            this.a.putFloat(obj, j, f);
        }

        @Override // in4.c
        public final void g(Object obj, long j, boolean z) {
            this.a.putBoolean(obj, j, z);
        }

        @Override // in4.c
        public final boolean h(Object obj, long j) {
            return this.a.getBoolean(obj, j);
        }

        @Override // in4.c
        public final float i(Object obj, long j) {
            return this.a.getFloat(obj, j);
        }

        @Override // in4.c
        public final double j(Object obj, long j) {
            return this.a.getDouble(obj, j);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.in4.<clinit>():void");
    }

    public static byte a(byte[] bArr, long j2) {
        return f.a(bArr, i + j2);
    }

    public static int b(Object obj, long j2) {
        return f.k(obj, j2);
    }

    public static <T> T c(Class<T> cls) {
        try {
            return (T) b.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void d(Object obj, long j2, long j3) {
        f.f(obj, j2, j3);
    }

    public static void e(Object obj, long j2, Object obj2) {
        f.a.putObject(obj, j2, obj2);
    }

    public static void f(byte[] bArr, long j2, byte b2) {
        f.b(bArr, i + j2, b2);
    }

    public static int g(Class<?> cls) {
        if (h) {
            return f.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static long h(Object obj, long j2) {
        return f.l(obj, j2);
    }

    public static int i(Class<?> cls) {
        if (h) {
            return f.a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new hn4());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iB = b(obj, j3);
        int i2 = ((~((int) j2)) & 3) << 3;
        f.e(obj, j3, ((255 & b2) << i2) | (iB & (~(Base64.BASELENGTH << i2))));
    }

    public static boolean l(Object obj, long j2) {
        return f.h(obj, j2);
    }

    public static float m(Object obj, long j2) {
        return f.i(obj, j2);
    }

    public static void n(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        f.e(obj, j3, ((255 & b2) << i2) | (b(obj, j3) & (~(Base64.BASELENGTH << i2))));
    }

    public static boolean o(Class<?> cls) {
        if (!tj4.a()) {
            return false;
        }
        try {
            Class<?> cls2 = c;
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

    public static double p(Object obj, long j2) {
        return f.j(obj, j2);
    }

    public static Object q(Object obj, long j2) {
        return f.a.getObject(obj, j2);
    }

    public static Field r() {
        Field declaredField;
        Field declaredField2;
        if (tj4.a()) {
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

    public static byte s(Object obj, long j2) {
        return (byte) (b(obj, (-4) & j2) >>> ((int) (((~j2) & 3) << 3)));
    }

    public static byte t(Object obj, long j2) {
        return (byte) (b(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)));
    }
}
