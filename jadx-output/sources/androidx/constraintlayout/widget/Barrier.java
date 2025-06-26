package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a7;
import defpackage.c6;
import defpackage.d6;
import defpackage.h6;
import defpackage.z5;

/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public int l;
    public int m;
    public z5 n;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public int getMargin() {
        return this.n.G0;
    }

    public int getType() {
        return this.l;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.k(attributeSet);
        this.n = new z5();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.n.F0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == R$styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.n.G0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
        }
        this.h = this.n;
        r();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void l(a7.a aVar, h6 h6Var, ConstraintLayout.a aVar2, SparseArray<c6> sparseArray) {
        super.l(aVar, h6Var, aVar2, sparseArray);
        if (h6Var instanceof z5) {
            z5 z5Var = (z5) h6Var;
            s(z5Var, aVar.d.b0, ((d6) h6Var.M).G0);
            a7.b bVar = aVar.d;
            z5Var.F0 = bVar.j0;
            z5Var.G0 = bVar.c0;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void m(c6 c6Var, boolean z) {
        s(c6Var, this.l, z);
    }

    public final void s(c6 c6Var, int i, boolean z) {
        this.m = i;
        if (z) {
            int i2 = this.l;
            if (i2 == 5) {
                this.m = 1;
            } else if (i2 == 6) {
                this.m = 0;
            }
        } else {
            int i3 = this.l;
            if (i3 == 5) {
                this.m = 0;
            } else if (i3 == 6) {
                this.m = 1;
            }
        }
        if (c6Var instanceof z5) {
            ((z5) c6Var).E0 = this.m;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.n.F0 = z;
    }

    public void setDpMargin(int i) {
        this.n.G0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.n.G0 = i;
    }

    public void setType(int i) {
        this.l = i;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }
}
