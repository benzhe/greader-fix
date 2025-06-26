package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import defpackage.j6;

/* loaded from: classes.dex */
public abstract class VirtualLayout extends ConstraintHelper {
    public boolean l;
    public boolean m;

    public VirtualLayout(Context context) {
        super(context);
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
                    this.l = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.m = true;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.l || this.m) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.f; i++) {
                View viewE = constraintLayout.e(this.e[i]);
                if (viewE != null) {
                    if (this.l) {
                        viewE.setVisibility(visibility);
                    }
                    if (this.m && elevation > 0.0f) {
                        viewE.setTranslationZ(viewE.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    public void s(j6 j6Var, int i, int i2) {
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        g();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        g();
    }

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
