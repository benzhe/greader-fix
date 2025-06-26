package defpackage;

import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class jb4 extends kb4 {
    public jb4(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // defpackage.kb4
    public final byte a(Object obj, long j) {
        return this.a.getByte(obj, j);
    }

    @Override // defpackage.kb4
    public final void b(Object obj, long j, byte b) {
        this.a.putByte(obj, j, b);
    }

    @Override // defpackage.kb4
    public final boolean c(Object obj, long j) {
        return this.a.getBoolean(obj, j);
    }

    @Override // defpackage.kb4
    public final void d(Object obj, long j, boolean z) {
        this.a.putBoolean(obj, j, z);
    }

    @Override // defpackage.kb4
    public final float e(Object obj, long j) {
        return this.a.getFloat(obj, j);
    }

    @Override // defpackage.kb4
    public final void f(Object obj, long j, float f) {
        this.a.putFloat(obj, j, f);
    }

    @Override // defpackage.kb4
    public final double g(Object obj, long j) {
        return this.a.getDouble(obj, j);
    }

    @Override // defpackage.kb4
    public final void h(Object obj, long j, double d) {
        this.a.putDouble(obj, j, d);
    }

    @Override // defpackage.kb4
    public final boolean i() {
        if (!super.i()) {
            return false;
        }
        try {
            Class<?> cls = this.a.getClass();
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            lb4.u(th);
            return false;
        }
    }

    @Override // defpackage.kb4
    public final boolean j() {
        if (!super.j()) {
            return false;
        }
        try {
            Class<?> cls = this.a.getClass();
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            lb4.u(th);
            return false;
        }
    }
}
