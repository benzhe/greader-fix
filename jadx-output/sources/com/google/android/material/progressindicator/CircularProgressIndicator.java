package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import defpackage.g95;
import defpackage.h95;
import defpackage.k95;
import defpackage.l95;
import defpackage.r95;
import java.util.Objects;

/* loaded from: classes.dex */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {
    public static final int r = R$style.Widget_MaterialComponents_CircularProgressIndicator;

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public g95 b(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.e).i;
    }

    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.e).h;
    }

    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.e).g;
    }

    public void setIndicatorDirection(int i) {
        ((CircularProgressIndicatorSpec) this.e).i = i;
        invalidate();
    }

    public void setIndicatorInset(int i) {
        S s = this.e;
        if (((CircularProgressIndicatorSpec) s).h != i) {
            ((CircularProgressIndicatorSpec) s).h = i;
            invalidate();
        }
    }

    public void setIndicatorSize(int i) {
        int iMax = Math.max(i, getTrackThickness() * 2);
        S s = this.e;
        if (((CircularProgressIndicatorSpec) s).g != iMax) {
            ((CircularProgressIndicatorSpec) s).g = iMax;
            Objects.requireNonNull((CircularProgressIndicatorSpec) s);
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        Objects.requireNonNull((CircularProgressIndicatorSpec) this.e);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, r);
        Context context2 = getContext();
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.e;
        setIndeterminateDrawable(new r95(context2, circularProgressIndicatorSpec, new h95(circularProgressIndicatorSpec), new k95(circularProgressIndicatorSpec)));
        Context context3 = getContext();
        CircularProgressIndicatorSpec circularProgressIndicatorSpec2 = (CircularProgressIndicatorSpec) this.e;
        setProgressDrawable(new l95(context3, circularProgressIndicatorSpec2, new h95(circularProgressIndicatorSpec2)));
    }
}
