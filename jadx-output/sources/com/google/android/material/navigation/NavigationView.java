package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.R$attr;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import defpackage.a1;
import defpackage.c3;
import defpackage.c50;
import defpackage.d95;
import defpackage.ea5;
import defpackage.fc5;
import defpackage.ha;
import defpackage.j1;
import defpackage.l1;
import defpackage.l85;
import defpackage.la5;
import defpackage.m85;
import defpackage.p0;
import defpackage.pa5;
import defpackage.qa;
import defpackage.t85;
import defpackage.u7;
import defpackage.u75;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import m85.c;
import m85.h;

/* loaded from: classes.dex */
public class NavigationView extends ScrimInsetsFrameLayout {
    public static final int[] q = {R.attr.state_checked};
    public static final int[] r = {-16842910};
    public static final int s = R$style.Widget_Design_NavigationView;
    public final l85 j;
    public final m85 k;
    public b l;
    public final int m;
    public final int[] n;
    public MenuInflater o;
    public ViewTreeObserver.OnGlobalLayoutListener p;

    public class a implements j1.a {
        public a() {
        }

        @Override // j1.a
        public boolean a(j1 j1Var, MenuItem menuItem) {
            b bVar = NavigationView.this.l;
            return bVar != null && bVar.a(menuItem);
        }

        @Override // j1.a
        public void b(j1 j1Var) {
        }
    }

    public interface b {
        boolean a(MenuItem menuItem);
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    private MenuInflater getMenuInflater() {
        if (this.o == null) {
            this.o = new a1(getContext());
        }
        return this.o;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    public void a(qa qaVar) {
        m85 m85Var = this.k;
        Objects.requireNonNull(m85Var);
        int iE = qaVar.e();
        if (m85Var.v != iE) {
            m85Var.v = iE;
            m85Var.e();
        }
        NavigationMenuView navigationMenuView = m85Var.e;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, qaVar.b());
        ha.e(m85Var.f, qaVar);
    }

