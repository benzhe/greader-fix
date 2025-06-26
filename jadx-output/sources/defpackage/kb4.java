package defpackage;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class kb4 {
    public final Unsafe a;

    public kb4(Unsafe unsafe) {
        this.a = unsafe;
    }

    public abstract byte a(Object obj, long j);

    public abstract void b(Object obj, long j, byte b);

    public abstract boolean c(Object obj, long j);

    public abstract void d(Object obj, long j, boolean z);

    public abstract float e(Object obj, long j);

    public abstract void f(Object obj, long j, float f);

    public abstract double g(Object obj, long j);

    public abstract void h(Object obj, long j, double d);

    public boolean i() {
        Unsafe unsafe = this.a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                lb4.u(th);
            }
        }
        return false;
    }

    public boolean j() {
        Unsafe unsafe = this.a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return lb4.d() != null;
            } catch (Throwable th) {
                lb4.u(th);
            }
        }
        return false;
    }

    public final long k(Field field) {
        return this.a.objectFieldOffset(field);
    }

    public final int l(Class<?> cls) {
        return this.a.arrayBaseOffset(cls);
    }

    public final int m(Class<?> cls) {
        return this.a.arrayIndexScale(cls);
    }

    public final int n(Object obj, long j) {
        return this.a.getInt(obj, j);
    }

    public final void o(Object obj, long j, int i) {
        this.a.putInt(obj, j, i);
    }

    public final long p(Object obj, long j) {
        return this.a.getLong(obj, j);
    }

    public final void q(Object obj, long j, long j2) {
        this.a.putLong(obj, j, j2);
    }

    public final Object r(Object obj, long j) {
        return this.a.getObject(obj, j);
    }

    public final void s(Object obj, long j, Object obj2) {
        this.a.putObject(obj, j, obj2);
    }
}
