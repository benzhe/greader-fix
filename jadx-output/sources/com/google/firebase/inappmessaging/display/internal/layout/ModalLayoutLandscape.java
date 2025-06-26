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
public class ModalLayoutLandscape extends BaseModalLayout {
    public View i;
    public View j;
    public View k;
    public View l;
    public int m;
    public int n;
    public int o;
    public int p;

    public ModalLayoutLandscape(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onLayout(z, i, i2, i3, i4);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int measuredWidth = getMeasuredWidth() - getPaddingRight();
        int i7 = this.o;
        int i8 = this.p;
        if (i7 < i8) {
            i6 = (i8 - i7) / 2;
            i5 = 0;
        } else {
            i5 = (i7 - i8) / 2;
            i6 = 0;
        }
        c50.s0("Layout image");
        int i9 = paddingTop + i6;
        int iF = f(this.i) + paddingLeft;
        g(this.i, paddingLeft, i9, iF, e(this.i) + i9);
        int i10 = iF + this.m;
        c50.s0("Layout getTitle");
        int i11 = paddingTop + i5;
        int iE = e(this.j) + i11;
        g(this.j, i10, i11, measuredWidth, iE);
        c50.s0("Layout getBody");
        int i12 = iE + (this.j.getVisibility() == 8 ? 0 : this.n);
        int iE2 = e(this.k) + i12;
        g(this.k, i10, i12, measuredWidth, iE2);
        c50.s0("Layout button");
        int i13 = iE2 + (this.k.getVisibility() != 8 ? this.n : 0);
        View view = this.l;
        g(view, i10, i13, f(view) + i10, e(view) + i13);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.i = d(R$id.image_view);
        this.j = d(R$id.message_title);
        this.k = d(R$id.body_scroll);
        this.l = d(R$id.button);
        int iMax = 0;
        this.m = this.i.getVisibility() == 8 ? 0 : c(24);
        this.n = c(24);
        List listAsList = Arrays.asList(this.j, this.k, this.l);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iB = b(i);
        int iA = a(i2) - paddingTop;
        int i3 = iB - paddingRight;
        c50.s0("Measuring image");
        c50.x0(this.i, (int) (i3 * 0.4f), iA, Integer.MIN_VALUE, Integer.MIN_VALUE);
        int iF = f(this.i);
        int i4 = i3 - (this.m + iF);
        float f = iF;
        c50.v0("Max col widths (l, r)", f, i4);
        Iterator it = listAsList.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            if (((View) it.next()).getVisibility() != 8) {
                i5++;
            }
        }
        int iMax2 = Math.max(0, (i5 - 1) * this.n);
        int i6 = iA - iMax2;
        c50.s0("Measuring getTitle");
        c50.x0(this.j, i4, i6, Integer.MIN_VALUE, Integer.MIN_VALUE);
        c50.s0("Measuring button");
        c50.x0(this.l, i4, i6, Integer.MIN_VALUE, Integer.MIN_VALUE);
        c50.s0("Measuring scroll view");
        c50.x0(this.k, i4, (i6 - e(this.j)) - e(this.l), Integer.MIN_VALUE, Integer.MIN_VALUE);
        this.o = e(this.i);
        this.p = iMax2;
        Iterator it2 = listAsList.iterator();
        while (it2.hasNext()) {
            this.p = e((View) it2.next()) + this.p;
        }
        int iMax3 = Math.max(this.o + paddingTop, this.p + paddingTop);
        Iterator it3 = listAsList.iterator();
        while (it3.hasNext()) {
            iMax = Math.max(f((View) it3.next()), iMax);
        }
        c50.v0("Measured columns (l, r)", f, iMax);
        int i7 = iF + iMax + this.m + paddingRight;
        c50.v0("Measured dims", i7, iMax3);
        setMeasuredDimension(i7, iMax3);
    }
}
