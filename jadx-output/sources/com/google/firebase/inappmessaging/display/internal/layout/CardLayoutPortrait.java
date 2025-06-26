package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.firebase.inappmessaging.display.R$id;
import defpackage.c50;

/* loaded from: classes.dex */
public class CardLayoutPortrait extends BaseModalLayout {
    public View i;
    public View j;
    public View k;
    public View l;

    public CardLayoutPortrait(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int size = getVisibleChildren().size();
        int measuredHeight = 0;
        for (int i5 = 0; i5 < size; i5++) {
            View view = getVisibleChildren().get(i5);
            int measuredHeight2 = view.getMeasuredHeight() + measuredHeight;
            int measuredWidth = view.getMeasuredWidth() + 0;
            c50.s0("Layout child " + i5);
            c50.v0("\t(top, bottom)", (float) measuredHeight, (float) measuredHeight2);
            c50.v0("\t(left, right)", (float) 0, (float) measuredWidth);
            view.layout(0, measuredHeight, measuredWidth, measuredHeight2);
            c50.v0("Child " + i5 + " wants to be ", view.getMeasuredWidth(), view.getMeasuredHeight());
            measuredHeight += view.getMeasuredHeight();
        }
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.i = d(R$id.image_view);
        this.j = d(R$id.message_title);
        this.k = d(R$id.body_scroll);
        this.l = d(R$id.action_bar);
        int iB = b(i);
        int iA = a(i2);
        int iH = h((int) (0.8d * iA), 4);
        c50.s0("Measuring image");
        c50.z0(this.i, iB, iA);
        if (e(this.i) > iH) {
            c50.s0("Image exceeded maximum height, remeasuring image");
            c50.y0(this.i, iB, iH);
        }
        int iF = f(this.i);
        c50.s0("Measuring title");
        c50.z0(this.j, iF, iA);
        c50.s0("Measuring action bar");
        c50.z0(this.l, iF, iA);
        c50.s0("Measuring scroll view");
        c50.z0(this.k, iF, ((iA - e(this.i)) - e(this.j)) - e(this.l));
        int size = getVisibleChildren().size();
        int iE = 0;
        for (int i3 = 0; i3 < size; i3++) {
            iE += e(getVisibleChildren().get(i3));
        }
        setMeasuredDimension(iF, iE);
    }
}
