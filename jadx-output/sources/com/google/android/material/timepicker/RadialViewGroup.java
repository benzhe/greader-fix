package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import defpackage.a7;
import defpackage.ha;
import defpackage.la5;
import defpackage.na5;
import defpackage.pa5;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class RadialViewGroup extends ConstraintLayout {
    public final Runnable v;
    public int w;
    public la5 x;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RadialViewGroup.this.r();
        }
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            AtomicInteger atomicInteger = ha.a;
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.v);
            handler.post(this.v);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        r();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.v);
            handler.post(this.v);
        }
    }

    public void r() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            if ("skip".equals(getChildAt(i2).getTag())) {
                i++;
            }
        }
        a7 a7Var = new a7();
        a7Var.d(this);
        float f = 0.0f;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            int i4 = R$id.circle_center;
            if (id != i4 && !"skip".equals(childAt.getTag())) {
                int id2 = childAt.getId();
                int i5 = this.w;
                a7.b bVar = a7Var.g(id2).d;
                bVar.x = i4;
                bVar.y = i5;
                bVar.z = f;
                f = (360.0f / (childCount - i)) + f;
            }
        }
        a7Var.c(this, true);
        setConstraintSet(null);
        requestLayout();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.x.t(ColorStateList.valueOf(i));
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R$layout.material_radial_view_group, this);
        la5 la5Var = new la5();
        this.x = la5Var;
        na5 na5Var = new na5(0.5f);
        pa5 pa5Var = la5Var.e.a;
        Objects.requireNonNull(pa5Var);
        pa5.b bVar = new pa5.b(pa5Var);
        bVar.e = na5Var;
        bVar.f = na5Var;
        bVar.g = na5Var;
        bVar.h = na5Var;
        la5Var.e.a = bVar.a();
        la5Var.invalidateSelf();
        this.x.t(ColorStateList.valueOf(-1));
        la5 la5Var2 = this.x;
        AtomicInteger atomicInteger = ha.a;
        setBackground(la5Var2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RadialViewGroup, i, 0);
        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.RadialViewGroup_materialCircleRadius, 0);
        this.v = new a();
        typedArrayObtainStyledAttributes.recycle();
    }
}
