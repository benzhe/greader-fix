package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public class jb {
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
    public OverScroller q;
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
            jb.this.w(0);
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

        public void e(int i, int i2) {
        }

        public boolean f(int i) {
            return false;
        }

        public void g(int i, int i2) {
        }

        public void h(View view, int i) {
        }

        public void i(int i) {
        }

        public abstract void j(View view, int i, int i2, int i3, int i4);

        public abstract void k(View view, float f, float f2);

        public abstract boolean l(View view, int i);
    }

    public jb(Context context, ViewGroup viewGroup, c cVar) {
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
        this.q = new OverScroller(context, w);
    }

    public static jb k(ViewGroup viewGroup, float f, c cVar) {
        jb jbVar = new jb(viewGroup.getContext(), viewGroup, cVar);
        jbVar.b = (int) ((1.0f / f) * jbVar.b);
        return jbVar;
    }

    public boolean A(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view == null || !this.r.l(view, i)) {
            return false;
        }
        this.c = i;
        c(view, i);
        return true;
    }

    public void a() {
        b();
        if (this.a == 2) {
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            this.q.abortAnimation();
            int currX2 = this.q.getCurrX();
            int currY2 = this.q.getCurrY();
            this.r.j(this.s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        w(0);
    }

    public void b() {
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

    public void c(View view, int i) {
        if (view.getParent() != this.u) {
            StringBuilder sbZ = jo.z("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            sbZ.append(this.u);
            sbZ.append(")");
            throw new IllegalArgumentException(sbZ.toString());
        }
        this.s = view;
        this.c = i;
        this.r.h(view, i);
        w(1);
    }

    public final boolean d(float f, float f2, int i, int i2) {
        float fAbs = Math.abs(f);
        float fAbs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.b;
        if (fAbs <= i3 && fAbs2 <= i3) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.r.f(i2)) {
            return (this.i[i] & i2) == 0 && fAbs > ((float) this.b);
        }
        int[] iArr = this.j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    public final boolean e(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.c(view) > 0;
        boolean z2 = this.r.d(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.b) : z2 && Math.abs(f2) > ((float) this.b);
        }
        float f3 = (f2 * f2) + (f * f);
        int i = this.b;
        return f3 > ((float) (i * i));
    }

    public final float f(float f, float f2, float f3) {
        float fAbs = Math.abs(f);
        if (fAbs < f2) {
            return 0.0f;
        }
        return fAbs > f3 ? f > 0.0f ? f3 : -f3 : f;
    }

    public final int g(int i, int i2, int i3) {
        int iAbs = Math.abs(i);
        if (iAbs < i2) {
            return 0;
        }
        return iAbs > i3 ? i > 0 ? i3 : -i3 : i;
    }

    public final void h(int i) {
        if (this.d == null || !o(i)) {
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

    public final int i(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        float width = this.u.getWidth() / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int iAbs = Math.abs(i2);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    public boolean j(boolean z) {
        if (this.a == 2) {
            boolean zComputeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                ha.l(this.s, left);
            }
            if (top != 0) {
                ha.m(this.s, top);
            }
            if (left != 0 || top != 0) {
                this.r.j(this.s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z) {
                    this.u.post(this.v);
                } else {
                    w(0);
                }
            }
        }
        return this.a == 2;
    }

    public final void l(float f, float f2) {
        this.t = true;
        this.r.k(this.s, f, f2);
        this.t = false;
        if (this.a == 1) {
            w(0);
        }
    }

    public View m(int i, int i2) {
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

    public final boolean n(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.abortAnimation();
            w(0);
            return false;
        }
        View view = this.s;
        int iG = g(i3, (int) this.n, (int) this.m);
        int iG2 = g(i4, (int) this.n, (int) this.m);
        int iAbs = Math.abs(i5);
        int iAbs2 = Math.abs(i6);
        int iAbs3 = Math.abs(iG);
        int iAbs4 = Math.abs(iG2);
        int i7 = iAbs3 + iAbs4;
        int i8 = iAbs + iAbs2;
        if (iG != 0) {
            f = iAbs3;
            f2 = i7;
        } else {
            f = iAbs;
            f2 = i8;
        }
        float f5 = f / f2;
        if (iG2 != 0) {
            f3 = iAbs4;
            f4 = i7;
        } else {
            f3 = iAbs2;
            f4 = i8;
        }
        int i9 = i(i5, iG, this.r.c(view));
        this.q.startScroll(left, top, i5, i6, (int) ((i(i6, iG2, this.r.d(view)) * (f3 / f4)) + (i9 * f5)));
        w(2);
        return true;
    }

    public boolean o(int i) {
        return ((1 << i) & this.k) != 0;
    }

    public final boolean p(int i) {
        if (o(i)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public boolean q(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public void r(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
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
            View viewM = m((int) x, (int) y);
            u(x, y, pointerId);
            A(viewM, pointerId);
            int i3 = this.h[pointerId];
            int i4 = this.p;
            if ((i3 & i4) != 0) {
                this.r.g(i3 & i4, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.a == 1) {
                s();
            }
            b();
            return;
        }
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.a == 1) {
                    l(0.0f, 0.0f);
                }
                b();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                u(x2, y2, pointerId2);
                if (this.a != 0) {
                    if (q(this.s, (int) x2, (int) y2)) {
                        A(this.s, pointerId2);
                        return;
                    }
                    return;
                }
                A(m((int) x2, (int) y2), pointerId2);
                int i5 = this.h[pointerId2];
                int i6 = this.p;
                if ((i5 & i6) != 0) {
                    this.r.g(i5 & i6, pointerId2);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.a == 1 && pointerId3 == this.c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount) {
                        i = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i2);
                    if (pointerId4 != this.c) {
                        View viewM2 = m((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view = this.s;
                        if (viewM2 == view && A(view, pointerId4)) {
                            i = this.c;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    s();
                }
            }
            h(pointerId3);
            return;
        }
        if (this.a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (i2 < pointerCount2) {
                int pointerId5 = motionEvent.getPointerId(i2);
                if (p(pointerId5)) {
                    float x3 = motionEvent.getX(i2);
                    float y3 = motionEvent.getY(i2);
                    float f = x3 - this.d[pointerId5];
                    float f2 = y3 - this.e[pointerId5];
                    t(f, f2, pointerId5);
                    if (this.a != 1) {
                        View viewM3 = m((int) x3, (int) y3);
                        if (e(viewM3, f, f2) && A(viewM3, pointerId5)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i2++;
            }
            v(motionEvent);
            return;
        }
        if (p(this.c)) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.c);
            float x4 = motionEvent.getX(iFindPointerIndex);
            float y4 = motionEvent.getY(iFindPointerIndex);
            float[] fArr = this.f;
            int i7 = this.c;
            int i8 = (int) (x4 - fArr[i7]);
            int i9 = (int) (y4 - this.g[i7]);
            int left = this.s.getLeft() + i8;
            int top = this.s.getTop() + i9;
            int left2 = this.s.getLeft();
            int top2 = this.s.getTop();
            if (i8 != 0) {
                left = this.r.a(this.s, left, i8);
                ha.l(this.s, left - left2);
            }
            int i10 = left;
            if (i9 != 0) {
                top = this.r.b(this.s, top, i9);
                ha.m(this.s, top - top2);
            }
            int i11 = top;
            if (i8 != 0 || i9 != 0) {
                this.r.j(this.s, i10, i11, i10 - left2, i11 - top2);
            }
            v(motionEvent);
        }
    }

    public final void s() {
        this.l.computeCurrentVelocity(1000, this.m);
        l(f(this.l.getXVelocity(this.c), this.n, this.m), f(this.l.getYVelocity(this.c), this.n, this.m));
    }

    public final void t(float f, float f2, int i) {
        int i2 = d(f, f2, i, 1) ? 1 : 0;
        if (d(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (d(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (d(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.e(i2, i);
        }
    }

    public final void u(float f, float f2, int i) {
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

    public final void v(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (p(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    public void w(int i) {
        this.u.removeCallbacks(this.v);
        if (this.a != i) {
            this.a = i;
            this.r.i(i);
            if (this.a == 0) {
                this.s = null;
            }
        }
    }

    public boolean x(int i, int i2) {
        if (this.t) {
            return n(i, i2, (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean y(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jb.y(android.view.MotionEvent):boolean");
    }

    public boolean z(View view, int i, int i2) {
        this.s = view;
        this.c = -1;
        boolean zN = n(i, i2, 0, 0);
        if (!zN && this.a == 0 && this.s != null) {
            this.s = null;
        }
        return zN;
    }
}
