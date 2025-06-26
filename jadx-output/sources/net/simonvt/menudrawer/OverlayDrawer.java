package net.simonvt.menudrawer;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import defpackage.n56;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public class OverlayDrawer extends DraggableDrawer {
    public int v0;
    public Runnable w0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OverlayDrawer overlayDrawer = OverlayDrawer.this;
            Objects.requireNonNull(overlayDrawer);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = overlayDrawer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                overlayDrawer.getChildAt(i).dispatchTouchEvent(motionEventObtain);
            }
            overlayDrawer.s.dispatchTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            int iOrdinal = OverlayDrawer.this.getPosition().ordinal();
            OverlayDrawer.this.o((iOrdinal == 2 || iOrdinal == 3) ? -OverlayDrawer.this.v0 : OverlayDrawer.this.v0, 250);
        }
    }

    public OverlayDrawer(Context context) {
        super(context);
        this.w0 = new a();
    }

    @Override // net.simonvt.menudrawer.DraggableDrawer
    public void A() {
        if (!this.A || this.t0) {
            return;
        }
        this.t0 = true;
        this.r.setLayerType(2, null);
    }

    @Override // net.simonvt.menudrawer.DraggableDrawer
    public void B() {
        super.B();
        removeCallbacks(this.w0);
    }

    @Override // net.simonvt.menudrawer.DraggableDrawer
    public void C() {
        if (this.t0) {
            this.t0 = false;
            this.r.setLayerType(0, null);
        }
    }

    public boolean F(float f, float f2) {
        int iOrdinal = getPosition().ordinal();
        return (iOrdinal == 1 || iOrdinal == 3) ? Math.abs(f2) > ((float) this.d0) && Math.abs(f2) > Math.abs(f) : Math.abs(f) > ((float) this.d0) && Math.abs(f) > Math.abs(f2);
    }

    public boolean G() {
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            boolean z = this.u;
            return (!z && this.i0 <= ((float) this.x)) || (z && this.i0 <= this.V);
        }
        if (iOrdinal == 1) {
            boolean z2 = this.u;
            return (!z2 && this.j0 <= ((float) this.x)) || (z2 && this.j0 <= this.V);
        }
        if (iOrdinal == 2) {
            int width = getWidth();
            int i = (int) this.i0;
            boolean z3 = this.u;
            return (!z3 && i >= width - this.x) || (z3 && ((float) i) >= ((float) width) + this.V);
        }
        if (iOrdinal != 3) {
            return false;
        }
        int height = getHeight();
        boolean z4 = this.u;
        return (!z4 && this.j0 >= ((float) (height - this.x))) || (z4 && this.j0 >= ((float) height) + this.V);
    }

    public boolean H(int i, float f, float f2) {
        if (this.u && this.z == 2) {
            return true;
        }
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            boolean z = this.u;
            if (!z && this.i0 <= this.x && f > 0.0f) {
                return true;
            }
            if (!z || i > this.V) {
                return Math.abs(this.V) <= ((float) this.v0) && this.u;
            }
            return true;
        }
        if (iOrdinal == 1) {
            boolean z2 = this.u;
            if (!z2 && this.j0 <= this.x && f2 > 0.0f) {
                return true;
            }
            if (!z2 || i > this.V) {
                return Math.abs(this.V) <= ((float) this.v0) && this.u;
            }
            return true;
        }
        if (iOrdinal == 2) {
            int width = getWidth();
            boolean z3 = this.u;
            if (!z3 && this.i0 >= width - this.x && f < 0.0f) {
                return true;
            }
            if (!z3 || i < width - this.V) {
                return Math.abs(this.V) <= ((float) this.v0) && this.u;
            }
            return true;
        }
        if (iOrdinal != 3) {
            return false;
        }
        int height = getHeight();
        boolean z4 = this.u;
        if (!z4 && this.j0 >= height - this.x && f2 < 0.0f) {
            return true;
        }
        if (!z4 || i < height - this.V) {
            return Math.abs(this.V) <= ((float) this.v0) && this.u;
        }
        return true;
    }

    public final void I(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.h0) {
            int i = actionIndex == 0 ? 1 : 0;
            this.k0 = motionEvent.getX(i);
            this.h0 = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.n0;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void b(boolean z) {
        p(0, 0, z);
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void d(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float f = this.V;
        int i = (int) f;
        float fAbs = Math.abs(f) / this.t;
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            this.e.setBounds(i, 0, width, height);
        } else if (iOrdinal == 1) {
            this.e.setBounds(0, i, width, height);
        } else if (iOrdinal == 2) {
            this.e.setBounds(0, 0, width + i, height);
        } else if (iOrdinal == 3) {
            this.e.setBounds(0, 0, width, height + i);
        }
        this.e.setAlpha((int) (fAbs * 185.0f));
        this.e.draw(canvas);
    }

    @Override // net.simonvt.menudrawer.DraggableDrawer, net.simonvt.menudrawer.MenuDrawer
    public void e(Context context, AttributeSet attributeSet, int i) {
        super.e(context, attributeSet, i);
        super.addView(this.s, -1, new ViewGroup.LayoutParams(-1, -1));
        this.s.setLayerType(0, null);
        this.s.f = false;
        super.addView(this.r, -1, new ViewGroup.LayoutParams(-1, -1));
        this.v0 = c(20);
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public GradientDrawable.Orientation getDropShadowOrientation() {
        int iOrdinal = getPosition().ordinal();
        return iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.BOTTOM_TOP : GradientDrawable.Orientation.RIGHT_LEFT : GradientDrawable.Orientation.TOP_BOTTOM;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void h(int i) {
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            this.r.setTranslationX(i - this.t);
        } else if (iOrdinal == 1) {
            this.r.setTranslationY(i - this.t);
        } else if (iOrdinal == 2) {
            this.r.setTranslationX(i + this.t);
        } else if (iOrdinal == 3) {
            this.r.setTranslationY(i + this.t);
        }
        invalidate();
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void i(boolean z) {
        int iOrdinal = getPosition().ordinal();
        p((iOrdinal == 0 || iOrdinal == 1) ? this.t : (iOrdinal == 2 || iOrdinal == 3) ? -this.t : 0, 0, z);
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void m() {
        int iAbs = (int) (this.j * (Math.abs(this.V) / this.t));
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            Rect rect = this.U;
            rect.top = 0;
            rect.bottom = getHeight();
            this.U.left = n56.U0(this.r);
            Rect rect2 = this.U;
            rect2.right = rect2.left + iAbs;
            return;
        }
        if (iOrdinal == 1) {
            Rect rect3 = this.U;
            rect3.left = 0;
            rect3.right = getWidth();
            this.U.top = n56.C0(this.r);
            Rect rect4 = this.U;
            rect4.bottom = rect4.top + iAbs;
            return;
        }
        if (iOrdinal == 2) {
            Rect rect5 = this.U;
            rect5.top = 0;
            rect5.bottom = getHeight();
            this.U.right = n56.O0(this.r);
            Rect rect6 = this.U;
            rect6.left = rect6.right - iAbs;
            return;
        }
        if (iOrdinal != 3) {
            return;
        }
        Rect rect7 = this.U;
        rect7.left = 0;
        rect7.right = getWidth();
        this.U.bottom = n56.Y0(this.r);
        Rect rect8 = this.U;
        rect8.top = rect8.bottom - iAbs;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int action = motionEvent.getAction() & Base64.BASELENGTH;
        if (action == 1 || action == 3) {
            removeCallbacks(this.w0);
            this.h0 = -1;
            this.g0 = false;
            VelocityTracker velocityTracker = this.n0;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.n0 = null;
            }
            if (Math.abs(this.V) > this.t / 2) {
                i(true);
            } else {
                b(true);
            }
            return false;
        }
        if (action == 0 && this.u && x()) {
            setOffsetPixels(0.0f);
            B();
            u();
            setDrawerState(0);
            this.g0 = false;
        }
        if (this.u) {
            int i = this.h0;
            if (i == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                iFindPointerIndex = 0;
            }
            int x = (int) motionEvent.getX(iFindPointerIndex);
            int y = (int) motionEvent.getY(iFindPointerIndex);
            int iOrdinal = getPosition().ordinal();
            if (iOrdinal == 0 ? n56.U0(this.r) < x : !(iOrdinal == 1 ? n56.C0(this.r) >= y : iOrdinal == 2 ? n56.O0(this.r) <= x : iOrdinal != 3 || n56.Y0(this.r) <= y)) {
                return true;
            }
        }
        if (!this.u && !this.g0 && this.z == 0) {
            return false;
        }
        if (action != 0 && this.g0) {
            return true;
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.i0 = x2;
            this.k0 = x2;
            float y2 = motionEvent.getY();
            this.j0 = y2;
            this.l0 = y2;
            boolean zG = G();
            this.h0 = motionEvent.getPointerId(0);
            if (zG) {
                setDrawerState(this.u ? 8 : 0);
                B();
                u();
                if (!this.u && this.i0 <= this.v0) {
                    postDelayed(this.w0, 160L);
                }
                this.g0 = false;
            }
        } else if (action == 2) {
            int i2 = this.h0;
            if (i2 != -1) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(i2);
                if (iFindPointerIndex2 == -1) {
                    this.g0 = false;
                    this.h0 = -1;
                    t();
                    p(0, 0, true);
                    return false;
                }
                float x3 = motionEvent.getX(iFindPointerIndex2);
                float f = x3 - this.k0;
                float y3 = motionEvent.getY(iFindPointerIndex2);
                float f2 = y3 - this.l0;
                if (Math.abs(f) >= this.d0 || Math.abs(f2) >= this.d0) {
                    removeCallbacks(this.w0);
                    u();
                }
                if (F(f, f2)) {
                    if (this.I != null && ((this.z == 2 || this.u) && s((int) f, (int) f2, (int) x3, (int) y3))) {
                        t();
                        requestDisallowInterceptTouchEvent(true);
                        return false;
                    }
                    if (H((int) x3, f, f2)) {
                        u();
                        B();
                        setDrawerState(2);
                        this.g0 = true;
                        this.k0 = x3;
                        this.l0 = y3;
                    }
                }
            }
        } else if (action == 6) {
            I(motionEvent);
            this.k0 = motionEvent.getX(motionEvent.findPointerIndex(this.h0));
            this.l0 = motionEvent.getY(motionEvent.findPointerIndex(this.h0));
        }
        if (this.n0 == null) {
            this.n0 = VelocityTracker.obtain();
        }
        this.n0.addMovement(motionEvent);
        return this.g0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.s.layout(0, 0, i5, i6);
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            this.r.layout(0, 0, this.t, i6);
            return;
        }
        if (iOrdinal == 1) {
            this.r.layout(0, 0, i5, this.t);
        } else if (iOrdinal == 2) {
            this.r.layout(i5 - this.t, 0, i5, i6);
        } else {
            if (iOrdinal != 3) {
                return;
            }
            this.r.layout(0, i6 - this.t, i5, i6);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int childMeasureSpec;
        int childMeasureSpec2;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0 || mode2 == 0) {
            throw new IllegalStateException("Must measure with an exact size");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.V == -1.0f) {
            i(false);
        }
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 1 || iOrdinal == 3) {
            int childMeasureSpec3 = ViewGroup.getChildMeasureSpec(i, 0, size);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, 0, this.t);
            childMeasureSpec2 = childMeasureSpec3;
        } else {
            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, 0, this.t);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(i, 0, size2);
        }
        this.r.measure(childMeasureSpec2, childMeasureSpec);
        this.s.measure(ViewGroup.getChildMeasureSpec(i, 0, size), ViewGroup.getChildMeasureSpec(i, 0, size2));
        setMeasuredDimension(size, size2);
        n();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        h((int) this.V);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0136  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.simonvt.menudrawer.OverlayDrawer.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        removeCallbacks(this.w0);
        if (this.r0) {
            u();
            o(0, 5000);
        }
    }

    public OverlayDrawer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w0 = new a();
    }

    public OverlayDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.w0 = new a();
    }
}
