package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import defpackage.g95;
import defpackage.ha;
import defpackage.l95;
import defpackage.r95;
import defpackage.s95;
import defpackage.u95;
import defpackage.w95;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {
    public static final int r = R$style.Widget_MaterialComponents_LinearProgressIndicator;

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public g95 b(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.e).g;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.e).h;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        S s = this.e;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s;
        boolean z2 = true;
        if (((LinearProgressIndicatorSpec) s).h != 1) {
            AtomicInteger atomicInteger = ha.a;
            if ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) this.e).h != 2) && (getLayoutDirection() != 0 || ((LinearProgressIndicatorSpec) this.e).h != 3)) {
                z2 = false;
            }
        }
        linearProgressIndicatorSpec.i = z2;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingRight = i - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i2 - (getPaddingBottom() + getPaddingTop());
        r95<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        l95<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i) {
        if (((LinearProgressIndicatorSpec) this.e).g == i) {
            return;
        }
        if (c() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.e;
        linearProgressIndicatorSpec.g = i;
        linearProgressIndicatorSpec.a();
        if (i == 0) {
            r95<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
            u95 u95Var = new u95((LinearProgressIndicatorSpec) this.e);
            indeterminateDrawable.q = u95Var;
            u95Var.a = indeterminateDrawable;
        } else {
            r95<LinearProgressIndicatorSpec> indeterminateDrawable2 = getIndeterminateDrawable();
            w95 w95Var = new w95(getContext(), (LinearProgressIndicatorSpec) this.e);
            indeterminateDrawable2.q = w95Var;
            w95Var.a = indeterminateDrawable2;
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.e).a();
    }

    public void setIndicatorDirection(int i) {
        S s = this.e;
        ((LinearProgressIndicatorSpec) s).h = i;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) s;
        boolean z = true;
        if (i != 1) {
            AtomicInteger atomicInteger = ha.a;
            if ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) this.e).h != 2) && (getLayoutDirection() != 0 || i != 3)) {
                z = false;
            }
        }
        linearProgressIndicatorSpec.i = z;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i, boolean z) {
        S s = this.e;
        if (s != 0 && ((LinearProgressIndicatorSpec) s).g == 0 && isIndeterminate()) {
            return;
        }
        super.setProgressCompat(i, z);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((LinearProgressIndicatorSpec) this.e).a();
        invalidate();
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, r);
        Context context2 = getContext();
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.e;
        setIndeterminateDrawable(new r95(context2, linearProgressIndicatorSpec, new s95(linearProgressIndicatorSpec), linearProgressIndicatorSpec.g == 0 ? new u95(linearProgressIndicatorSpec) : new w95(context2, linearProgressIndicatorSpec)));
        Context context3 = getContext();
        LinearProgressIndicatorSpec linearProgressIndicatorSpec2 = (LinearProgressIndicatorSpec) this.e;
        setProgressDrawable(new l95(context3, linearProgressIndicatorSpec2, new s95(linearProgressIndicatorSpec2)));
    }
}
