package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.badge.BadgeDrawable;
import defpackage.c65;
import defpackage.d0;
import defpackage.ga;
import defpackage.ha;
import defpackage.l1;
import defpackage.q1;
import defpackage.sa;
import defpackage.u7;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class NavigationBarItemView extends FrameLayout implements q1.a {
    public static final int[] u = {R.attr.state_checked};
    public final int e;
    public float f;
    public float g;
    public float h;
    public int i;
    public boolean j;
    public ImageView k;
    public final ViewGroup l;
    public final TextView m;
    public final TextView n;
    public int o;
    public l1 p;
    public ColorStateList q;
    public Drawable r;
    public Drawable s;
    public BadgeDrawable t;

    public class a implements View.OnLayoutChangeListener {
        public a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) throws Resources.NotFoundException {
            if (NavigationBarItemView.this.k.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                ImageView imageView = navigationBarItemView.k;
                if (navigationBarItemView.b()) {
                    c65.c(navigationBarItemView.t, imageView, null);
                }
            }
        }
    }

    public NavigationBarItemView(Context context) {
        super(context);
        this.o = -1;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.k = (ImageView) findViewById(R$id.navigation_bar_item_icon_view);
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.navigation_bar_item_labels_group);
        this.l = viewGroup;
        TextView textView = (TextView) findViewById(R$id.navigation_bar_item_small_label_view);
        this.m = textView;
        TextView textView2 = (TextView) findViewById(R$id.navigation_bar_item_large_label_view);
        this.n = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.e = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        viewGroup.setTag(R$id.mtrl_view_tag_bottom_padding, Integer.valueOf(viewGroup.getPaddingBottom()));
        AtomicInteger atomicInteger = ha.a;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        setFocusable(true);
        a(textView.getTextSize(), textView2.getTextSize());
        ImageView imageView = this.k;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    public static void c(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    public static void e(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    public static void f(View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < iIndexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    private int getSuggestedIconHeight() {
        BadgeDrawable badgeDrawable = this.t;
        int minimumHeight = badgeDrawable != null ? badgeDrawable.getMinimumHeight() / 2 : 0;
        return this.k.getMeasuredWidth() + Math.max(minimumHeight, ((FrameLayout.LayoutParams) this.k.getLayoutParams()).topMargin) + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.t;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.t.l.o;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.k.getLayoutParams();
        return Math.max(minimumWidth, layoutParams.rightMargin) + this.k.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.leftMargin);
    }

    public final void a(float f, float f2) {
        this.f = f - f2;
        this.g = (f2 * 1.0f) / f;
        this.h = (f * 1.0f) / f2;
    }

    public final boolean b() {
        return this.t != null;
    }

    @Override // q1.a
    public void d(l1 l1Var, int i) {
        this.p = l1Var;
        setCheckable(l1Var.isCheckable());
        setChecked(l1Var.isChecked());
        setEnabled(l1Var.isEnabled());
        setIcon(l1Var.getIcon());
        setTitle(l1Var.e);
        setId(l1Var.a);
        if (!TextUtils.isEmpty(l1Var.q)) {
            setContentDescription(l1Var.q);
        }
        CharSequence charSequence = !TextUtils.isEmpty(l1Var.r) ? l1Var.r : l1Var.e;
        if (Build.VERSION.SDK_INT > 23) {
            d0.h.g0(this, charSequence);
        }
        setVisibility(l1Var.isVisible() ? 0 : 8);
    }

    public BadgeDrawable getBadge() {
        return this.t;
    }

    public int getItemBackgroundResId() {
        return R$drawable.mtrl_navigation_bar_item_background;
    }

    @Override // q1.a
    public l1 getItemData() {
        return this.p;
    }

    public int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_bar_item_default_margin;
    }

    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.o;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.l.getLayoutParams();
        return this.l.getMeasuredHeight() + getSuggestedIconHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.l.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), this.l.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        l1 l1Var = this.p;
        if (l1Var != null && l1Var.isCheckable() && this.p.isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, u);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) throws Resources.NotFoundException {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.t;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            l1 l1Var = this.p;
            CharSequence charSequence = l1Var.e;
            if (!TextUtils.isEmpty(l1Var.q)) {
                charSequence = this.p.q;
            }
            accessibilityNodeInfo.setContentDescription(((Object) charSequence) + ", " + ((Object) this.t.c()));
        }
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) sa.c.a(0, 1, getItemVisiblePosition(), 1, false, isSelected()).a);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) sa.a.g.a);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R$string.item_view_role_description));
    }

    public void setBadge(BadgeDrawable badgeDrawable) throws Resources.NotFoundException {
        this.t = badgeDrawable;
        ImageView imageView = this.k;
        if (imageView == null || !b() || imageView == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        c65.a(this.t, imageView, null);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        this.n.setPivotX(r0.getWidth() / 2);
        this.n.setPivotY(r0.getBaseline());
        this.m.setPivotX(r0.getWidth() / 2);
        this.m.setPivotY(r0.getBaseline());
        int i = this.i;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    c(this.k, this.e, 49);
                    ViewGroup viewGroup = this.l;
                    f(viewGroup, ((Integer) viewGroup.getTag(R$id.mtrl_view_tag_bottom_padding)).intValue());
                    this.n.setVisibility(0);
                } else {
                    c(this.k, this.e, 17);
                    f(this.l, 0);
                    this.n.setVisibility(4);
                }
                this.m.setVisibility(4);
            } else if (i == 1) {
                ViewGroup viewGroup2 = this.l;
                f(viewGroup2, ((Integer) viewGroup2.getTag(R$id.mtrl_view_tag_bottom_padding)).intValue());
                if (z) {
                    c(this.k, (int) (this.e + this.f), 49);
                    e(this.n, 1.0f, 1.0f, 0);
                    TextView textView = this.m;
                    float f = this.g;
                    e(textView, f, f, 4);
                } else {
                    c(this.k, this.e, 49);
                    TextView textView2 = this.n;
                    float f2 = this.h;
                    e(textView2, f2, f2, 4);
                    e(this.m, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                c(this.k, this.e, 17);
                this.n.setVisibility(8);
                this.m.setVisibility(8);
            }
        } else if (this.j) {
            if (z) {
                c(this.k, this.e, 49);
                ViewGroup viewGroup3 = this.l;
                f(viewGroup3, ((Integer) viewGroup3.getTag(R$id.mtrl_view_tag_bottom_padding)).intValue());
                this.n.setVisibility(0);
            } else {
                c(this.k, this.e, 17);
                f(this.l, 0);
                this.n.setVisibility(4);
            }
            this.m.setVisibility(4);
        } else {
            ViewGroup viewGroup4 = this.l;
            f(viewGroup4, ((Integer) viewGroup4.getTag(R$id.mtrl_view_tag_bottom_padding)).intValue());
            if (z) {
                c(this.k, (int) (this.e + this.f), 49);
                e(this.n, 1.0f, 1.0f, 0);
                TextView textView3 = this.m;
                float f3 = this.g;
                e(textView3, f3, f3, 4);
            } else {
                c(this.k, this.e, 49);
                TextView textView4 = this.n;
                float f4 = this.h;
                e(textView4, f4, f4, 4);
                e(this.m, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.m.setEnabled(z);
        this.n.setEnabled(z);
        this.k.setEnabled(z);
        if (z) {
            ha.u(this, ga.a(getContext(), 1002));
        } else {
            ha.u(this, null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.r) {
            return;
        }
        this.r = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = d0.h.l0(drawable).mutate();
            this.s = drawable;
            ColorStateList colorStateList = this.q;
            if (colorStateList != null) {
                drawable.setTintList(colorStateList);
            }
        }
        this.k.setImageDrawable(drawable);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.k.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.k.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.q = colorStateList;
        if (this.p == null || (drawable = this.s) == null) {
            return;
        }
        drawable.setTintList(colorStateList);
        this.s.invalidateSelf();
    }

    public void setItemBackground(int i) {
        Drawable drawable;
        if (i == 0) {
            drawable = null;
        } else {
            Context context = getContext();
            Object obj = u7.a;
            drawable = context.getDrawable(i);
        }
        setItemBackground(drawable);
    }

    public void setItemPosition(int i) {
        this.o = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.i != i) {
            this.i = i;
            l1 l1Var = this.p;
            if (l1Var != null) {
                setChecked(l1Var.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.j != z) {
            this.j = z;
            l1 l1Var = this.p;
            if (l1Var != null) {
                setChecked(l1Var.isChecked());
            }
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(int i) {
        d0.h.c0(this.n, i);
        a(this.m.getTextSize(), this.n.getTextSize());
    }

    public void setTextAppearanceInactive(int i) {
        d0.h.c0(this.m, i);
        a(this.m.getTextSize(), this.n.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.m.setTextColor(colorStateList);
            this.n.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.m.setText(charSequence);
        this.n.setText(charSequence);
        l1 l1Var = this.p;
        if (l1Var == null || TextUtils.isEmpty(l1Var.q)) {
            setContentDescription(charSequence);
        }
        l1 l1Var2 = this.p;
        if (l1Var2 != null && !TextUtils.isEmpty(l1Var2.r)) {
            charSequence = this.p.r;
        }
        if (Build.VERSION.SDK_INT > 23) {
            d0.h.g0(this, charSequence);
        }
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        AtomicInteger atomicInteger = ha.a;
        setBackground(drawable);
    }
}
