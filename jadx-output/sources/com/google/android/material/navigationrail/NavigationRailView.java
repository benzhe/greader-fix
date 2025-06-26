package com.google.android.material.navigationrail;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;
import defpackage.c3;
import defpackage.t85;

/* loaded from: classes.dex */
public class NavigationRailView extends NavigationBarView {
    public final int l;
    public View m;

    public interface a extends NavigationBarView.b {
    }

    public interface b extends NavigationBarView.c {
    }

    public NavigationRailView(Context context) {
        this(context, null);
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public NavigationBarMenuView a(Context context) {
        return new NavigationRailMenuView(context);
    }

    public View getHeaderView() {
        return this.m;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        View view = this.m;
        int i5 = 0;
        if ((view == null || view.getVisibility() == 8) ? false : true) {
            int bottom = this.m.getBottom() + this.l;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i5 = bottom - top;
            }
        } else {
            if ((navigationRailMenuView.z.gravity & 112) == 48) {
                i5 = this.l;
            }
        }
        if (i5 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i5, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) != 1073741824 && suggestedMinimumWidth > 0) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), getPaddingRight() + getPaddingLeft() + suggestedMinimumWidth), 1073741824);
        }
        super.onMeasure(i, i2);
        View view = this.m;
        if ((view == null || view.getVisibility() == 8) ? false : true) {
            measureChild(getNavigationRailMenuView(), i, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.m.getMeasuredHeight()) - this.l, Integer.MIN_VALUE));
        }
    }

    public void setMenuGravity(int i) {
        getNavigationRailMenuView().setMenuGravity(i);
    }

    public void setOnNavigationItemReselectedListener(a aVar) {
        setOnItemReselectedListener(aVar);
    }

    public void setOnNavigationItemSelectedListener(b bVar) {
        setOnItemSelectedListener(bVar);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.navigationRailStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationRailView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        int i2 = R$style.Widget_MaterialComponents_NavigationRailView;
        super(context, attributeSet, i, i2);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_rail_margin);
        this.l = dimensionPixelSize;
        c3 c3VarE = t85.e(getContext(), attributeSet, R$styleable.NavigationRailView, i, i2, new int[0]);
        int iM = c3VarE.m(R$styleable.NavigationRailView_headerLayout, 0);
        if (iM != 0) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(iM, (ViewGroup) this, false);
            View view = this.m;
            if (view != null) {
                removeView(view);
                this.m = null;
            }
            this.m = viewInflate;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 49;
            layoutParams.topMargin = dimensionPixelSize;
            addView(viewInflate, 0, layoutParams);
        }
        setMenuGravity(c3VarE.j(R$styleable.NavigationRailView_menuGravity, 49));
        c3VarE.b.recycle();
    }
}
