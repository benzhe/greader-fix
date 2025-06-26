package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import androidx.appcompat.R$attr;
import com.google.android.material.badge.BadgeDrawable;
import defpackage.c65;
import defpackage.ha;
import defpackage.j1;
import defpackage.jh;
import defpackage.l1;
import defpackage.p0;
import defpackage.q1;
import defpackage.r85;
import defpackage.sa;
import defpackage.t9;
import defpackage.u9;
import defpackage.uc;
import defpackage.wh;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements q1 {
    public static final int[] x = {R.attr.state_checked};
    public static final int[] y = {-16842910};
    public final wh e;
    public final View.OnClickListener f;
    public final t9<NavigationBarItemView> g;
    public final SparseArray<View.OnTouchListener> h;
    public int i;
    public NavigationBarItemView[] j;
    public int k;
    public int l;
    public ColorStateList m;
    public int n;
    public ColorStateList o;
    public final ColorStateList p;
    public int q;
    public int r;
    public Drawable s;
    public int t;
    public SparseArray<BadgeDrawable> u;
    public NavigationBarPresenter v;
    public j1 w;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1 itemData = ((NavigationBarItemView) view).getItemData();
            NavigationBarMenuView navigationBarMenuView = NavigationBarMenuView.this;
            if (navigationBarMenuView.w.s(itemData, navigationBarMenuView.v, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(Context context) {
        super(context);
        this.g = new u9(5);
        this.h = new SparseArray<>(5);
        this.k = 0;
        this.l = 0;
        this.u = new SparseArray<>(5);
        this.p = c(R.attr.textColorSecondary);
        jh jhVar = new jh();
        this.e = jhVar;
        jhVar.O(0);
        jhVar.M(115L);
        jhVar.N(new uc());
        jhVar.K(new r85());
        this.f = new a();
        AtomicInteger atomicInteger = ha.a;
        setImportantForAccessibility(1);
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemViewA = this.g.a();
        return navigationBarItemViewA == null ? d(getContext()) : navigationBarItemViewA;
    }

    private void setBadgeIfNeeded(NavigationBarItemView navigationBarItemView) throws Resources.NotFoundException {
        BadgeDrawable badgeDrawable;
        int id = navigationBarItemView.getId();
        if ((id != -1) && (badgeDrawable = this.u.get(id)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    public void a() throws Resources.NotFoundException {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.g.b(navigationBarItemView);
                    ImageView imageView = navigationBarItemView.k;
                    if (navigationBarItemView.b()) {
                        if (imageView != null) {
                            navigationBarItemView.setClipChildren(true);
                            navigationBarItemView.setClipToPadding(true);
                            c65.b(navigationBarItemView.t, imageView);
                        }
                        navigationBarItemView.t = null;
                    }
                }
            }
        }
        if (this.w.size() == 0) {
            this.k = 0;
            this.l = 0;
            this.j = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.w.size(); i++) {
            hashSet.add(Integer.valueOf(this.w.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.u.size(); i2++) {
            int iKeyAt = this.u.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.u.delete(iKeyAt);
            }
        }
        this.j = new NavigationBarItemView[this.w.size()];
        boolean zE = e(this.i, this.w.l().size());
        for (int i3 = 0; i3 < this.w.size(); i3++) {
            this.v.g = true;
            this.w.getItem(i3).setCheckable(true);
            this.v.g = false;
            NavigationBarItemView newItem = getNewItem();
            this.j[i3] = newItem;
            newItem.setIconTintList(this.m);
            newItem.setIconSize(this.n);
            newItem.setTextColor(this.p);
            newItem.setTextAppearanceInactive(this.q);
            newItem.setTextAppearanceActive(this.r);
            newItem.setTextColor(this.o);
            Drawable drawable = this.s;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.t);
            }
            newItem.setShifting(zE);
            newItem.setLabelVisibilityMode(this.i);
            l1 l1Var = (l1) this.w.getItem(i3);
            newItem.d(l1Var, 0);
            newItem.setItemPosition(i3);
            int i4 = l1Var.a;
            newItem.setOnTouchListener(this.h.get(i4));
            newItem.setOnClickListener(this.f);
            int i5 = this.k;
            if (i5 != 0 && i4 == i5) {
                this.l = i3;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.w.size() - 1, this.l);
        this.l = iMin;
        this.w.getItem(iMin).setChecked(true);
    }

    @Override // defpackage.q1
    public void b(j1 j1Var) {
        this.w = j1Var;
    }

    public ColorStateList c(int i) throws Resources.NotFoundException {
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
        int[] iArr = y;
        return new ColorStateList(new int[][]{iArr, x, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    public abstract NavigationBarItemView d(Context context);

    public boolean e(int i, int i2) {
        if (i == -1) {
            if (i2 > 3) {
                return true;
            }
        } else if (i == 0) {
            return true;
        }
        return false;
    }

    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.u;
    }

    public ColorStateList getIconTintList() {
        return this.m;
    }

    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.s : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.t;
    }

    public int getItemIconSize() {
        return this.n;
    }

    public int getItemTextAppearanceActive() {
        return this.r;
    }

    public int getItemTextAppearanceInactive() {
        return this.q;
    }

    public ColorStateList getItemTextColor() {
        return this.o;
    }

    public int getLabelVisibilityMode() {
        return this.i;
    }

    public j1 getMenu() {
        return this.w;
    }

    public int getSelectedItemId() {
        return this.k;
    }

    public int getSelectedItemPosition() {
        return this.l;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) sa.b.a(1, this.w.l().size(), false, 1).a);
    }

    public void setBadgeDrawables(SparseArray<BadgeDrawable> sparseArray) throws Resources.NotFoundException {
        this.u = sparseArray;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setBadge(sparseArray.get(navigationBarItemView.getId()));
            }
        }
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.m = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.s = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.t = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i);
            }
        }
    }

    public void setItemIconSize(int i) {
        this.n = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i);
            }
        }
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.h.remove(i);
        } else {
            this.h.put(i, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().a == i) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.r = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.o;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i) {
        this.q = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.o;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.o = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.i = i;
    }

    public void setPresenter(NavigationBarPresenter navigationBarPresenter) {
        this.v = navigationBarPresenter;
    }
}
