package com.cocosw.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.ha;
import defpackage.jb;
import defpackage.mo;
import defpackage.ro;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ClosableSlidingLayout extends FrameLayout {
    public final float e;
    public View f;
    public boolean g;
    public jb h;
    public b i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public float n;
    public boolean o;
    public float p;

    public interface b {
    }

    public class c extends jb.c {
        public c(a aVar) {
        }

        @Override // jb.c
        public int b(View view, int i, int i2) {
            return Math.max(i, ClosableSlidingLayout.this.k);
        }

        @Override // jb.c
        public void j(View view, int i, int i2, int i3, int i4) {
            ClosableSlidingLayout closableSlidingLayout = ClosableSlidingLayout.this;
            if (closableSlidingLayout.j - i2 >= 1 || closableSlidingLayout.i == null) {
                return;
            }
            closableSlidingLayout.h.b();
            ((mo) ClosableSlidingLayout.this.i).a.dismiss();
            ClosableSlidingLayout.this.h.z(view, 0, i2);
        }

        @Override // jb.c
        public void k(View view, float f, float f2) {
            ClosableSlidingLayout closableSlidingLayout = ClosableSlidingLayout.this;
            if (f2 > closableSlidingLayout.e) {
                closableSlidingLayout.a(view);
                return;
            }
            int top = view.getTop();
            ClosableSlidingLayout closableSlidingLayout2 = ClosableSlidingLayout.this;
            int i = closableSlidingLayout2.k;
            if (top >= (closableSlidingLayout2.j / 2) + i) {
                closableSlidingLayout2.a(view);
                return;
            }
            closableSlidingLayout2.h.z(view, 0, i);
            ClosableSlidingLayout closableSlidingLayout3 = ClosableSlidingLayout.this;
            AtomicInteger atomicInteger = ha.a;
            closableSlidingLayout3.postInvalidateOnAnimation();
        }

        @Override // jb.c
        public boolean l(View view, int i) {
            return true;
        }
    }

    public ClosableSlidingLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(View view) {
        this.h.z(view, 0, this.k + this.j);
        AtomicInteger atomicInteger = ha.a;
        postInvalidateOnAnimation();
    }

    public final void b() {
        b bVar = this.i;
        if (bVar != null) {
            ro.a(((mo) bVar).a);
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.h.j(true)) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !this.f.canScrollVertically(-1)) {
            if (actionMasked != 3 && actionMasked != 1) {
                if (actionMasked == 0) {
                    this.j = getChildAt(0).getHeight();
                    this.k = getChildAt(0).getTop();
                    int pointerId = motionEvent.getPointerId(0);
                    this.l = pointerId;
                    this.m = false;
                    int iFindPointerIndex = motionEvent.findPointerIndex(pointerId);
                    float y = iFindPointerIndex < 0 ? -1.0f : motionEvent.getY(iFindPointerIndex);
                    if (y == -1.0f) {
                        return false;
                    }
                    this.n = y;
                    this.p = 0.0f;
                } else if (actionMasked == 2) {
                    int i = this.l;
                    if (i == -1) {
                        return false;
                    }
                    int iFindPointerIndex2 = motionEvent.findPointerIndex(i);
                    float y2 = iFindPointerIndex2 < 0 ? -1.0f : motionEvent.getY(iFindPointerIndex2);
                    if (y2 == -1.0f) {
                        return false;
                    }
                    float f = y2 - this.n;
                    this.p = f;
                    if (this.g) {
                        jb jbVar = this.h;
                        if (f > jbVar.b && !this.m) {
                            this.m = true;
                            jbVar.c(getChildAt(0), 0);
                        }
                    }
                }
                this.h.y(motionEvent);
                return this.m;
            }
            this.l = -1;
            this.m = false;
            if (this.o && (-this.p) > this.h.b) {
                b();
            }
            this.h.b();
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || this.f.canScrollVertically(-1)) {
            return super.onTouchEvent(motionEvent);
        }
        try {
            if (!this.g) {
                return true;
            }
            this.h.r(motionEvent);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    public ClosableSlidingLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = true;
        this.o = false;
        this.h = jb.k(this, 0.8f, new c(null));
        this.e = getResources().getDisplayMetrics().density * 400.0f;
    }
}
