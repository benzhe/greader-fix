package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class cl6 {
    public static final Unsafe a;
    public static final Class<?> b;
    public static final boolean c;
    public static final boolean d;
    public static final e e;
    public static final boolean f;
    public static final boolean g;
    public static final long h;
    public static final boolean i;

    public static class a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    public static final class b extends e {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // cl6.e
        public boolean c(Object obj, long j) {
            return cl6.i ? cl6.h(obj, j) != 0 : cl6.i(obj, j) != 0;
        }

        @Override // cl6.e
        public byte d(Object obj, long j) {
            return cl6.i ? cl6.h(obj, j) : cl6.i(obj, j);
        }

        @Override // cl6.e
        public double e(Object obj, long j) {
            return Double.longBitsToDouble(h(obj, j));
        }

        @Override // cl6.e
        public float f(Object obj, long j) {
            return Float.intBitsToFloat(g(obj, j));
        }

        @Override // cl6.e
        public void k(Object obj, long j, boolean z) {
            if (cl6.i) {
                cl6.r(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                cl6.s(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // cl6.e
        public void l(Object obj, long j, byte b) {
            if (cl6.i) {
                cl6.r(obj, j, b);
            } else {
                cl6.s(obj, j, b);
            }
        }

        @Override // cl6.e
        public void m(Object obj, long j, double d) {
            p(obj, j, Double.doubleToLongBits(d));
        }

        @Override // cl6.e
        public void n(Object obj, long j, float f) {
            o(obj, j, Float.floatToIntBits(f));
        }
    }

    public static final class c extends e {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // cl6.e
        public boolean c(Object obj, long j) {
            return cl6.i ? cl6.h(obj, j) != 0 : cl6.i(obj, j) != 0;
        }

        @Override // cl6.e
        public byte d(Object obj, long j) {
            return cl6.i ? cl6.h(obj, j) : cl6.i(obj, j);
        }

        @Override // cl6.e
        public double e(Object obj, long j) {
            return Double.longBitsToDouble(h(obj, j));
        }

        @Override // cl6.e
        public float f(Object obj, long j) {
            return Float.intBitsToFloat(g(obj, j));
        }

        @Override // cl6.e
        public void k(Object obj, long j, boolean z) {
            if (cl6.i) {
                cl6.r(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                cl6.s(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // cl6.e
        public void l(Object obj, long j, byte b) {
            if (cl6.i) {
                cl6.r(obj, j, b);
            } else {
                cl6.s(obj, j, b);
            }
        }

        @Override // cl6.e
        public void m(Object obj, long j, double d) {
            p(obj, j, Double.doubleToLongBits(d));
        }

        @Override // cl6.e
        public void n(Object obj, long j, float f) {
            o(obj, j, Float.floatToIntBits(f));
        }
    }

    public static final class d extends e {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // cl6.e
        public boolean c(Object obj, long j) {
            return this.a.getBoolean(obj, j);
        }

        @Override // cl6.e
        public byte d(Object obj, long j) {
            return this.a.getByte(obj, j);
        }

        @Override // cl6.e
        public double e(Object obj, long j) {
            return this.a.getDouble(obj, j);
        }

        @Override // cl6.e
        public float f(Object obj, long j) {
            return this.a.getFloat(obj, j);
        }

        @Override // cl6.e
        public void k(Object obj, long j, boolean z) {
            this.a.putBoolean(obj, j, z);
        }

        @Override // cl6.e
        public void l(Object obj, long j, byte b) {
            this.a.putByte(obj, j, b);
        }

        @Override // cl6.e
        public void m(Object obj, long j, double d) {
            this.a.putDouble(obj, j, d);
        }

        @Override // cl6.e
        public void n(Object obj, long j, float f) {
            this.a.putFloat(obj, j, f);
        }
    }

    public static abstract class e {
        public Unsafe a;

        public e(Unsafe unsafe) {
            this.a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.a.arrayIndexScale(cls);
        }

        public abstract boolean c(Object obj, long j);

        public abstract byte d(Object obj, long j);

        public abstract double e(Object obj, long j);

        public abstract float f(Object obj, long j);

        public final int g(Object obj, long j) {
            return this.a.getInt(obj, j);
        }

        public final long h(Object obj, long j) {
            return this.a.getLong(obj, j);
        }

        public final Object i(Object obj, long j) {
            return this.a.getObject(obj, j);
        }

        public final long j(Field field) {
            return this.a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j, boolean z);

        public abstract void l(Object obj, long j, byte b);

        public abstract void m(Object obj, long j, double d);

        public abstract void n(Object obj, long j, float f);

        public final void o(Object obj, long j, int i) {
            this.a.putInt(obj, j, i);
        }

        public final void p(Object obj, long j, long j2) {
            this.a.putLong(obj, j, j2);
        }

        public final void q(Object obj, long j, Object obj2) {
            this.a.putObject(obj, j, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 655
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cl6.<clinit>():void");
    }

    public static <T> T a(Class<T> cls) {
        try {
            return (T) a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static int b(Class<?> cls) {
        if (g) {
            return e.a(cls);
        }
        return -1;
    }

    public static int c(Class<?> cls) {
        if (g) {
            return e.b(cls);
        }
        return -1;
    }

    public static Field d() {
        Field declaredField;
        Field declaredField2;
        if (li6.a()) {
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

    public static boolean e(Class<?> cls) {
        if (!li6.a()) {
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

    public static boolean f(Object obj, long j) {
        return e.c(obj, j);
    }

    public static byte g(byte[] bArr, long j) {
        return e.d(bArr, h + j);
    }

    public static byte h(Object obj, long j) {
        return (byte) ((l(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & Base64.BASELENGTH);
    }

    public static byte i(Object obj, long j) {
        return (byte) ((l(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & Base64.BASELENGTH);
    }

    public static double j(Object obj, long j) {
        return e.e(obj, j);
    }

    public static float k(Object obj, long j) {
        return e.f(obj, j);
    }

    public static int l(Object obj, long j) {
        return e.g(obj, j);
    }

    public static long m(Object obj, long j) {
        return e.h(obj, j);
    }

    public static Object n(Object obj, long j) {
        return e.i(obj, j);
    }

    public static Unsafe o() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void p(Object obj, long j, boolean z) {
        e.k(obj, j, z);
    }

    public static void q(byte[] bArr, long j, byte b2) {
        e.l(bArr, h + j, b2);
    }

    public static void r(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int iL = l(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        e.o(obj, j2, ((255 & b2) << i2) | (iL & (~(Base64.BASELENGTH << i2))));
    }

    public static void s(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        int i2 = (((int) j) & 3) << 3;
        e.o(obj, j2, ((255 & b2) << i2) | (l(obj, j2) & (~(Base64.BASELENGTH << i2))));
    }

    public static void t(Object obj, long j, double d2) {
        e.m(obj, j, d2);
    }

    public static void u(Object obj, long j, float f2) {
        e.n(obj, j, f2);
    }

    public static void v(Object obj, long j, int i2) {
        e.o(obj, j, i2);
    }

    public static void w(Object obj, long j, long j2) {
        e.p(obj, j, j2);
    }

    public static void x(Object obj, long j, Object obj2) {
        e.q(obj, j, obj2);
    }
}