    public final ColorStateList b(int i) throws Resources.NotFoundException {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = p0.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = r;
        return new ColorStateList(new int[][]{iArr, q, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    public MenuItem getCheckedItem() {
        return this.k.i.b;
    }

    public int getHeaderCount() {
        return this.k.f.getChildCount();
    }

    public Drawable getItemBackground() {
        return this.k.o;
    }

    public int getItemHorizontalPadding() {
        return this.k.p;
    }

    public int getItemIconPadding() {
        return this.k.q;
    }

    public ColorStateList getItemIconTintList() {
        return this.k.n;
    }

    public int getItemMaxLines() {
        return this.k.u;
    }

    public ColorStateList getItemTextColor() {
        return this.k.m;
    }

    public Menu getMenu() {
        return this.j;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof la5) {
            c50.I0(this, (la5) background);
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.p);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.m), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.m, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        this.j.w(savedState.g);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.g = bundle;
        this.j.y(bundle);
        return savedState;
    }

    public void setCheckedItem(int i) {
        MenuItem menuItemFindItem = this.j.findItem(i);
        if (menuItemFindItem != null) {
            this.k.i.b((l1) menuItemFindItem);
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c50.H0(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        m85 m85Var = this.k;
        m85Var.o = drawable;
        m85Var.o(false);
    }

    public void setItemBackgroundResource(int i) {
        Context context = getContext();
        Object obj = u7.a;
        setItemBackground(context.getDrawable(i));
    }

    public void setItemHorizontalPadding(int i) {
        m85 m85Var = this.k;
        m85Var.p = i;
        m85Var.o(false);
    }

    public void setItemHorizontalPaddingResource(int i) {
        this.k.a(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(int i) {
        m85 m85Var = this.k;
        m85Var.q = i;
        m85Var.o(false);
    }

    public void setItemIconPaddingResource(int i) {
        this.k.c(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(int i) {
        m85 m85Var = this.k;
        if (m85Var.r != i) {
            m85Var.r = i;
            m85Var.s = true;
            m85Var.o(false);
        }
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        m85 m85Var = this.k;
        m85Var.n = colorStateList;
        m85Var.o(false);
    }

    public void setItemMaxLines(int i) {
        m85 m85Var = this.k;
        m85Var.u = i;
        m85Var.o(false);
    }

    public void setItemTextAppearance(int i) {
        m85 m85Var = this.k;
        m85Var.k = i;
        m85Var.l = true;
        m85Var.o(false);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        m85 m85Var = this.k;
        m85Var.m = colorStateList;
        m85Var.o(false);
    }

    public void setNavigationItemSelectedListener(b bVar) {
        this.l = bVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        m85 m85Var = this.k;
        if (m85Var != null) {
            m85Var.x = i;
            NavigationMenuView navigationMenuView = m85Var.e;
            if (navigationMenuView != null) {
                navigationMenuView.setOverScrollMode(i);
            }
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public Bundle g;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeBundle(this.g);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R$attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        ColorStateList colorStateListB;
        int iM;
        boolean z;
        int i2 = s;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        m85 m85Var = new m85();
        this.k = m85Var;
        this.n = new int[2];
        Context context2 = getContext();
        l85 l85Var = new l85(context2);
        this.j = l85Var;
        c3 c3VarE = t85.e(context2, attributeSet, R$styleable.NavigationView, i, i2, new int[0]);
        int i3 = R$styleable.NavigationView_android_background;
        if (c3VarE.p(i3)) {
            Drawable drawableG = c3VarE.g(i3);
            AtomicInteger atomicInteger = ha.a;
            setBackground(drawableG);
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            pa5 pa5VarA = pa5.b(context2, attributeSet, i, i2, new ea5(0)).a();
            Drawable background = getBackground();
            la5 la5Var = new la5(pa5VarA);
            if (background instanceof ColorDrawable) {
                la5Var.t(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            la5Var.e.b = new u75(context2);
            la5Var.E();
            AtomicInteger atomicInteger2 = ha.a;
            setBackground(la5Var);
        }
        if (c3VarE.p(R$styleable.NavigationView_elevation)) {
            setElevation(c3VarE.f(r2, 0));
        }
        setFitsSystemWindows(c3VarE.a(R$styleable.NavigationView_android_fitsSystemWindows, false));
        this.m = c3VarE.f(R$styleable.NavigationView_android_maxWidth, 0);
        int i4 = R$styleable.NavigationView_itemIconTint;
        if (c3VarE.p(i4)) {
            colorStateListB = c3VarE.c(i4);
        } else {
            colorStateListB = b(R.attr.textColorSecondary);
        }
        int i5 = R$styleable.NavigationView_itemTextAppearance;
        if (c3VarE.p(i5)) {
            iM = c3VarE.m(i5, 0);
            z = true;
        } else {
            iM = 0;
            z = false;
        }
        int i6 = R$styleable.NavigationView_itemIconSize;
        if (c3VarE.p(i6)) {
            setItemIconSize(c3VarE.f(i6, 0));
        }
        int i7 = R$styleable.NavigationView_itemTextColor;
        ColorStateList colorStateListC = c3VarE.p(i7) ? c3VarE.c(i7) : null;
        if (!z && colorStateListC == null) {
            colorStateListC = b(R.attr.textColorPrimary);
        }
        Drawable drawableG2 = c3VarE.g(R$styleable.NavigationView_itemBackground);
        if (drawableG2 == null) {
            int i8 = R$styleable.NavigationView_itemShapeAppearance;
            if (c3VarE.p(i8) || c3VarE.p(R$styleable.NavigationView_itemShapeAppearanceOverlay)) {
                la5 la5Var2 = new la5(pa5.a(getContext(), c3VarE.m(i8, 0), c3VarE.m(R$styleable.NavigationView_itemShapeAppearanceOverlay, 0), new ea5(0)).a());
                la5Var2.t(c50.b0(getContext(), c3VarE, R$styleable.NavigationView_itemShapeFillColor));
                drawableG2 = new InsetDrawable((Drawable) la5Var2, c3VarE.f(R$styleable.NavigationView_itemShapeInsetStart, 0), c3VarE.f(R$styleable.NavigationView_itemShapeInsetTop, 0), c3VarE.f(R$styleable.NavigationView_itemShapeInsetEnd, 0), c3VarE.f(R$styleable.NavigationView_itemShapeInsetBottom, 0));
            }
        }
        int i9 = R$styleable.NavigationView_itemHorizontalPadding;
        if (c3VarE.p(i9)) {
            m85Var.a(c3VarE.f(i9, 0));
        }
        int iF = c3VarE.f(R$styleable.NavigationView_itemIconPadding, 0);
        setItemMaxLines(c3VarE.j(R$styleable.NavigationView_itemMaxLines, 1));
        l85Var.e = new a();
        m85Var.h = 1;
        m85Var.t(context2, l85Var);
        m85Var.n = colorStateListB;
        m85Var.o(false);
        int overScrollMode = getOverScrollMode();
        m85Var.x = overScrollMode;
        NavigationMenuView navigationMenuView = m85Var.e;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(overScrollMode);
        }
        if (z) {
            m85Var.k = iM;
            m85Var.l = true;
            m85Var.o(false);
        }
        m85Var.m = colorStateListC;
        m85Var.o(false);
        m85Var.o = drawableG2;
        m85Var.o(false);
        m85Var.c(iF);
        l85Var.b(m85Var, l85Var.a);
        if (m85Var.e == null) {
            NavigationMenuView navigationMenuView2 = (NavigationMenuView) m85Var.j.inflate(R$layout.design_navigation_menu, (ViewGroup) this, false);
            m85Var.e = navigationMenuView2;
            navigationMenuView2.setAccessibilityDelegateCompat(m85Var.new h(m85Var.e));
            if (m85Var.i == null) {
                m85Var.i = m85Var.new c();
            }
            int i10 = m85Var.x;
            if (i10 != -1) {
                m85Var.e.setOverScrollMode(i10);
            }
            m85Var.f = (LinearLayout) m85Var.j.inflate(R$layout.design_navigation_item_header, (ViewGroup) m85Var.e, false);
            m85Var.e.setAdapter(m85Var.i);
        }
        addView(m85Var.e);
        int i11 = R$styleable.NavigationView_menu;
        if (c3VarE.p(i11)) {
            int iM2 = c3VarE.m(i11, 0);
            m85Var.d(true);
            getMenuInflater().inflate(iM2, l85Var);
            m85Var.d(false);
            m85Var.o(false);
        }
        int i12 = R$styleable.NavigationView_headerLayout;
        if (c3VarE.p(i12)) {
            m85Var.f.addView(m85Var.j.inflate(c3VarE.m(i12, 0), (ViewGroup) m85Var.f, false));
            NavigationMenuView navigationMenuView3 = m85Var.e;
            navigationMenuView3.setPadding(0, 0, 0, navigationMenuView3.getPaddingBottom());
        }
        c3VarE.b.recycle();
        this.p = new d95(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.p);
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem menuItemFindItem = this.j.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.k.i.b((l1) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
