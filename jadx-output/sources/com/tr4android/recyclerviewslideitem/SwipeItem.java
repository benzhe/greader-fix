package com.tr4android.recyclerviewslideitem;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import defpackage.er6;
import defpackage.ha;
import defpackage.jb;
import defpackage.s27;
import defpackage.t27;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class SwipeItem extends ViewGroup {
    public final jb e;
    public d f;
    public int g;
    public View h;
    public View i;
    public ImageView j;
    public ImageView k;
    public s27 l;
    public boolean m;
    public int n;
    public int o;

    public class b extends jb.c {
        public b(a aVar) {
        }

        @Override // jb.c
        public int a(View view, int i, int i2) {
            int left;
            int iRound;
            SwipeItem swipeItem = SwipeItem.this;
            swipeItem.o = i;
            if (i > 0) {
                s27 s27Var = swipeItem.l;
                float interpolation = s27Var.g;
                Interpolator interpolator = s27Var.i;
                if (interpolator != null) {
                    interpolation = interpolator.getInterpolation(interpolation);
                }
                left = view.getLeft();
                iRound = Math.round(interpolation * i2);
            } else {
                s27 s27Var2 = swipeItem.l;
                float interpolation2 = s27Var2.h;
                Interpolator interpolator2 = s27Var2.j;
                if (interpolator2 != null) {
                    interpolation2 = interpolator2.getInterpolation(interpolation2);
                }
                left = view.getLeft();
                iRound = Math.round(interpolation2 * i2);
            }
            return iRound + left;
        }

        @Override // jb.c
        public int c(View view) {
            return SwipeItem.this.g;
        }

        @Override // jb.c
        public void i(int i) {
            SwipeItem swipeItem;
            d dVar;
            SwipeItem swipeItem2;
            d dVar2;
            if (i == 0) {
                SwipeItem swipeItem3 = SwipeItem.this;
                if (swipeItem3.l.g != 1.0f && swipeItem3.o > swipeItem3.getLeftThreshold() && (dVar2 = (swipeItem2 = SwipeItem.this).f) != null && swipeItem2.l.e) {
                    t27.a aVar = (t27.a) dVar2;
                    ((er6) t27.this).r.b("EVENT_ITEM_LEFT_SWIPE_ACTION", Integer.valueOf(aVar.a.getAdapterPosition()));
                }
                SwipeItem swipeItem4 = SwipeItem.this;
                if (swipeItem4.l.h != 1.0f && swipeItem4.o < swipeItem4.getRightThreshold() && (dVar = (swipeItem = SwipeItem.this).f) != null && swipeItem.l.f) {
                    t27.a aVar2 = (t27.a) dVar;
                    ((er6) t27.this).r.b("EVENT_ITEM_RIGHT_SWIPE_ACTION", Integer.valueOf(aVar2.a.getAdapterPosition()));
                }
                SwipeItem.this.o = 0;
            }
        }

        @Override // jb.c
        public void j(View view, int i, int i2, int i3, int i4) {
            SwipeItem swipeItem = SwipeItem.this;
            int i5 = swipeItem.n;
            if (i == i5) {
                return;
            }
            if (i > 0) {
                if (i5 <= 0) {
                    swipeItem.setSwipeBackgroundColor(swipeItem.l.c);
                    swipeItem.setSwipeLeftImageResource(swipeItem.l.a);
                }
                float f = swipeItem.l.g;
                swipeItem.setSwipeLeftImageVisibility(f != 1.0f && i > swipeItem.c(f));
            } else if (i < 0) {
                if (i5 >= 0) {
                    swipeItem.setSwipeBackgroundColor(swipeItem.l.d);
                    swipeItem.setSwipeRightImageResource(swipeItem.l.b);
                }
                float f2 = swipeItem.l.h;
                swipeItem.setSwipeRightImageVisibility(f2 != 1.0f && i < swipeItem.c(-f2));
            }
            swipeItem.n = i;
        }

        @Override // jb.c
        public void k(View view, float f, float f2) {
            SwipeItem.this.e.x(0, view.getTop());
            SwipeItem.this.invalidate();
        }

        @Override // jb.c
        public boolean l(View view, int i) {
            return view == SwipeItem.this.h;
        }
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface d {
    }

    public SwipeItem(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftThreshold() {
        return c(this.l.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightThreshold() {
        return c(-this.l.h);
    }

    public final int c(float f) {
        return Math.round(this.g * f * 0.5f);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public void computeScroll() {
        jb jbVar = this.e;
        if (jbVar == null || !jbVar.j(true)) {
            return;
        }
        AtomicInteger atomicInteger = ha.a;
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public s27 getConfiguration() {
        return this.l;
    }

    public View getContentView() {
        return getChildAt(1);
    }

    public d getSwipeListener() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.m = true;
        this.n = 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.m = true;
        this.n = 0;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.e.y(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        if (this.m) {
            this.g = getMeasuredWidth();
            this.m = false;
        }
        View view = this.h;
        view.layout(paddingLeft, paddingTop, paddingRight, view.getMeasuredHeight() + paddingTop);
        if (this.i.getVisibility() != 8) {
            this.i.layout(paddingLeft, paddingTop, paddingRight, this.h.getMeasuredHeight() + paddingTop);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        this.i = getChildAt(0);
        this.h = getChildAt(1);
        if (this.j == null) {
            this.j = (ImageView) findViewById(R$id.imageViewLeft);
        }
        if (this.k == null) {
            this.k = (ImageView) findViewById(R$id.imageViewRight);
        }
        measureChildWithMargins(this.i, i, 0, i2, 0);
        measureChildWithMargins(this.h, i, 0, i2, 0);
        setMeasuredDimension(View.MeasureSpec.getSize(i), this.h.getMeasuredHeight());
        this.i.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        this.h.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 != i4) {
            this.m = true;
            this.n = 0;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        this.e.r(motionEvent);
        if (Math.abs(this.h.getLeft()) > 0) {
            ViewParent parent2 = getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
        } else if ((motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) && (parent = getParent()) != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return true;
    }

    public void setSwipeBackgroundColor(int i) {
        setBackgroundColor(i);
    }

    public void setSwipeConfiguration(s27 s27Var) {
        this.l = s27Var;
    }

    public void setSwipeLeftImageResource(int i) {
        this.j.setImageResource(i);
    }

    public void setSwipeLeftImageVisibility(boolean z) {
        this.j.setVisibility(z ? 0 : 4);
    }

    public void setSwipeListener(d dVar) {
        this.f = dVar;
    }

    public void setSwipeRightImageResource(int i) {
        this.k.setImageResource(i);
    }

    public void setSwipeRightImageVisibility(boolean z) {
        this.k.setVisibility(z ? 0 : 4);
    }

    public SwipeItem(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public SwipeItem(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = true;
        this.n = 0;
        this.o = 0;
        ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.e = new jb(getContext(), this, new b(null));
    }
}
