package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.firebase.inappmessaging.display.R$id;
import defpackage.c50;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CardLayoutLandscape extends BaseModalLayout {
    public View i;
    public View j;
    public View k;
    public View l;

    public CardLayoutLandscape(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        c50.s0("Layout image");
        int iF = f(this.i);
        g(this.i, 0, 0, iF, e(this.i));
        c50.s0("Layout title");
        int iE = e(this.j);
        g(this.j, iF, 0, measuredWidth, iE);
        c50.s0("Layout scroll");
        g(this.k, iF, iE, measuredWidth, e(this.k) + iE);
        c50.s0("Layout action bar");
        g(this.l, iF, measuredHeight - e(this.l), measuredWidth, measuredHeight);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.i = d(R$id.image_view);
        this.j = d(R$id.message_title);
        this.k = d(R$id.body_scroll);
        View viewD = d(R$id.action_bar);
        this.l = viewD;
        int iMax = 0;
        List listAsList = Arrays.asList(this.j, this.k, viewD);
        int iB = b(i);
        int iA = a(i2);
        int iH = h((int) (0.6d * iB), 4);
        c50.s0("Measuring image");
        c50.y0(this.i, iB, iA);
        if (f(this.i) > iH) {
            c50.s0("Image exceeded maximum width, remeasuring image");
            c50.z0(this.i, iH, iA);
        }
        int iE = e(this.i);
        int iF = f(this.i);
        int i3 = iB - iF;
        float f = iF;
        c50.v0("Max col widths (l, r)", f, i3);
        c50.s0("Measuring title");
        c50.x0(this.j, i3, iE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        c50.s0("Measuring action bar");
        c50.x0(this.l, i3, iE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        c50.s0("Measuring scroll view");
        c50.y0(this.k, i3, (iE - e(this.j)) - e(this.l));
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            iMax = Math.max(f((View) it.next()), iMax);
        }
        c50.v0("Measured columns (l, r)", f, iMax);
        int i4 = iF + iMax;
        c50.v0("Measured dims", i4, iE);
        setMeasuredDimension(i4, iE);
    }
}
