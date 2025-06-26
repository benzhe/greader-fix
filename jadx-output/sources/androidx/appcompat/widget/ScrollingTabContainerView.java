package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$bool;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.LinearLayoutCompat;
import defpackage.d0;
import defpackage.p0;
import defpackage.u;
import defpackage.v2;
import java.util.Objects;

/* loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    public Runnable e;
    public LinearLayoutCompat f;
    public Spinner g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public int l;

    public class a extends BaseAdapter {
        public a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return ScrollingTabContainerView.this.f.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((b) ScrollingTabContainerView.this.f.getChildAt(i)).f;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view != null) {
                b bVar = (b) view;
                bVar.f = ((b) ScrollingTabContainerView.this.f.getChildAt(i)).f;
                bVar.a();
                return view;
            }
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            u.c cVar = ((b) scrollingTabContainerView.f.getChildAt(i)).f;
            Objects.requireNonNull(scrollingTabContainerView);
            b bVar2 = scrollingTabContainerView.new b(scrollingTabContainerView.getContext(), cVar, true);
            bVar2.setBackgroundDrawable(null);
            bVar2.setLayoutParams(new AbsListView.LayoutParams(-1, scrollingTabContainerView.k));
            return bVar2;
        }
    }

    public class b extends LinearLayout {
        public final int[] e;
        public u.c f;
        public TextView g;
        public ImageView h;
        public View i;

        /* JADX WARN: Illegal instructions before constructor call */
        public b(Context context, u.c cVar, boolean z) {
            int resourceId;
            int i = R$attr.actionBarTabStyle;
            super(context, null, i);
            int[] iArr = {R.attr.background};
            this.e = iArr;
            this.f = cVar;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, i, 0);
            if (typedArrayObtainStyledAttributes.hasValue(0)) {
                setBackgroundDrawable((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : p0.b(context, resourceId));
            }
            typedArrayObtainStyledAttributes.recycle();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public void a() {
            u.c cVar = this.f;
            View viewB = cVar.b();
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.i = viewB;
                TextView textView = this.g;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.h;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.h.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.i;
            if (view != null) {
                removeView(view);
                this.i = null;
            }
            Drawable drawableC = cVar.c();
            CharSequence charSequenceD = cVar.d();
            if (drawableC != null) {
                if (this.h == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.h = appCompatImageView;
                }
                this.h.setImageDrawable(drawableC);
                this.h.setVisibility(0);
            } else {
                ImageView imageView2 = this.h;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.h.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceD);
            if (z) {
                if (this.g == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R$attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.g = appCompatTextView;
                }
                this.g.setText(charSequenceD);
                this.g.setVisibility(0);
            } else {
                TextView textView2 = this.g;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.g.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.h;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.a());
            }
            d0.h.g0(this, z ? null : cVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (ScrollingTabContainerView.this.i > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = ScrollingTabContainerView.this.i;
                if (measuredWidth > i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    public class c extends AnimatorListenerAdapter {
        public boolean a = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            Objects.requireNonNull(ScrollingTabContainerView.this);
            ScrollingTabContainerView.this.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.a = false;
        }
    }

    static {
        new DecelerateInterpolator();
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        new c();
        setHorizontalScrollBarEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0);
        layoutDimension = context.getResources().getBoolean(R$bool.abc_action_bar_embed_tabs) ? layoutDimension : Math.min(layoutDimension, context.getResources().getDimensionPixelSize(R$dimen.abc_action_bar_stacked_max_height));
        typedArrayObtainStyledAttributes.recycle();
        setContentHeight(layoutDimension);
        this.j = context.getResources().getDimensionPixelSize(R$dimen.abc_action_bar_stacked_tab_max_width);
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R$attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        this.f = linearLayoutCompat;
        addView(linearLayoutCompat, new ViewGroup.LayoutParams(-2, -1));
    }

    public final boolean a() {
        Spinner spinner = this.g;
        if (!(spinner != null && spinner.getParent() == this)) {
            return false;
        }
        removeView(this.g);
        addView(this.f, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.g.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.e;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Context context = getContext();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.ActionBar, R$attr.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(R$styleable.ActionBar_height, 0);
        Resources resources = context.getResources();
        if (!context.getResources().getBoolean(R$bool.abc_action_bar_embed_tabs)) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(R$dimen.abc_action_bar_stacked_max_height));
        }
        typedArrayObtainStyledAttributes.recycle();
        setContentHeight(layoutDimension);
        this.j = context.getResources().getDimensionPixelSize(R$dimen.abc_action_bar_stacked_tab_max_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.e;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ((b) view).f.e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.f.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.i = -1;
        } else {
            if (childCount > 2) {
                this.i = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.i = View.MeasureSpec.getSize(i) / 2;
            }
            this.i = Math.min(this.i, this.j);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.k, 1073741824);
        if (!z && this.h) {
            this.f.measure(0, iMakeMeasureSpec);
            if (this.f.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                Spinner spinner = this.g;
                if (!(spinner != null && spinner.getParent() == this)) {
                    if (this.g == null) {
                        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R$attr.actionDropDownStyle);
                        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
                        appCompatSpinner.setOnItemSelectedListener(this);
                        this.g = appCompatSpinner;
                    }
                    removeView(this.f);
                    addView(this.g, new ViewGroup.LayoutParams(-2, -1));
                    if (this.g.getAdapter() == null) {
                        this.g.setAdapter((SpinnerAdapter) new a());
                    }
                    Runnable runnable = this.e;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                        this.e = null;
                    }
                    this.g.setSelection(this.l);
                }
            } else {
                a();
            }
        } else {
            a();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.l);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.h = z;
    }

    public void setContentHeight(int i) {
        this.k = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.l = i;
        int childCount = this.f.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.f.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                View childAt2 = this.f.getChildAt(i);
                Runnable runnable = this.e;
                if (runnable != null) {
                    removeCallbacks(runnable);
                }
                v2 v2Var = new v2(this, childAt2);
                this.e = v2Var;
                post(v2Var);
            }
            i2++;
        }
        Spinner spinner = this.g;
        if (spinner == null || i < 0) {
            return;
        }
        spinner.setSelection(i);
    }
}
