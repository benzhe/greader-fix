package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Logger;
import libcore.io.Memory;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class h04 {
    public static final Logger a = Logger.getLogger(h04.class.getName());
    public static final Unsafe b;
    public static final Class<?> c;
    public static final boolean d;
    public static final boolean e;
    public static final d f;
    public static final boolean g;
    public static final boolean h;
    public static final long i;
    public static final long j;
    public static final boolean k;

    public static final class a extends d {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // h04.d
        public final void b(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // h04.d
        public final void c(Object obj, long j, double d) {
            f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // h04.d
        public final void d(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // h04.d
        public final void g(Object obj, long j, boolean z) {
            if (h04.k) {
                h04.c(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                h04.i(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // h04.d
        public final void h(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // h04.d
        public final void i(Object obj, long j, byte b) {
            if (h04.k) {
                h04.c(obj, j, b);
            } else {
                h04.i(obj, j, b);
            }
        }

        @Override // h04.d
        public final boolean l(Object obj, long j) {
            return h04.k ? h04.u(obj, j) != 0 : h04.v(obj, j) != 0;
        }

        @Override // h04.d
        public final float m(Object obj, long j) {
            return Float.intBitsToFloat(j(obj, j));
        }

        @Override // h04.d
        public final double n(Object obj, long j) {
            return Double.longBitsToDouble(k(obj, j));
        }

        @Override // h04.d
        public final byte o(Object obj, long j) {
            return h04.k ? h04.u(obj, j) : h04.v(obj, j);
        }
    }

    public static final class b extends d {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // h04.d
        public final void b(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // h04.d
        public final void c(Object obj, long j, double d) {
            f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // h04.d
        public final void d(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // h04.d
        public final void g(Object obj, long j, boolean z) {
            if (h04.k) {
                h04.c(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                h04.i(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // h04.d
        public final void h(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // h04.d
        public final void i(Object obj, long j, byte b) {
            if (h04.k) {
                h04.c(obj, j, b);
            } else {
                h04.i(obj, j, b);
            }
        }

        @Override // h04.d
        public final boolean l(Object obj, long j) {
            return h04.k ? h04.u(obj, j) != 0 : h04.v(obj, j) != 0;
        }

        @Override // h04.d
        public final float m(Object obj, long j) {
            return Float.intBitsToFloat(j(obj, j));
        }

        @Override // h04.d
        public final double n(Object obj, long j) {
            return Double.longBitsToDouble(k(obj, j));
        }

        @Override // h04.d
        public final byte o(Object obj, long j) {
            return h04.k ? h04.u(obj, j) : h04.v(obj, j);
        }
    }

    public static final class c extends d {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // h04.d
        public final void b(long j, byte b) {
            this.a.putByte(j, b);
        }

        @Override // h04.d
        public final void c(Object obj, long j, double d) {
            this.a.putDouble(obj, j, d);
        }

        @Override // h04.d
        public final void d(Object obj, long j, float f) {
            this.a.putFloat(obj, j, f);
        }

        @Override // h04.d
        public final void g(Object obj, long j, boolean z) {
            this.a.putBoolean(obj, j, z);
        }

        @Override // h04.d
        public final void h(byte[] bArr, long j, long j2, long j3) {
            this.a.copyMemory(bArr, h04.i + j, (Object) null, j2, j3);
        }

        @Override // h04.d
        public final void i(Object obj, long j, byte b) {
            this.a.putByte(obj, j, b);
        }

        @Override // h04.d
        public final boolean l(Object obj, long j) {
            return this.a.getBoolean(obj, j);
        }

        @Override // h04.d
        public final float m(Object obj, long j) {
            return this.a.getFloat(obj, j);
        }

        @Override // h04.d
        public final double n(Object obj, long j) {
            return this.a.getDouble(obj, j);
        }

        @Override // h04.d
        public final byte o(Object obj, long j) {
            return this.a.getByte(obj, j);
        }
    }

    public static abstract class d {
        public Unsafe a;

        public d(Unsafe unsafe) {
            this.a = unsafe;
        }

        public final long a(Field field) {
            return this.a.objectFieldOffset(field);
        }

        public abstract void b(long j, byte b);

        public abstract void c(Object obj, long j, double d);

        public abstract void d(Object obj, long j, float f);

        public final void e(Object obj, long j, int i) {
            this.a.putInt(obj, j, i);
        }

        public final void f(Object obj, long j, long j2) {
            this.a.putLong(obj, j, j2);
        }

        public abstract void g(Object obj, long j, boolean z);

        public abstract void h(byte[] bArr, long j, long j2, long j3);

        public abstract void i(Object obj, long j, byte b);

        public final int j(Object obj, long j) {
            return this.a.getInt(obj, j);
        }

        public final long k(Object obj, long j) {
            return this.a.getLong(obj, j);
        }

        public abstract boolean l(Object obj, long j);

        public abstract float m(Object obj, long j);

        public abstract double n(Object obj, long j);

        public abstract byte o(Object obj, long j);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h04.<clinit>():void");
    }

    public static byte a(byte[] bArr, long j2) {
        return f.o(bArr, i + j2);
    }

    public static long b(Field field) {
        return f.a(field);
    }

    public static void c(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int iO = o(obj, j3);
        int i2 = ((~((int) j2)) & 3) << 3;
        f.e(obj, j3, ((255 & b2) << i2) | (iO & (~(Base64.BASELENGTH << i2))));
    }

    public static void d(Object obj, long j2, double d2) {
        f.c(obj, j2, d2);
    }

    public static void e(Object obj, long j2, long j3) {
        f.f(obj, j2, j3);
    }

    public static void f(Object obj, long j2, Object obj2) {
        f.a.putObject(obj, j2, obj2);
    }

    public static void g(byte[] bArr, long j2, byte b2) {
        f.i(bArr, i + j2, b2);
    }

    public static Field h(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void i(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        f.e(obj, j3, ((255 & b2) << i2) | (o(obj, j3) & (~(Base64.BASELENGTH << i2))));
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new i04());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field k() {
        Field fieldH;
        if (nw3.a() && (fieldH = h(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldH;
        }
        Field fieldH2 = h(Buffer.class, InetAddressKeys.KEY_ADDRESS);
        if (fieldH2 == null || fieldH2.getType() != Long.TYPE) {
            return null;
        }
        return fieldH2;
    }

    public static int l(Class<?> cls) {
        if (h) {
            return f.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int m(Class<?> cls) {
        if (h) {
            return f.a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static boolean n(Class<?> cls) {
        if (!nw3.a()) {
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

    public static int o(Object obj, long j2) {
        return f.j(obj, j2);
    }

    public static long p(Object obj, long j2) {
        return f.k(obj, j2);
    }

    public static boolean q(Object obj, long j2) {
        return f.l(obj, j2);
    }

    public static float r(Object obj, long j2) {
        return f.m(obj, j2);
    }

    public static double s(Object obj, long j2) {
        return f.n(obj, j2);
    }

    public static Object t(Object obj, long j2) {
        return f.a.getObject(obj, j2);
    }

    public static byte u(Object obj, long j2) {
        return (byte) (o(obj, (-4) & j2) >>> ((int) (((~j2) & 3) << 3)));
    }

    public static byte v(Object obj, long j2) {
        return (byte) (o(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)));
    }
}
