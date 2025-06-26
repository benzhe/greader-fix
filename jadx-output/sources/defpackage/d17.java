package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public class d17 {
    public static final Interpolator w = new a();
    public int a;
    public int b;
    public float[] d;
    public float[] e;
    public float[] f;
    public float[] g;
    public int[] h;
    public int[] i;
    public int[] j;
    public int k;
    public VelocityTracker l;
    public float m;
    public float n;
    public int o;
    public int p;
    public za q;
    public final c r;
    public View s;
    public boolean t;
    public final ViewGroup u;
    public int c = -1;
    public final Runnable v = new b();

    public static class a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d17.this.r(0);
        }
    }

    public static abstract class c {
        public int a(View view, int i, int i2) {
            return 0;
        }

        public int b(View view, int i, int i2) {
            return 0;
        }

        public int c(View view) {
            return 0;
        }

        public int d(View view) {
            return 0;
        }

        public abstract void e(int i);

        public abstract void f(View view, int i, int i2, int i3, int i4);

        public abstract void g(View view, float f, float f2);

        public abstract boolean h(View view, int i);
    }

    public d17(Context context, ViewGroup viewGroup, c cVar) {
        if (cVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.u = viewGroup;
        this.r = cVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = new za(context, w);
    }

    public void a() {
        this.c = -1;
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public final boolean b(float f, float f2, int i, int i2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.b;
        if (fAbs <= i3 && fAbs2 <= i3) {
            return false;
        }
        if (fAbs < fAbs2 * 0.5f) {
            Objects.requireNonNull(this.r);
        }
        return (this.i[i] & i2) == 0 && fAbs > ((float) this.b);
    }

    public final boolean c(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.c(view) > 0;
        boolean z2 = this.r.d(view) > 0;
        float f3 = f2 < 0.0f ? -f2 : f2;
        if (!z || !z2) {
            return z2 ? Math.abs(f2) > ((float) this.b) : z && f3 * 3.0f < f && Math.abs(f) > ((float) this.b);
        }
        float f4 = (f2 * f2) + (f * f);
        int i = this.b;
        return f4 > ((float) (i * i));
    }

    public final float d(float f, float f2, float f3) {
        float fAbs = Math.abs(f);
        if (fAbs < f2) {
            return 0.0f;
        }
        return fAbs > f3 ? f > 0.0f ? f3 : -f3 : f;
    }

    public final int e(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        return iAbs > i3 ? i > 0 ? i3 : -i3 : i;
    }

    public final void f(int i) {
        if (this.d == null || !k(i)) {
            return;
        }
        this.d[i] = 0.0f;
        this.e[i] = 0.0f;
        this.f[i] = 0.0f;
        this.g[i] = 0.0f;
        this.h[i] = 0;
        this.i[i] = 0;
        this.j[i] = 0;
        this.k = (~(1 << i)) & this.k;
    }

    public final int g(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        float width = this.u.getWidth() / 2;
        float fSin = (((float) Math.sin((float) ((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.4712389167638204d))) * width) + width;
        int iAbs = Math.abs(i2);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    public final void h(float f, float f2) {
        this.t = true;
        this.r.g(this.s, f, f2);
        this.t = false;
        if (this.a == 1) {
            r(0);
        }
    }

    public View i(int i, int i2) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            ViewGroup viewGroup = this.u;
            Objects.requireNonNull(this.r);
            View childAt = viewGroup.getChildAt(childCount);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public boolean j(int i, int i2) {
        return k(i2) && (i & this.h[i2]) != 0;
    }

    public boolean k(int i) {
        return ((1 << i) & this.k) != 0;
    }

    public final boolean l(int i) {
        if (k(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public void m(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewI = i((int) x, (int) y);
            p(x, y, pointerId);
            u(viewI, pointerId);
            if ((this.h[pointerId] & this.p) != 0) {
                Objects.requireNonNull(this.r);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.a == 1) {
                n();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                while (i2 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i2);
                    if (l(pointerId2)) {
                        float x2 = motionEvent.getX(i2);
                        float y2 = motionEvent.getY(i2);
                        float f = x2 - this.d[pointerId2];
                        float f2 = y2 - this.e[pointerId2];
                        o(f, f2, pointerId2);
                        if (this.a != 1) {
                            View viewI2 = i((int) x2, (int) y2);
                            if (c(viewI2, f, f2) && u(viewI2, pointerId2)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    i2++;
                }
                q(motionEvent);
                return;
            }
            if (l(this.c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.c);
                float x3 = motionEvent.getX(iFindPointerIndex);
                float y3 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f;
                int i3 = this.c;
                int i4 = (int) (x3 - fArr[i3]);
                int i5 = (int) (y3 - this.g[i3]);
                int left = this.s.getLeft() + i4;
                int top = this.s.getTop() + i5;
                int left2 = this.s.getLeft();
                int top2 = this.s.getTop();
                if (i4 != 0) {
                    left = this.r.a(this.s, left, i4);
                    ha.l(this.s, left - left2);
                }
                int i6 = left;
                if (i5 != 0) {
                    top = this.r.b(this.s, top, i5);
                    ha.m(this.s, top - top2);
                }
                int i7 = top;
                if (i4 != 0 || i5 != 0) {
                    this.r.f(this.s, i6, i7, i6 - left2, i7 - top2);
                }
                q(motionEvent);
                return;
            }
            return;
        }
        if (actionMasked == 3) {
            if (this.a == 1) {
                h(0.0f, 0.0f);
            }
            a();
            return;
        }
        if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.a == 1 && pointerId3 == this.c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount2) {
                        i = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i2);
                    if (pointerId4 != this.c) {
                        View viewI3 = i((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view = this.s;
                        if (viewI3 == view && u(view, pointerId4)) {
                            i = this.c;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    n();
                }
            }
            f(pointerId3);
            return;
        }
        int pointerId5 = motionEvent.getPointerId(actionIndex);
        float x4 = motionEvent.getX(actionIndex);
        float y4 = motionEvent.getY(actionIndex);
        p(x4, y4, pointerId5);
        if (this.a == 0) {
            u(i((int) x4, (int) y4), pointerId5);
            if ((this.h[pointerId5] & this.p) != 0) {
                Objects.requireNonNull(this.r);
                return;
            }
            return;
        }
        int i8 = (int) x4;
        int i9 = (int) y4;
        View view2 = this.s;
        if (view2 != null && i8 >= view2.getLeft() && i8 < view2.getRight() && i9 >= view2.getTop() && i9 < view2.getBottom()) {
            i2 = 1;
        }
        if (i2 != 0) {
            u(this.s, pointerId5);
        }
    }

    public final void n() {
        this.l.computeCurrentVelocity(1000, this.m);
        h(d(this.l.getXVelocity(this.c), this.n, this.m), d(this.l.getYVelocity(this.c), this.n, this.m));
    }

    public final void o(float f, float f2, int i) {
        int i2 = b(f, f2, i, 1) ? 1 : 0;
        if (b(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (b(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (b(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            Objects.requireNonNull(this.r);
        }
    }

    public final void p(float f, float f2, int i) {
        float[] fArr = this.d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.g = fArr5;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
        float[] fArr9 = this.d;
        this.f[i] = f;
        fArr9[i] = f;
        float[] fArr10 = this.e;
        this.g[i] = f2;
        fArr10[i] = f2;
        int[] iArr7 = this.h;
        int i3 = (int) f;
        int i4 = (int) f2;
        int i5 = i3 < this.u.getLeft() + this.o ? 1 : 0;
        if (i4 < this.u.getTop() + this.o) {
            i5 |= 4;
        }
        if (i3 > this.u.getRight() - this.o) {
            i5 |= 2;
        }
        if (i4 > this.u.getBottom() - this.o) {
            i5 |= 8;
        }
        iArr7[i] = i5;
        this.k |= 1 << i;
    }

    public final void q(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (l(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    public void r(int i) {
        this.u.removeCallbacks(this.v);
        if (this.a != i) {
            this.a = i;
            this.r.e(i);
            if (this.a == 0) {
                this.s = null;
            }
        }
    }

    public boolean s(int i, int i2) {
        float f;
        float f2;
        float f3;
        float f4;
        if (!this.t) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        int xVelocity = (int) this.l.getXVelocity(this.c);
        int yVelocity = (int) this.l.getYVelocity(this.c);
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i3 = i - left;
        int i4 = i2 - top;
        if (i3 == 0 && i4 == 0) {
            this.q.a.abortAnimation();
            r(0);
            return false;
        }
        View view = this.s;
        int iE = e(xVelocity, (int) this.n, (int) this.m);
        int iE2 = e(yVelocity, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i3);
        int iAbs2 = Math.abs(i4);
        int iAbs3 = Math.abs(iE);
        int iAbs4 = Math.abs(iE2);
        int i5 = iAbs3 + iAbs4;
        int i6 = iAbs + iAbs2;
        if (iE != 0) {
            f = iAbs3;
            f2 = i5;
        } else {
            f = iAbs;
            f2 = i6;
        }
        float f5 = f / f2;
        if (iE2 != 0) {
            f3 = iAbs4;
            f4 = i5;
        } else {
            f3 = iAbs2;
            f4 = i6;
        }
        this.q.a.startScroll(left, top, i3, i4, (int) ((g(i4, iE2, this.r.d(view)) * (f3 / f4)) + (g(i3, iE, this.r.c(view)) * f5)));
        r(2);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean t(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d17.t(android.view.MotionEvent):boolean");
    }

    public boolean u(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view == null || !this.r.h(view, i)) {
            return false;
        }
        this.c = i;
        if (view.getParent() != this.u) {
            StringBuilder sbZ = jo.z("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            sbZ.append(this.u);
            sbZ.append(")");
            throw new IllegalArgumentException(sbZ.toString());
        }
        this.s = view;
        this.c = i;
        Objects.requireNonNull(this.r);
        r(1);
        return true;
    }
}
