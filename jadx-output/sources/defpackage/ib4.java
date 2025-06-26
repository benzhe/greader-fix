package defpackage;

import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class ib4 extends kb4 {
    public ib4(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // defpackage.kb4
    public final byte a(Object obj, long j) {
        return lb4.i ? lb4.e(obj, j) : lb4.f(obj, j);
    }

    @Override // defpackage.kb4
    public final void b(Object obj, long j, byte b) {
        if (lb4.i) {
            lb4.g(obj, j, b);
        } else {
            lb4.h(obj, j, b);
        }
    }

    @Override // defpackage.kb4
    public final boolean c(Object obj, long j) {
        return lb4.i ? lb4.e(obj, j) != 0 : lb4.f(obj, j) != 0;
    }

    @Override // defpackage.kb4
    public final void d(Object obj, long j, boolean z) {
        if (lb4.i) {
            lb4.g(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            lb4.h(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.kb4
    public final float e(Object obj, long j) {
        return Float.intBitsToFloat(n(obj, j));
    }

    @Override // defpackage.kb4
    public final void f(Object obj, long j, float f) {
        o(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.kb4
    public final double g(Object obj, long j) {
        return Double.longBitsToDouble(p(obj, j));
    }

    @Override // defpackage.kb4
    public final void h(Object obj, long j, double d) {
        q(obj, j, Double.doubleToLongBits(d));
    }
}
