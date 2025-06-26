package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.R$dimen;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import defpackage.ha;
import defpackage.j1;
import defpackage.k65;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public boolean E;
    public int[] F;
    public final int z;

    public BottomNavigationMenuView(Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.z = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_max_width);
        this.A = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_min_width);
        this.B = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_max_width);
        this.C = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_min_width);
        this.D = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_height);
        this.F = new int[5];
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    public NavigationBarItemView d(Context context) {
        return new k65(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int measuredWidth = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                AtomicInteger atomicInteger = ha.a;
                if (getLayoutDirection() == 1) {
                    int i8 = i5 - measuredWidth;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i6);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, i6);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        j1 menu = getMenu();
        int size = View.MeasureSpec.getSize(i);
        int size2 = menu.l().size();
        int childCount = getChildCount();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.D, 1073741824);
        if (e(getLabelVisibilityMode(), size2) && this.E) {
            View childAt = getChildAt(getSelectedItemPosition());
            int iMax = this.C;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.B, Integer.MIN_VALUE), iMakeMeasureSpec);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
            int i3 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int iMin = Math.min(size - (this.A * i3), Math.min(iMax, this.B));
            int i4 = size - iMin;
            int iMin2 = Math.min(i4 / (i3 == 0 ? 1 : i3), this.z);
            int i5 = i4 - (i3 * iMin2);
            int i6 = 0;
            while (i6 < childCount) {
                if (getChildAt(i6).getVisibility() != 8) {
                    this.F[i6] = i6 == getSelectedItemPosition() ? iMin : iMin2;
                    if (i5 > 0) {
                        int[] iArr = this.F;
                        iArr[i6] = iArr[i6] + 1;
                        i5--;
                    }
                } else {
                    this.F[i6] = 0;
                }
                i6++;
            }
        } else {
            int iMin3 = Math.min(size / (size2 == 0 ? 1 : size2), this.B);
            int i7 = size - (size2 * iMin3);
            for (int i8 = 0; i8 < childCount; i8++) {
                if (getChildAt(i8).getVisibility() != 8) {
                    int[] iArr2 = this.F;
                    iArr2[i8] = iMin3;
                    if (i7 > 0) {
                        iArr2[i8] = iArr2[i8] + 1;
                        i7--;
                    }
                } else {
                    this.F[i8] = 0;
                }
            }
        }
        int measuredWidth = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.F[i9], 1073741824), iMakeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), 0), View.resolveSizeAndState(this.D, iMakeMeasureSpec, 0));
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.E = z;
    }
}
