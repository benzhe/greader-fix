package net.simonvt.menudrawer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* loaded from: classes2.dex */
public class NoClickThroughFrameLayout extends BuildLayerFrameLayout {
    public NoClickThroughFrameLayout(Context context) {
        super(context);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public NoClickThroughFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NoClickThroughFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
