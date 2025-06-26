package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.appcompat.R$attr;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import defpackage.d0;
import defpackage.ha;
import defpackage.l1;
import defpackage.q1;
import defpackage.sa;
import defpackage.v9;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements q1.a {
    public static final int[] J = {R.attr.state_checked};
    public boolean A;
    public boolean B;
    public final CheckedTextView C;
    public FrameLayout D;
    public l1 E;
    public ColorStateList F;
    public boolean G;
    public Drawable H;
    public final v9 I;
    public int z;

    public class a extends v9 {
        public a() {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.a.setCheckable(NavigationMenuItemView.this.B);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.D == null) {
                this.D = (FrameLayout) ((ViewStub) findViewById(R$id.design_menu_item_action_area_stub)).inflate();
            }
            this.D.removeAllViews();
            this.D.addView(view);
        }
    }

    @Override // q1.a
    public void d(l1 l1Var, int i) throws Resources.NotFoundException {
        StateListDrawable stateListDrawable;
        this.E = l1Var;
        int i2 = l1Var.a;
        if (i2 > 0) {
            setId(i2);
        }
        setVisibility(l1Var.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R$attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(J, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            AtomicInteger atomicInteger = ha.a;
            setBackground(stateListDrawable);
        }
        setCheckable(l1Var.isCheckable());
        setChecked(l1Var.isChecked());
        setEnabled(l1Var.isEnabled());
        setTitle(l1Var.e);
        setIcon(l1Var.getIcon());
        setActionView(l1Var.getActionView());
        setContentDescription(l1Var.q);
        d0.h.g0(this, l1Var.r);
        l1 l1Var2 = this.E;
        if (l1Var2.e == null && l1Var2.getIcon() == null && this.E.getActionView() != null) {
            this.C.setVisibility(8);
            FrameLayout frameLayout = this.D;
            if (frameLayout != null) {
                LinearLayoutCompat.a aVar = (LinearLayoutCompat.a) frameLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) aVar).width = -1;
                this.D.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.C.setVisibility(0);
        FrameLayout frameLayout2 = this.D;
        if (frameLayout2 != null) {
            LinearLayoutCompat.a aVar2 = (LinearLayoutCompat.a) frameLayout2.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) aVar2).width = -2;
            this.D.setLayoutParams(aVar2);
        }
    }

    @Override // q1.a
    public l1 getItemData() {
        return this.E;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        l1 l1Var = this.E;
        if (l1Var != null && l1Var.isCheckable() && this.E.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, J);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.B != z) {
            this.B = z;
            this.I.h(this.C, RecyclerView.a0.FLAG_MOVED);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.C.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) throws Resources.NotFoundException {
        if (drawable != null) {
            if (this.G) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = d0.h.l0(drawable).mutate();
                drawable.setTintList(this.F);
            }
            int i = this.z;
            drawable.setBounds(0, 0, i, i);
        } else if (this.A) {
            if (this.H == null) {
                Drawable drawable2 = getResources().getDrawable(R$drawable.navigation_empty_icon, getContext().getTheme());
                this.H = drawable2;
                if (drawable2 != null) {
                    int i2 = this.z;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.H;
        }
        this.C.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.C.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.z = i;
    }

    public void setIconTintList(ColorStateList colorStateList) throws Resources.NotFoundException {
        this.F = colorStateList;
        this.G = colorStateList != null;
        l1 l1Var = this.E;
        if (l1Var != null) {
            setIcon(l1Var.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.C.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.A = z;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        d0.h.c0(this.C, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.C.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.C.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a aVar = new a();
        this.I = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(R$layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(R$dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R$id.design_menu_item_text);
        this.C = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ha.s(checkedTextView, aVar);
    }
}
