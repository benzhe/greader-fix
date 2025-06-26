package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import defpackage.c6;

/* loaded from: classes.dex */
public class Layer extends ConstraintHelper {
    public float A;
    public boolean B;
    public boolean C;
    public float l;
    public float m;
    public float n;
    public ConstraintLayout o;
    public float p;
    public float q;
    public float r;
    public float s;
    public float t;
    public float u;
    public float v;
    public float w;
    public boolean x;
    public View[] y;
    public float z;

    public Layer(Context context) {
        super(context);
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.p = 1.0f;
        this.q = 1.0f;
        this.r = Float.NaN;
        this.s = Float.NaN;
        this.t = Float.NaN;
        this.u = Float.NaN;
        this.v = Float.NaN;
        this.w = Float.NaN;
        this.x = true;
        this.y = null;
        this.z = 0.0f;
        this.A = 0.0f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.B = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.C = true;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void n(ConstraintLayout constraintLayout) {
        t();
        this.r = Float.NaN;
        this.s = Float.NaN;
        c6 c6Var = ((ConstraintLayout.a) getLayoutParams()).l0;
        c6Var.I(0);
        c6Var.D(0);
        s();
        layout(((int) this.v) - getPaddingLeft(), ((int) this.w) - getPaddingTop(), getPaddingRight() + ((int) this.t), getPaddingBottom() + ((int) this.u));
        if (Float.isNaN(this.n)) {
            return;
        }
        u();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.onAttachedToWindow();
        this.o = (ConstraintLayout) getParent();
        if (this.B || this.C) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.f; i++) {
                View viewE = this.o.e(this.e[i]);
                if (viewE != null) {
                    if (this.B) {
                        viewE.setVisibility(visibility);
                    }
                    if (this.C && elevation > 0.0f) {
                        viewE.setTranslationZ(viewE.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void p(ConstraintLayout constraintLayout) {
        this.o = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.n = rotation;
        } else {
            if (Float.isNaN(this.n)) {
                return;
            }
            this.n = rotation;
        }
    }

    public void s() {
        if (this.o == null) {
            return;
        }
        if (this.x || Float.isNaN(this.r) || Float.isNaN(this.s)) {
            if (!Float.isNaN(this.l) && !Float.isNaN(this.m)) {
                this.s = this.m;
                this.r = this.l;
                return;
            }
            View[] viewArrJ = j(this.o);
            int left = viewArrJ[0].getLeft();
            int top = viewArrJ[0].getTop();
            int right = viewArrJ[0].getRight();
            int bottom = viewArrJ[0].getBottom();
            for (int i = 0; i < this.f; i++) {
                View view = viewArrJ[i];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.t = right;
            this.u = bottom;
            this.v = left;
            this.w = top;
            if (Float.isNaN(this.l)) {
                this.r = (left + right) / 2;
            } else {
                this.r = this.l;
            }
            if (Float.isNaN(this.m)) {
                this.s = (top + bottom) / 2;
            } else {
                this.s = this.m;
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        g();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.l = f;
        u();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.m = f;
        u();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.n = f;
        u();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.p = f;
        u();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.q = f;
        u();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.z = f;
        u();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.A = f;
        u();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        g();
    }

    public final void t() {
        int i;
        if (this.o == null || (i = this.f) == 0) {
            return;
        }
        View[] viewArr = this.y;
        if (viewArr == null || viewArr.length != i) {
            this.y = new View[i];
        }
        for (int i2 = 0; i2 < this.f; i2++) {
            this.y[i2] = this.o.e(this.e[i2]);
        }
    }

    public final void u() {
        if (this.o == null) {
            return;
        }
        if (this.y == null) {
            t();
        }
        s();
        double radians = Math.toRadians(this.n);
        float fSin = (float) Math.sin(radians);
        float fCos = (float) Math.cos(radians);
        float f = this.p;
        float f2 = f * fCos;
        float f3 = this.q;
        float f4 = (-f3) * fSin;
        float f5 = f * fSin;
        float f6 = f3 * fCos;
        for (int i = 0; i < this.f; i++) {
            View view = this.y[i];
            int right = (view.getRight() + view.getLeft()) / 2;
            int bottom = (view.getBottom() + view.getTop()) / 2;
            float f7 = right - this.r;
            float f8 = bottom - this.s;
            float f9 = (((f4 * f8) + (f2 * f7)) - f7) + this.z;
            float f10 = (((f6 * f8) + (f7 * f5)) - f8) + this.A;
            view.setTranslationX(f9);
            view.setTranslationY(f10);
            view.setScaleY(this.q);
            view.setScaleX(this.p);
            view.setRotation(this.n);
        }
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.p = 1.0f;
        this.q = 1.0f;
        this.r = Float.NaN;
        this.s = Float.NaN;
        this.t = Float.NaN;
        this.u = Float.NaN;
        this.v = Float.NaN;
        this.w = Float.NaN;
        this.x = true;
        this.y = null;
        this.z = 0.0f;
        this.A = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = Float.NaN;
        this.p = 1.0f;
        this.q = 1.0f;
        this.r = Float.NaN;
        this.s = Float.NaN;
        this.t = Float.NaN;
        this.u = Float.NaN;
        this.v = Float.NaN;
        this.w = Float.NaN;
        this.x = true;
        this.y = null;
        this.z = 0.0f;
        this.A = 0.0f;
    }
}
