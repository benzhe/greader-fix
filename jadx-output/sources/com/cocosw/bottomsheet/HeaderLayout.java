package com.cocosw.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class HeaderLayout extends FrameLayout {
    public int e;

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 1;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.e;
        if (i3 != 1) {
            i = View.MeasureSpec.makeMeasureSpec(i3, View.MeasureSpec.getMode(i));
        }
        super.onMeasure(i, i2);
    }

    public HeaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = 1;
    }
}
