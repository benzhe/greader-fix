package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import defpackage.e95;

/* loaded from: classes.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    public final FrameLayout.LayoutParams z;

    public NavigationRailMenuView(Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.z = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    public NavigationBarItemView d(Context context) {
        return new e95(context);
    }

    public final int f(int i, int i2, int i3) {
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), i2 / Math.max(1, i3)), 0);
    }

    public final int g(int i, int i2, int i3, View view) {
        int measuredHeight;
        f(i, i2, i3);
        int iF = view == null ? f(i, i2, i3) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt != view) {
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i, iF);
                    measuredHeight = childAt.getMeasuredHeight();
                } else {
                    measuredHeight = 0;
                }
                i4 += measuredHeight;
            }
        }
        return i4;
    }

    public int getMenuGravity() {
        return this.z.gravity;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                childAt.layout(0, i6, i5, measuredHeight);
                i6 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iG;
        int measuredHeight;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = getMenu().l().size();
        if (size2 <= 1 || !e(getLabelVisibilityMode(), size2)) {
            iG = g(i, size, size2, null);
        } else {
            View childAt = getChildAt(getSelectedItemPosition());
            if (childAt != null) {
                int iF = f(i, size, size2);
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i, iF);
                    measuredHeight = childAt.getMeasuredHeight();
                } else {
                    measuredHeight = 0;
                }
                size -= measuredHeight;
                size2--;
            } else {
                measuredHeight = 0;
            }
            iG = g(i, size, size2, childAt) + measuredHeight;
        }
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i), i, 0), View.resolveSizeAndState(iG, i2, 0));
    }

    public void setMenuGravity(int i) {
        FrameLayout.LayoutParams layoutParams = this.z;
        if (layoutParams.gravity != i) {
            layoutParams.gravity = i;
            setLayoutParams(layoutParams);
        }
    }
}
