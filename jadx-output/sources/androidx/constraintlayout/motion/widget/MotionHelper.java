package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;

/* loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionLayout.h {
    public boolean l;
    public boolean m;
    public float n;
    public View[] o;

    public MotionHelper(Context context) {
        super(context);
        this.l = false;
        this.m = false;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
    public void a(MotionLayout motionLayout, int i, int i2, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
    public void b(MotionLayout motionLayout, int i, int i2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
    public void c(MotionLayout motionLayout, int i, boolean z, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.h
    public void d(MotionLayout motionLayout, int i) {
    }

    public float getProgress() {
        return this.n;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void k(AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super.k(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionHelper);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R$styleable.MotionHelper_onShow) {
                    this.l = typedArrayObtainStyledAttributes.getBoolean(index, this.l);
                } else if (index == R$styleable.MotionHelper_onHide) {
                    this.m = typedArrayObtainStyledAttributes.getBoolean(index, this.m);
                }
            }
        }
    }

    public void setProgress(float f) {
        this.n = f;
        int i = 0;
        if (this.f > 0) {
            this.o = j((ConstraintLayout) getParent());
            while (i < this.f) {
                setProgress(this.o[i], f);
                i++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i < childCount) {
            View childAt = viewGroup.getChildAt(i);
            if (!(childAt instanceof MotionHelper)) {
                setProgress(childAt, f);
            }
            i++;
        }
    }

    public void setProgress(View view, float f) {
    }

    public MotionHelper(Context context, AttributeSet attributeSet) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet);
        this.l = false;
        this.m = false;
        k(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        this.l = false;
        this.m = false;
        k(attributeSet);
    }
}
