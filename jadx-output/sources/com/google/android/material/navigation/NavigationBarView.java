package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import defpackage.a1;
import defpackage.b95;
import defpackage.ba5;
import defpackage.c3;
import defpackage.c50;
import defpackage.c95;
import defpackage.fc5;
import defpackage.ha;
import defpackage.j1;
import defpackage.la5;
import defpackage.q1;
import defpackage.t85;
import defpackage.u75;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class NavigationBarView extends FrameLayout {
    public final b95 e;
    public final NavigationBarMenuView f;
    public final NavigationBarPresenter g;
    public ColorStateList h;
    public MenuInflater i;
    public c j;
    public b k;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeBundle(this.g);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readBundle(classLoader == null ? SavedState.class.getClassLoader() : classLoader);
        }
    }

    public class a implements j1.a {
        public a() {
        }

        @Override // j1.a
        public boolean a(j1 j1Var, MenuItem menuItem) {
            if (NavigationBarView.this.k == null || menuItem.getItemId() != NavigationBarView.this.getSelectedItemId()) {
                c cVar = NavigationBarView.this.j;
                return (cVar == null || cVar.a(menuItem)) ? false : true;
            }
            NavigationBarView.this.k.a(menuItem);
            return true;
        }

        @Override // j1.a
        public void b(j1 j1Var) {
        }
    }

    public interface b {
        void a(MenuItem menuItem);
    }

    public interface c {
        boolean a(MenuItem menuItem);
    }

    public NavigationBarView(Context context, AttributeSet attributeSet, int i, int i2) throws Resources.NotFoundException {
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.g = navigationBarPresenter;
        Context context2 = getContext();
        int[] iArr = R$styleable.NavigationBarView;
        int i3 = R$styleable.NavigationBarView_itemTextAppearanceInactive;
        int i4 = R$styleable.NavigationBarView_itemTextAppearanceActive;
        c3 c3VarE = t85.e(context2, attributeSet, iArr, i, i2, i3, i4);
        b95 b95Var = new b95(context2, getClass(), getMaxItemCount());
        this.e = b95Var;
        NavigationBarMenuView navigationBarMenuViewA = a(context2);
        this.f = navigationBarMenuViewA;
        navigationBarPresenter.f = navigationBarMenuViewA;
        navigationBarPresenter.h = 1;
        navigationBarMenuViewA.setPresenter(navigationBarPresenter);
        b95Var.b(navigationBarPresenter, b95Var.a);
        getContext();
        navigationBarPresenter.e = b95Var;
        navigationBarPresenter.f.w = b95Var;
        int i5 = R$styleable.NavigationBarView_itemIconTint;
        if (c3VarE.p(i5)) {
            navigationBarMenuViewA.setIconTintList(c3VarE.c(i5));
        } else {
            navigationBarMenuViewA.setIconTintList(navigationBarMenuViewA.c(R.attr.textColorSecondary));
        }
        setItemIconSize(c3VarE.f(R$styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (c3VarE.p(i3)) {
            setItemTextAppearanceInactive(c3VarE.m(i3, 0));
        }
        if (c3VarE.p(i4)) {
            setItemTextAppearanceActive(c3VarE.m(i4, 0));
        }
        int i6 = R$styleable.NavigationBarView_itemTextColor;
        if (c3VarE.p(i6)) {
            setItemTextColor(c3VarE.c(i6));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            la5 la5Var = new la5();
            Drawable background = getBackground();
            if (background instanceof ColorDrawable) {
                la5Var.t(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            la5Var.e.b = new u75(context2);
            la5Var.E();
            AtomicInteger atomicInteger = ha.a;
            setBackground(la5Var);
        }
        if (c3VarE.p(R$styleable.NavigationBarView_elevation)) {
            setElevation(c3VarE.f(r0, 0));
        }
        getBackground().mutate().setTintList(c50.b0(context2, c3VarE, R$styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(c3VarE.k(R$styleable.NavigationBarView_labelVisibilityMode, -1));
        int iM = c3VarE.m(R$styleable.NavigationBarView_itemBackground, 0);
        if (iM != 0) {
            navigationBarMenuViewA.setItemBackgroundRes(iM);
        } else {
            setItemRippleColor(c50.b0(context2, c3VarE, R$styleable.NavigationBarView_itemRippleColor));
        }
        int i7 = R$styleable.NavigationBarView_menu;
        if (c3VarE.p(i7)) {
            int iM2 = c3VarE.m(i7, 0);
            navigationBarPresenter.g = true;
            getMenuInflater().inflate(iM2, b95Var);
            navigationBarPresenter.g = false;
            navigationBarPresenter.o(true);
        }
        c3VarE.b.recycle();
        addView(navigationBarMenuViewA);
        b95Var.e = new a();
        c50.O(this, new c95(this));
    }

    private MenuInflater getMenuInflater() {
        if (this.i == null) {
            this.i = new a1(getContext());
        }
        return this.i;
    }

    public abstract NavigationBarMenuView a(Context context);

    public Drawable getItemBackground() {
        return this.f.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f.getIconTintList();
    }

    public ColorStateList getItemRippleColor() {
        return this.h;
    }

    public int getItemTextAppearanceActive() {
        return this.f.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    public Menu getMenu() {
        return this.e;
    }

    public q1 getMenuView() {
        return this.f;
    }

    public NavigationBarPresenter getPresenter() {
        return this.g;
    }

    public int getSelectedItemId() {
        return this.f.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof la5) {
            c50.I0(this, (la5) background);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        this.e.w(savedState.g);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.g = bundle;
        this.e.y(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c50.H0(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f.setItemBackground(drawable);
        this.h = null;
    }

    public void setItemBackgroundResource(int i) {
        this.f.setItemBackgroundRes(i);
        this.h = null;
    }

    public void setItemIconSize(int i) {
        this.f.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        this.f.setItemOnTouchListener(i, onTouchListener);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        if (this.h == colorStateList) {
            if (colorStateList != null || this.f.getItemBackground() == null) {
                return;
            }
            this.f.setItemBackground(null);
            return;
        }
        this.h = colorStateList;
        if (colorStateList == null) {
            this.f.setItemBackground(null);
        } else {
            this.f.setItemBackground(new RippleDrawable(ba5.a(colorStateList), null, null));
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.f.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) throws Resources.NotFoundException {
        if (this.f.getLabelVisibilityMode() != i) {
            this.f.setLabelVisibilityMode(i);
            this.g.o(false);
        }
    }

    public void setOnItemReselectedListener(b bVar) {
        this.k = bVar;
    }

    public void setOnItemSelectedListener(c cVar) {
        this.j = cVar;
    }

    public void setSelectedItemId(int i) {
        MenuItem menuItemFindItem = this.e.findItem(i);
        if (menuItemFindItem == null || this.e.s(menuItemFindItem, this.g, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
