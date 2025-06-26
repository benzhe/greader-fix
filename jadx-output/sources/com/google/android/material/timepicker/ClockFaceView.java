package com.google.android.material.timepicker;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.timepicker.ClockHandView;
import defpackage.c50;
import defpackage.ha;
import defpackage.p0;
import defpackage.sa;
import defpackage.v9;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ClockFaceView extends RadialViewGroup implements ClockHandView.c {
    public final RectF A;
    public final SparseArray<TextView> B;
    public final v9 C;
    public final int[] D;
    public final float[] E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public String[] J;
    public float K;
    public final ColorStateList L;
    public final ClockHandView y;
    public final Rect z;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            int height = ClockFaceView.this.getHeight() / 2;
            ClockFaceView clockFaceView = ClockFaceView.this;
            int i = (height - clockFaceView.y.k) - clockFaceView.F;
            if (i != clockFaceView.w) {
                clockFaceView.w = i;
                clockFaceView.r();
                ClockHandView clockHandView = clockFaceView.y;
                clockHandView.s = clockFaceView.w;
                clockHandView.invalidate();
            }
            return true;
        }
    }

    public class b extends v9 {
        public b() {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            int iIntValue = ((Integer) view.getTag(R$id.material_value_index)).intValue();
            if (iIntValue > 0) {
                TextView textView = ClockFaceView.this.B.get(iIntValue - 1);
                if (Build.VERSION.SDK_INT >= 22) {
                    saVar.a.setTraversalAfter(textView);
                }
            }
            saVar.t(sa.c.a(0, 1, iIntValue, 1, false, view.isSelected()));
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.c
    public void a(float f, boolean z) {
        if (Math.abs(this.K - f) > 0.001f) {
            this.K = f;
            s();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) sa.b.a(1, this.J.length, false, 1).a);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        s();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.I / Math.max(Math.max(this.G / displayMetrics.heightPixels, this.H / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    public final void s() {
        RectF rectF = this.y.n;
        for (int i = 0; i < this.B.size(); i++) {
            TextView textView = this.B.get(i);
            if (textView != null) {
                textView.getDrawingRect(this.z);
                this.z.offset(textView.getPaddingLeft(), textView.getPaddingTop());
                offsetDescendantRectToMyCoords(textView, this.z);
                this.A.set(this.z);
                textView.getPaint().setShader(!RectF.intersects(rectF, this.A) ? null : new RadialGradient(rectF.centerX() - this.A.left, rectF.centerY() - this.A.top, 0.5f * rectF.width(), this.D, this.E, Shader.TileMode.CLAMP));
                textView.invalidate();
            }
        }
    }

    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.z = new Rect();
        this.A = new RectF();
        SparseArray<TextView> sparseArray = new SparseArray<>();
        this.B = sparseArray;
        this.E = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockFaceView, i, R$style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListA0 = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockNumberTextColor);
        this.L = colorStateListA0;
        LayoutInflater.from(context).inflate(R$layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R$id.material_clock_hand);
        this.y = clockHandView;
        this.F = resources.getDimensionPixelSize(R$dimen.material_clock_hand_padding);
        int colorForState = colorStateListA0.getColorForState(new int[]{R.attr.state_selected}, colorStateListA0.getDefaultColor());
        this.D = new int[]{colorForState, colorForState, colorStateListA0.getDefaultColor()};
        clockHandView.j.add(this);
        int defaultColor = p0.a(context, R$color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA02 = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA02 != null ? colorStateListA02.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.C = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.J = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        for (int i2 = 0; i2 < Math.max(this.J.length, size); i2++) {
            TextView textView = this.B.get(i2);
            if (i2 >= this.J.length) {
                removeView(textView);
                this.B.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R$layout.material_clockface_textview, (ViewGroup) this, false);
                    this.B.put(i2, textView);
                    addView(textView);
                }
                textView.setVisibility(0);
                textView.setText(this.J[i2]);
                textView.setTag(R$id.material_value_index, Integer.valueOf(i2));
                ha.s(textView, this.C);
                textView.setTextColor(this.L);
            }
        }
        this.G = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_height);
        this.H = resources.getDimensionPixelSize(R$dimen.material_time_picker_minimum_screen_width);
        this.I = resources.getDimensionPixelSize(R$dimen.material_clock_size);
    }
}
