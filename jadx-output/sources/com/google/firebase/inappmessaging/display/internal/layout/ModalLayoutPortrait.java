package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.firebase.inappmessaging.display.R$id;
import defpackage.b26;
import defpackage.c26;
import defpackage.c50;
import defpackage.d26;
import defpackage.jo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class ModalLayoutPortrait extends BaseModalLayout {
    public c26 i;
    public int j;

    public ModalLayoutPortrait(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = new c26();
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onLayout(z, i, i2, i3, i4);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int size = getVisibleChildren().size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = getVisibleChildren().get(i7);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight = view.getMeasuredHeight();
            int measuredWidth = view.getMeasuredWidth();
            int i8 = measuredHeight + paddingTop;
            if ((layoutParams.gravity & 1) == 1) {
                int i9 = (i3 - i) / 2;
                int i10 = measuredWidth / 2;
                i6 = i9 - i10;
                i5 = i9 + i10;
            } else {
                i5 = paddingLeft + measuredWidth;
                i6 = paddingLeft;
            }
            c50.s0("Layout child " + i7);
            c50.v0("\t(top, bottom)", (float) paddingTop, (float) i8);
            c50.v0("\t(left, right)", (float) i6, (float) i5);
            view.layout(i6, paddingTop, i5, i8);
            int measuredHeight2 = view.getMeasuredHeight() + paddingTop;
            if (i7 < size - 1) {
                measuredHeight2 += this.j;
            }
            paddingTop = measuredHeight2;
        }
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        float f;
        super.onMeasure(i, i2);
        this.j = c(24);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iB = b(i);
        int iA = a(i2);
        int size = ((getVisibleChildren().size() - 1) * this.j) + paddingTop;
        c26 c26Var = this.i;
        c26Var.b = iB;
        c26Var.c = iA;
        c26Var.a = new ArrayList();
        int iA2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            c26 c26Var2 = this.i;
            d26 d26Var = new d26(childAt, childAt.getId() == R$id.body_scroll || childAt.getId() == R$id.image_view);
            d26Var.c = c26Var2.c;
            c26Var2.a.add(d26Var);
        }
        StringBuilder sbZ = jo.z("Screen dimens: ");
        sbZ.append(getDisplayMetrics());
        c50.s0(sbZ.toString());
        c50.v0("Max pct", getMaxWidthPct(), getMaxHeightPct());
        float f2 = iB;
        c50.v0("Base dimens", f2, iA);
        for (d26 d26Var2 : this.i.a) {
            c50.s0("Pre-measure child");
            c50.x0(d26Var2.a, iB, iA, Integer.MIN_VALUE, Integer.MIN_VALUE);
        }
        Iterator<d26> it = this.i.a.iterator();
        int iA3 = 0;
        while (it.hasNext()) {
            iA3 += it.next().a();
        }
        int i4 = iA3 + size;
        c50.u0("Total reserved height", size);
        c50.u0("Total desired height", i4);
        boolean z = i4 > iA;
        c50.s0("Total height constrained: " + z);
        if (z) {
            int i5 = iA - size;
            int iA4 = 0;
            for (d26 d26Var3 : this.i.a) {
                if (!d26Var3.b) {
                    iA4 += d26Var3.a();
                }
            }
            int i6 = i5 - iA4;
            c26 c26Var3 = this.i;
            Objects.requireNonNull(c26Var3);
            ArrayList arrayList = new ArrayList();
            for (d26 d26Var4 : c26Var3.a) {
                if (d26Var4.b) {
                    arrayList.add(d26Var4);
                }
            }
            Collections.sort(arrayList, new b26(c26Var3));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                iA2 += ((d26) it2.next()).a();
            }
            if (arrayList.size() >= 6) {
                throw new IllegalStateException("VerticalViewGroupMeasure only supports up to 5 children");
            }
            float f3 = 1.0f - ((r3 - 1) * 0.2f);
            c50.v0("VVGM (minFrac, maxFrac)", 0.2f, f3);
            float f4 = 0.0f;
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                d26 d26Var5 = (d26) it3.next();
                float fA = d26Var5.a() / iA2;
                if (fA > f3) {
                    f4 += fA - f3;
                    f = f3;
                } else {
                    f = fA;
                }
                if (fA < 0.2f) {
                    float fMin = Math.min(0.2f - fA, f4);
                    f4 -= fMin;
                    f = fA + fMin;
                }
                c50.v0("\t(desired, granted)", fA, f);
                d26Var5.c = (int) (f * i6);
            }
        }
        int i7 = iB - paddingLeft;
        for (d26 d26Var6 : this.i.a) {
            c50.s0("Measuring child");
            c50.x0(d26Var6.a, i7, d26Var6.c, Integer.MIN_VALUE, Integer.MIN_VALUE);
            size += e(d26Var6.a);
        }
        c50.v0("Measured dims", f2, size);
        setMeasuredDimension(iB, size);
    }
}
