package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import defpackage.ha;
import defpackage.i3;
import defpackage.j1;
import defpackage.p0;
import defpackage.q1;
import defpackage.v0;
import defpackage.w1;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ActionBarContextView extends w1 {
    public CharSequence m;
    public CharSequence n;
    public View o;
    public View p;
    public LinearLayout q;
    public TextView r;
    public TextView s;
    public int t;
    public int u;
    public boolean v;
    public int w;

    public class a implements View.OnClickListener {
        public final /* synthetic */ v0 e;

        public a(ActionBarContextView actionBarContextView, v0 v0Var) {
            this.e = v0Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.e.c();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public void f(v0 v0Var) {
        View view = this.o;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.w, (ViewGroup) this, false);
            this.o = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.o);
        }
        this.o.findViewById(R$id.action_mode_close_button).setOnClickListener(new a(this, v0Var));
        j1 j1Var = (j1) v0Var.e();
        ActionMenuPresenter actionMenuPresenter = this.h;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.h = actionMenuPresenter2;
        actionMenuPresenter2.q = true;
        actionMenuPresenter2.r = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        j1Var.b(this.h, this.f);
        ActionMenuPresenter actionMenuPresenter3 = this.h;
        q1 q1Var = actionMenuPresenter3.l;
        if (q1Var == null) {
            q1 q1Var2 = (q1) actionMenuPresenter3.h.inflate(actionMenuPresenter3.j, (ViewGroup) this, false);
            actionMenuPresenter3.l = q1Var2;
            q1Var2.b(actionMenuPresenter3.g);
            actionMenuPresenter3.o(true);
        }
        q1 q1Var3 = actionMenuPresenter3.l;
        if (q1Var != q1Var3) {
            ((ActionMenuView) q1Var3).setPresenter(actionMenuPresenter3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) q1Var3;
        this.g = actionMenuView;
        AtomicInteger atomicInteger = ha.a;
        actionMenuView.setBackground(null);
        addView(this.g, layoutParams);
    }

    public final void g() {
        if (this.q == null) {
            LayoutInflater.from(getContext()).inflate(R$layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.q = linearLayout;
            this.r = (TextView) linearLayout.findViewById(R$id.action_bar_title);
            this.s = (TextView) this.q.findViewById(R$id.action_bar_subtitle);
            if (this.t != 0) {
                this.r.setTextAppearance(getContext(), this.t);
            }
            if (this.u != 0) {
                this.s.setTextAppearance(getContext(), this.u);
            }
        }
        this.r.setText(this.m);
        this.s.setText(this.n);
        boolean z = !TextUtils.isEmpty(this.m);
        boolean z2 = !TextUtils.isEmpty(this.n);
        int i = 0;
        this.s.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.q;
        if (!z && !z2) {
            i = 8;
        }
        linearLayout2.setVisibility(i);
        if (this.q.getParent() == null) {
            addView(this.q);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // defpackage.w1
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // defpackage.w1
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.n;
    }

    public CharSequence getTitle() {
        return this.m;
    }

    public void h() {
        removeAllViews();
        this.p = null;
        this.g = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.h;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.d();
            this.h.e();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.m);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean zB = i3.b(this);
        int paddingRight = zB ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.o;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
            int i5 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = zB ? paddingRight - i5 : paddingRight + i5;
            int iD = i7 + d(this.o, i7, paddingTop, paddingTop2, zB);
            paddingRight = zB ? iD - i6 : iD + i6;
        }
        int iD2 = paddingRight;
        LinearLayout linearLayout = this.q;
        if (linearLayout != null && this.p == null && linearLayout.getVisibility() != 8) {
            iD2 += d(this.q, iD2, paddingTop, paddingTop2, zB);
        }
        int i8 = iD2;
        View view2 = this.p;
        if (view2 != null) {
            d(view2, i8, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.g;
        if (actionMenuView != null) {
            d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.i;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.o;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.g;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.g, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.q;
        if (linearLayout != null && this.p == null) {
            if (this.v) {
                this.q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.q.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.q.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.p;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i3 = layoutParams.width;
            int i4 = i3 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i3 >= 0) {
                paddingLeft = Math.min(i3, paddingLeft);
            }
            int i5 = layoutParams.height;
            int i6 = i5 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i5 >= 0) {
                iMin = Math.min(i5, iMin);
            }
            this.p.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i4), View.MeasureSpec.makeMeasureSpec(iMin, i6));
        }
        if (this.i > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            int measuredHeight = getChildAt(i8).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i7) {
                i7 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i7);
    }

    @Override // defpackage.w1
    public void setContentHeight(int i) {
        this.i = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.p;
        if (view2 != null) {
            removeView(view2);
        }
        this.p = view;
        if (view != null && (linearLayout = this.q) != null) {
            removeView(linearLayout);
            this.q = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.n = charSequence;
        g();
    }

    public void setTitle(CharSequence charSequence) {
        this.m = charSequence;
        g();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.v) {
            requestLayout();
        }
        this.v = z;
    }

    @Override // defpackage.w1, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        int resourceId;
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMode, i, 0);
        int i2 = R$styleable.ActionMode_background;
        if (typedArrayObtainStyledAttributes.hasValue(i2) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0)) != 0) {
            drawable = p0.b(context, resourceId);
        } else {
            drawable = typedArrayObtainStyledAttributes.getDrawable(i2);
        }
        AtomicInteger atomicInteger = ha.a;
        setBackground(drawable);
        this.t = typedArrayObtainStyledAttributes.getResourceId(R$styleable.ActionMode_titleTextStyle, 0);
        this.u = typedArrayObtainStyledAttributes.getResourceId(R$styleable.ActionMode_subtitleTextStyle, 0);
        this.i = typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionMode_height, 0);
        this.w = typedArrayObtainStyledAttributes.getResourceId(R$styleable.ActionMode_closeItemLayout, R$layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }
}
