package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import com.google.firebase.inappmessaging.display.R$styleable;
import defpackage.c50;
import defpackage.jo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseModalLayout extends FrameLayout {
    public float e;
    public float f;
    public DisplayMetrics g;
    public List<View> h;

    public BaseModalLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.ModalLayout, 0, 0);
        try {
            this.e = typedArrayObtainStyledAttributes.getFloat(R$styleable.ModalLayout_maxWidthPct, -1.0f);
            this.f = typedArrayObtainStyledAttributes.getFloat(R$styleable.ModalLayout_maxHeightPct, -1.0f);
            typedArrayObtainStyledAttributes.recycle();
            this.g = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public int a(int i) {
        if (getMaxHeightPct() <= 0.0f) {
            c50.s0("Height: restrict by spec");
            return View.MeasureSpec.getSize(i);
        }
        c50.s0("Height: restrict by pct");
        return h((int) (getMaxHeightPct() * getDisplayMetrics().heightPixels), 4);
    }

    public int b(int i) {
        if (getMaxWidthPct() <= 0.0f) {
            c50.s0("Width: restrict by spec");
            return View.MeasureSpec.getSize(i);
        }
        c50.s0("Width: restrict by pct");
        return h((int) (getMaxWidthPct() * getDisplayMetrics().widthPixels), 4);
    }

    public int c(int i) {
        return (int) Math.floor(TypedValue.applyDimension(1, i, this.g));
    }

    public View d(int i) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalStateException(jo.g("No such child: ", i));
    }

    public int e(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return view.getMeasuredHeight();
    }

    public int f(View view) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return view.getMeasuredWidth();
    }

    public void g(View view, int i, int i2, int i3, int i4) {
        c50.v0("\tleft, right", i, i3);
        c50.v0("\ttop, bottom", i2, i4);
        view.layout(i, i2, i3, i4);
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.g;
    }

    public float getMaxHeightPct() {
        return this.f;
    }

    public float getMaxWidthPct() {
        return this.e;
    }

    public List<View> getVisibleChildren() {
        return this.h;
    }

    public int h(int i, int i2) {
        return Math.round(i / i2) * i2;
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        c50.v0("\tdesired (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
        super.measureChildWithMargins(view, i, i2, i3, i4);
        c50.v0("\tactual  (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        c50.t0("BEGIN LAYOUT");
        c50.s0("onLayout: l: " + i + ", t: " + i2 + ", r: " + i3 + ", b: " + i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        c50.t0("BEGIN MEASURE");
        c50.v0("Display", getDisplayMetrics().widthPixels, getDisplayMetrics().heightPixels);
        this.h.clear();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                this.h.add(childAt);
            } else {
                c50.u0("Skipping GONE child", i3);
            }
        }
    }
}
