package com.noinnion.android.reader.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import defpackage.ey6;
import defpackage.xi;

/* loaded from: classes2.dex */
public class SlidingTabLayout extends HorizontalScrollView {
    public int e;
    public int f;
    public int g;
    public boolean h;
    public ViewPager i;
    public SparseArray<String> j;
    public ViewPager.j k;
    public final ey6 l;

    public class b implements ViewPager.j {
        public int a;

        public b(a aVar) {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void a(int i, float f, int i2) {
            int childCount = SlidingTabLayout.this.l.getChildCount();
            if (childCount == 0 || i < 0 || i >= childCount) {
                return;
            }
            ey6 ey6Var = SlidingTabLayout.this.l;
            ey6Var.j = i;
            ey6Var.k = f;
            ey6Var.invalidate();
            SlidingTabLayout.this.a(i, SlidingTabLayout.this.l.getChildAt(i) != null ? (int) (r0.getWidth() * f) : 0);
            ViewPager.j jVar = SlidingTabLayout.this.k;
            if (jVar != null) {
                jVar.a(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void b(int i) {
            this.a = i;
            ViewPager.j jVar = SlidingTabLayout.this.k;
            if (jVar != null) {
                jVar.b(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void c(int i) {
            if (this.a == 0) {
                ey6 ey6Var = SlidingTabLayout.this.l;
                ey6Var.j = i;
                ey6Var.k = 0.0f;
                ey6Var.invalidate();
                SlidingTabLayout.this.a(i, 0);
            }
            int i2 = 0;
            while (i2 < SlidingTabLayout.this.l.getChildCount()) {
                SlidingTabLayout.this.l.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            ViewPager.j jVar = SlidingTabLayout.this.k;
            if (jVar != null) {
                jVar.c(i);
            }
        }
    }

    public class c implements View.OnClickListener {
        public c(a aVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            for (int i = 0; i < SlidingTabLayout.this.l.getChildCount(); i++) {
                if (view == SlidingTabLayout.this.l.getChildAt(i)) {
                    SlidingTabLayout.this.i.setCurrentItem(i);
                    return;
                }
            }
        }
    }

    public interface d {
        int a(int i);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public final void a(int i, int i2) {
        View childAt;
        int childCount = this.l.getChildCount();
        if (childCount == 0 || i < 0 || i >= childCount || (childAt = this.l.getChildAt(i)) == null) {
            return;
        }
        int left = childAt.getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left -= this.e;
        }
        scrollTo(left, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.i;
        if (viewPager != null) {
            a(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i, String str) {
        this.j.put(i, str);
    }

    public void setCustomTabColorizer(d dVar) {
        ey6 ey6Var = this.l;
        ey6Var.l = dVar;
        ey6Var.invalidate();
    }

    public void setCustomTabView(int i, int i2) {
        this.f = i;
        this.g = i2;
    }

    public void setDistributeEvenly(boolean z) {
        this.h = z;
    }

    public void setOnPageChangeListener(ViewPager.j jVar) {
        this.k = jVar;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        ey6 ey6Var = this.l;
        ey6Var.l = null;
        ey6Var.m.a = iArr;
        ey6Var.invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        View viewInflate;
        TextView textView;
        this.l.removeAllViews();
        this.i = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b(null));
            xi adapter = this.i.getAdapter();
            c cVar = new c(null);
            for (int i = 0; i < adapter.c(); i++) {
                if (this.f != 0) {
                    viewInflate = LayoutInflater.from(getContext()).inflate(this.f, (ViewGroup) this.l, false);
                    textView = (TextView) viewInflate.findViewById(this.g);
                } else {
                    viewInflate = null;
                    textView = null;
                }
                if (viewInflate == null) {
                    TextView textView2 = new TextView(getContext());
                    textView2.setGravity(17);
                    textView2.setTextSize(2, 12.0f);
                    textView2.setTypeface(Typeface.DEFAULT_BOLD);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    TypedValue typedValue = new TypedValue();
                    getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
                    textView2.setBackgroundResource(typedValue.resourceId);
                    textView2.setAllCaps(true);
                    int i2 = (int) (getResources().getDisplayMetrics().density * 16.0f);
                    textView2.setPadding(i2, i2, i2, i2);
                    viewInflate = textView2;
                }
                if (textView == null && TextView.class.isInstance(viewInflate)) {
                    textView = (TextView) viewInflate;
                }
                if (this.h) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewInflate.getLayoutParams();
                    layoutParams.width = 0;
                    layoutParams.weight = 1.0f;
                }
                textView.setText(adapter.d(i));
                viewInflate.setOnClickListener(cVar);
                String str = this.j.get(i, null);
                if (str != null) {
                    viewInflate.setContentDescription(str);
                }
                this.l.addView(viewInflate);
                if (i == this.i.getCurrentItem()) {
                    viewInflate.setSelected(true);
                }
            }
        }
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new SparseArray<>();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.e = (int) (getResources().getDisplayMetrics().density * 24.0f);
        ey6 ey6Var = new ey6(context);
        this.l = ey6Var;
        addView(ey6Var, -1, -2);
    }
}
