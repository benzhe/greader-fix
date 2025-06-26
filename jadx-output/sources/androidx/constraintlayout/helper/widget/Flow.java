package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import defpackage.a7;
import defpackage.c6;
import defpackage.e6;
import defpackage.h6;
import defpackage.j6;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public e6 n;

    public Flow(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.k(attributeSet);
        this.n = new e6();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ConstraintLayout_Layout_android_orientation) {
                    this.n.h1 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_padding) {
                    e6 e6Var = this.n;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    e6Var.E0 = dimensionPixelSize;
                    e6Var.F0 = dimensionPixelSize;
                    e6Var.G0 = dimensionPixelSize;
                    e6Var.H0 = dimensionPixelSize;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingStart) {
                    e6 e6Var2 = this.n;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    e6Var2.G0 = dimensionPixelSize2;
                    e6Var2.I0 = dimensionPixelSize2;
                    e6Var2.J0 = dimensionPixelSize2;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.n.H0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.n.I0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.n.E0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.n.J0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.n.F0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.n.f1 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.n.P0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.n.Q0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.n.R0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.n.T0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.n.S0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.n.U0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.n.V0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.n.X0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.n.Z0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.n.Y0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.n.a1 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.n.W0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.n.d1 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.n.e1 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.n.b1 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.n.c1 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R$styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.n.g1 = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
            }
        }
        this.h = this.n;
        r();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void l(a7.a aVar, h6 h6Var, ConstraintLayout.a aVar2, SparseArray<c6> sparseArray) {
        super.l(aVar, h6Var, aVar2, sparseArray);
        if (h6Var instanceof e6) {
            e6 e6Var = (e6) h6Var;
            int i = aVar2.R;
            if (i != -1) {
                e6Var.h1 = i;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void m(c6 c6Var, boolean z) {
        e6 e6Var = this.n;
        int i = e6Var.G0;
        if (i > 0 || e6Var.H0 > 0) {
            if (z) {
                e6Var.I0 = e6Var.H0;
                e6Var.J0 = i;
            } else {
                e6Var.I0 = i;
                e6Var.J0 = e6Var.H0;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onMeasure(int i, int i2) {
        s(this.n, i, i2);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public void s(j6 j6Var, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (j6Var == null) {
            setMeasuredDimension(0, 0);
        } else {
            j6Var.L(mode, size, mode2, size2);
            setMeasuredDimension(j6Var.L0, j6Var.M0);
        }
    }

    public void setFirstHorizontalBias(float f) {
        this.n.X0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.n.R0 = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.n.Y0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.n.S0 = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.n.d1 = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.n.V0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.n.b1 = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.n.P0 = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.n.g1 = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.n.h1 = i;
        requestLayout();
    }

    public void setPadding(int i) {
        e6 e6Var = this.n;
        e6Var.E0 = i;
        e6Var.F0 = i;
        e6Var.G0 = i;
        e6Var.H0 = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.n.F0 = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.n.I0 = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.n.J0 = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.n.E0 = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.n.e1 = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.n.W0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.n.c1 = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.n.Q0 = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.n.f1 = i;
        requestLayout();
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
