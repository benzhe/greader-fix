package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public class StaticDrawer extends MenuDrawer {
    public StaticDrawer(Context context) {
        super(context);
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void b(boolean z) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void d(Canvas canvas) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void e(Context context, AttributeSet attributeSet, int i) {
        super.e(context, attributeSet, i);
        super.addView(this.r, -1, new ViewGroup.LayoutParams(-1, -1));
        super.addView(this.s, -1, new ViewGroup.LayoutParams(-1, -1));
        this.T = true;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public boolean f() {
        return true;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public boolean getOffsetMenuEnabled() {
        return false;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public int getTouchBezelSize() {
        return 0;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public int getTouchMode() {
        return 0;
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void h(int i) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void i(boolean z) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void l(boolean z) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            this.r.layout(0, 0, this.t, i6);
            this.s.layout(this.t, 0, i5, i6);
            return;
        }
        if (iOrdinal == 1) {
            this.r.layout(0, 0, i5, this.t);
            this.s.layout(0, this.t, i5, i6);
        } else if (iOrdinal == 2) {
            this.r.layout(i5 - this.t, 0, i5, i6);
            this.s.layout(0, 0, i5 - this.t, i6);
        } else {
            if (iOrdinal != 3) {
                return;
            }
            this.r.layout(0, i6 - this.t, i5, i6);
            this.s.layout(0, 0, i5, i6 - this.t);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            r4 = this;
            int r0 = android.view.View.MeasureSpec.getMode(r5)
            int r1 = android.view.View.MeasureSpec.getMode(r6)
            if (r0 == 0) goto L63
            if (r1 == 0) goto L63
            int r5 = android.view.View.MeasureSpec.getSize(r5)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            ns7 r0 = r4.getPosition()
            int r0 = r0.ordinal()
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == 0) goto L45
            r2 = 1
            if (r0 == r2) goto L2a
            r2 = 2
            if (r0 == r2) goto L45
            r2 = 3
            if (r0 == r2) goto L2a
            goto L5f
        L2a:
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r1)
            int r2 = r4.t
            int r3 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            int r2 = r6 - r2
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            net.simonvt.menudrawer.BuildLayerFrameLayout r2 = r4.s
            r2.measure(r0, r1)
            net.simonvt.menudrawer.BuildLayerFrameLayout r1 = r4.r
            r1.measure(r0, r3)
            goto L5f
        L45:
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r1)
            int r2 = r4.t
            int r3 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            int r2 = r5 - r2
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            net.simonvt.menudrawer.BuildLayerFrameLayout r2 = r4.s
            r2.measure(r1, r0)
            net.simonvt.menudrawer.BuildLayerFrameLayout r1 = r4.r
            r1.measure(r3, r0)
        L5f:
            r4.setMeasuredDimension(r5, r6)
            return
        L63:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Must measure with an exact size"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.simonvt.menudrawer.StaticDrawer.onMeasure(int, int):void");
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setDrawerIndicatorEnabled(boolean z) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setHardwareLayerEnabled(boolean z) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setMenuSize(int i) {
        this.t = i;
        requestLayout();
        invalidate();
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setOffsetMenuEnabled(boolean z) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setSlideDrawable(int i) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setSlideDrawable(Drawable drawable) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setTouchBezelSize(int i) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setTouchMode(int i) {
    }

    @Override // net.simonvt.menudrawer.MenuDrawer
    public void setupUpIndicator(Activity activity) {
    }

    public StaticDrawer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StaticDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
