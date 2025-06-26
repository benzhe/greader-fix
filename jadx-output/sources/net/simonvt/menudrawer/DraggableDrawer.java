package net.simonvt.menudrawer;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import defpackage.ms7;
import defpackage.n56;
import defpackage.os7;

/* loaded from: classes2.dex */
public abstract class DraggableDrawer extends MenuDrawer {
    public static final Interpolator u0 = new ms7();
    public int d0;
    public final Runnable e0;
    public final Runnable f0;
    public boolean g0;
    public int h0;
    public float i0;
    public float j0;
    public float k0;
    public float l0;
    public os7 m0;
    public VelocityTracker n0;
    public int o0;
    public boolean p0;
    public int q0;
    public boolean r0;
    public os7 s0;
    public boolean t0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DraggableDrawer draggableDrawer = DraggableDrawer.this;
            Interpolator interpolator = DraggableDrawer.u0;
            draggableDrawer.y();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DraggableDrawer draggableDrawer = DraggableDrawer.this;
            Interpolator interpolator = DraggableDrawer.u0;
            draggableDrawer.z();
        }
    }

    public DraggableDrawer(Context context) {
        super(context);
        this.e0 = new a();
        this.f0 = new b();
        this.h0 = -1;
        this.k0 = -1.0f;
        this.l0 = -1.0f;
        this.p0 = true;
    }

    public void A() {
        if (!this.A || this.t0) {
            return;
        }
        this.t0 = true;
        this.s.setLayerType(2, null);
        this.r.setLayerType(2, null);
    }

    public void B() {
        removeCallbacks(this.f0);
        this.s0.a();
        C();
    }

    public void C() {
        if (this.t0) {
            this.t0 = false;
            this.s.setLayerType(0, null);
            this.r.setLayerType(0, null);
        }
    }

    public final int D(View view) {
        return (int) view.getTranslationX();
    }

    public final int E(View view) {
        return (int) view.getTranslationY();
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void e(Context context, AttributeSet attributeSet, int i) {
        super.e(context, attributeSet, i);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.d0 = viewConfiguration.getScaledTouchSlop();
        this.o0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.s0 = new os7(context, MenuDrawer.b0);
        this.m0 = new os7(context, u0);
        this.q0 = c(3);
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public boolean f() {
        return this.u;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public boolean getOffsetMenuEnabled() {
        return this.p0;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public int getTouchBezelSize() {
        return this.w;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public int getTouchMode() {
        return this.z;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void j(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        this.G = bundle;
        boolean z = bundle.getBoolean("net.simonvt.menudrawer.MenuDrawer.menuVisible");
        if (z) {
            i(false);
        } else {
            setOffsetPixels(0.0f);
        }
        this.v = z ? 8 : 0;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void k(Bundle bundle) {
        int i = this.v;
        bundle.putBoolean("net.simonvt.menudrawer.MenuDrawer.menuVisible", i == 8 || i == 4);
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void l(boolean z) {
        int i = this.v;
        if (i == 8 || i == 4) {
            b(z);
        } else if (i == 0 || i == 1) {
            i(z);
        }
    }

    public void o(int i, int i2) {
        int i3 = (int) this.V;
        int i4 = i - i3;
        if (i4 > 0) {
            setDrawerState(4);
            this.s0.c(i3, 0, i4, 0, i2);
        } else {
            setDrawerState(1);
            this.s0.c(i3, 0, i4, 0, i2);
        }
        A();
        z();
    }

    public void p(int i, int i2, boolean z) {
        t();
        u();
        int i3 = i - ((int) this.V);
        if (i3 != 0 && z) {
            int iAbs = Math.abs(i2);
            o(i, Math.min(iAbs > 0 ? Math.round(Math.abs(i3 / iAbs) * 1000.0f) * 4 : (int) (Math.abs(i3 / this.t) * 600.0f), this.H));
        } else {
            setOffsetPixels(i);
            setDrawerState(i == 0 ? 0 : 8);
            C();
        }
    }

    public boolean q(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int iD = D(childAt) + childAt.getLeft();
                int iD2 = D(childAt) + childAt.getRight();
                int iE = E(childAt) + childAt.getTop();
                int iE2 = E(childAt) + childAt.getBottom();
                if (i2 >= iD && i2 < iD2 && i3 >= iE && i3 < iE2 && q(childAt, true, i, i2 - iD, i3 - iE)) {
                    return true;
                }
            }
        }
        return z && this.I.a(view, i, i2, i3);
    }

    public boolean r(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int iD = D(childAt) + childAt.getLeft();
                int iD2 = D(childAt) + childAt.getRight();
                int iE = E(childAt) + childAt.getTop();
                int iE2 = E(childAt) + childAt.getBottom();
                if (i2 >= iD && i2 < iD2 && i3 >= iE && i3 < iE2 && r(childAt, true, i, i2 - iD, i3 - iE)) {
                    return true;
                }
            }
        }
        return z && this.I.a(view, i, i2, i3);
    }

    public boolean s(int i, int i2, int i3, int i4) {
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    if (iOrdinal != 3) {
                        return false;
                    }
                }
            }
            if (this.u) {
                BuildLayerFrameLayout buildLayerFrameLayout = this.r;
                return r(buildLayerFrameLayout, false, i2, i3 - n56.O0(buildLayerFrameLayout), i4 - n56.Y0(this.s));
            }
            BuildLayerFrameLayout buildLayerFrameLayout2 = this.s;
            return r(buildLayerFrameLayout2, false, i2, i3 - n56.O0(buildLayerFrameLayout2), i4 - n56.Y0(this.s));
        }
        if (this.u) {
            BuildLayerFrameLayout buildLayerFrameLayout3 = this.r;
            return q(buildLayerFrameLayout3, false, i, i3 - n56.O0(buildLayerFrameLayout3), i4 - n56.Y0(this.s));
        }
        BuildLayerFrameLayout buildLayerFrameLayout4 = this.s;
        return q(buildLayerFrameLayout4, false, i, i3 - n56.O0(buildLayerFrameLayout4), i4 - n56.Y0(this.s));
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setHardwareLayerEnabled(boolean z) {
        if (z != this.A) {
            this.A = z;
            this.r.f = z;
            this.s.f = z;
            C();
        }
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setMenuSize(int i) {
        this.t = i;
        int i2 = this.v;
        if (i2 == 8 || i2 == 4) {
            setOffsetPixels(i);
        }
        requestLayout();
        invalidate();
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setOffsetMenuEnabled(boolean z) {
        if (z != this.p0) {
            this.p0 = z;
            requestLayout();
            invalidate();
        }
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setTouchBezelSize(int i) {
        this.w = i;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setTouchMode(int i) {
        if (this.z != i) {
            this.z = i;
            n();
        }
    }

    public void t() {
        this.g0 = false;
        VelocityTracker velocityTracker = this.n0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.n0 = null;
        }
    }

    public void u() {
        removeCallbacks(null);
        removeCallbacks(this.e0);
        C();
        this.r0 = false;
    }

    public float v(VelocityTracker velocityTracker) {
        return velocityTracker.getXVelocity(this.h0);
    }

    public float w(VelocityTracker velocityTracker) {
        return velocityTracker.getYVelocity(this.h0);
    }

    public boolean x() {
        return Math.abs(this.V) <= ((float) this.q0);
    }

    public final void y() {
        if (this.m0.b()) {
            int i = (int) this.V;
            int i2 = this.m0.e;
            if (i2 != i) {
                setOffsetPixels(i2);
            }
            if (!this.m0.l) {
                postOnAnimation(this.e0);
                return;
            }
        }
        this.m0.a();
        setOffsetPixels(0.0f);
        setDrawerState(0);
        C();
        this.r0 = false;
    }

    public final void z() {
        if (this.s0.b()) {
            int i = (int) this.V;
            int i2 = this.s0.e;
            if (i2 != i) {
                setOffsetPixels(i2);
            }
            if (i2 != this.s0.c) {
                postOnAnimation(this.f0);
                return;
            }
        }
        this.s0.a();
        int i3 = this.s0.c;
        setOffsetPixels(i3);
        setDrawerState(i3 == 0 ? 0 : 8);
        C();
    }

    public DraggableDrawer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e0 = new a();
        this.f0 = new b();
        this.h0 = -1;
        this.k0 = -1.0f;
        this.l0 = -1.0f;
        this.p0 = true;
    }

    public DraggableDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e0 = new a();
        this.f0 = new b();
        this.h0 = -1;
        this.k0 = -1.0f;
        this.l0 = -1.0f;
        this.p0 = true;
    }
}
