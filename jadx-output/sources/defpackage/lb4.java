package defpackage;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class lb4 {
    public static final Unsafe a;
    public static final Class<?> b;
    public static final boolean c;
    public static final boolean d;
    public static final kb4 e;
    public static final boolean f;
    public static final boolean g;
    public static final long h;
    public static final boolean i;

    static {
        Unsafe unsafeT = t();
        a = unsafeT;
        b = v74.a;
        boolean zC = c(Long.TYPE);
        c = zC;
        boolean zC2 = c(Integer.TYPE);
        d = zC2;
        kb4 jb4Var = null;
        if (unsafeT != null) {
            if (!v74.a()) {
                jb4Var = new jb4(unsafeT);
            } else if (zC) {
                jb4Var = new ib4(unsafeT);
            } else if (zC2) {
                jb4Var = new hb4(unsafeT);
            }
        }
        e = jb4Var;
        f = jb4Var == null ? false : jb4Var.j();
        g = jb4Var == null ? false : jb4Var.i();
        h = a(byte[].class);
        a(boolean[].class);
        b(boolean[].class);
        a(int[].class);
        b(int[].class);
        a(long[].class);
        b(long[].class);
        a(float[].class);
        b(float[].class);
        a(double[].class);
        b(double[].class);
        a(Object[].class);
        b(Object[].class);
        Field fieldD = d();
        if (fieldD != null && jb4Var != null) {
            jb4Var.k(fieldD);
        }
        i = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static int a(Class<?> cls) {
        if (g) {
            return e.l(cls);
        }
        return -1;
    }

    public static int b(Class<?> cls) {
        if (g) {
            return e.m(cls);
        }
        return -1;
    }

    public static boolean c(Class<?> cls) {
        if (!v74.a()) {
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

    public static Field d() {
        Field declaredField;
        Field declaredField2;
        if (v74.a()) {
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

    public static byte e(Object obj, long j) {
        return (byte) ((e.n(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & Base64.BASELENGTH);
    }

    public static byte f(Object obj, long j) {
        return (byte) ((e.n(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & Base64.BASELENGTH);
    }

    public static void g(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        kb4 kb4Var = e;
        int iN = kb4Var.n(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        kb4Var.o(obj, j2, ((255 & b2) << i2) | (iN & (~(Base64.BASELENGTH << i2))));
    }

    public static void h(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        kb4 kb4Var = e;
        int i2 = (((int) j) & 3) << 3;
        kb4Var.o(obj, j2, ((255 & b2) << i2) | (kb4Var.n(obj, j2) & (~(Base64.BASELENGTH << i2))));
    }

    public static <T> T i(Class<T> cls) {
        try {
            return (T) a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static int j(Object obj, long j) {
        return e.n(obj, j);
    }

    public static long k(Object obj, long j) {
        return e.p(obj, j);
    }

    public static void l(Object obj, long j, long j2) {
        e.q(obj, j, j2);
    }

    public static boolean m(Object obj, long j) {
        return e.c(obj, j);
    }

    public static float n(Object obj, long j) {
        return e.e(obj, j);
    }

    public static double o(Object obj, long j) {
        return e.g(obj, j);
    }

    public static void p(Object obj, long j, double d2) {
        e.h(obj, j, d2);
    }

    public static Object q(Object obj, long j) {
        return e.r(obj, j);
    }

    public static byte r(byte[] bArr, long j) {
        return e.a(bArr, h + j);
    }

    public static void s(byte[] bArr, long j, byte b2) {
        e.b(bArr, h + j, b2);
    }

    public static Unsafe t() {
        try {
            return (Unsafe) AccessController.doPrivileged(new gb4());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void u(Throwable th) {
        Logger logger = Logger.getLogger(lb4.class.getName());
        Level level = Level.WARNING;
        String strValueOf = String.valueOf(th);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", jo.s(new StringBuilder(strValueOf.length() + 71), "platform method missing - proto runtime falling back to safer methods: ", strValueOf));
    }
}
