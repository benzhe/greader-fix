package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import defpackage.d0;
import defpackage.xi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.commons.codec.binary.Base64;

@ViewPager.e
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {
    public static final int[] s = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};
    public static final int[] t = {R.attr.textAllCaps};
    public ViewPager e;
    public TextView f;
    public TextView g;
    public TextView h;
    public int i;
    public float j;
    public int k;
    public int l;
    public boolean m;
    public boolean n;
    public final a o;
    public WeakReference<xi> p;
    public int q;
    public int r;

    public class a extends DataSetObserver implements ViewPager.j, ViewPager.i {
        public int a;

        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void a(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.c(i, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void b(int i) {
            this.a = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void c(int i) {
            if (this.a == 0) {
                PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
                pagerTitleStrip.b(pagerTitleStrip.e.getCurrentItem(), PagerTitleStrip.this.e.getAdapter());
                PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
                float f = pagerTitleStrip2.j;
                if (f < 0.0f) {
                    f = 0.0f;
                }
                pagerTitleStrip2.c(pagerTitleStrip2.e.getCurrentItem(), f, true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void d(ViewPager viewPager, xi xiVar, xi xiVar2) {
            PagerTitleStrip.this.a(xiVar, xiVar2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip pagerTitleStrip = PagerTitleStrip.this;
            pagerTitleStrip.b(pagerTitleStrip.e.getCurrentItem(), PagerTitleStrip.this.e.getAdapter());
            PagerTitleStrip pagerTitleStrip2 = PagerTitleStrip.this;
            float f = pagerTitleStrip2.j;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip2.c(pagerTitleStrip2.e.getCurrentItem(), f, true);
        }
    }

    public static class b extends SingleLineTransformationMethod {
        public Locale e;

        public b(Context context) {
            this.e = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.e);
            }
            return null;
        }
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new b(textView.getContext()));
    }

    public void a(xi xiVar, xi xiVar2) {
        if (xiVar != null) {
            xiVar.a.unregisterObserver(this.o);
            this.p = null;
        }
        if (xiVar2 != null) {
            xiVar2.a.registerObserver(this.o);
            this.p = new WeakReference<>(xiVar2);
        }
        ViewPager viewPager = this.e;
        if (viewPager != null) {
            this.i = -1;
            this.j = -1.0f;
            b(viewPager.getCurrentItem(), xiVar2);
            requestLayout();
        }
    }

    public void b(int i, xi xiVar) {
        int iC = xiVar != null ? xiVar.c() : 0;
        this.m = true;
        CharSequence charSequenceD = null;
        this.f.setText((i < 1 || xiVar == null) ? null : xiVar.d(i - 1));
        this.g.setText((xiVar == null || i >= iC) ? null : xiVar.d(i));
        int i2 = i + 1;
        if (i2 < iC && xiVar != null) {
            charSequenceD = xiVar.d(i2);
        }
        this.h.setText(charSequenceD);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.f.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.g.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.h.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.i = i;
        if (!this.n) {
            c(i, this.j, false);
        }
        this.m = false;
    }

    public void c(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (i != this.i) {
            b(i, this.e.getAdapter());
        } else if (!z && f == this.j) {
            return;
        }
        this.n = true;
        int measuredWidth = this.f.getMeasuredWidth();
        int measuredWidth2 = this.g.getMeasuredWidth();
        int measuredWidth3 = this.h.getMeasuredWidth();
        int i6 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i7 = paddingRight + i6;
        int i8 = (width - (paddingLeft + i6)) - i7;
        float f2 = 0.5f + f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i9 = ((width - i7) - ((int) (i8 * f2))) - i6;
        int i10 = measuredWidth2 + i9;
        int baseline = this.f.getBaseline();
        int baseline2 = this.g.getBaseline();
        int baseline3 = this.h.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i11 = iMax - baseline;
        int i12 = iMax - baseline2;
        int i13 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(this.f.getMeasuredHeight() + i11, this.g.getMeasuredHeight() + i12), this.h.getMeasuredHeight() + i13);
        int i14 = this.l & 112;
        if (i14 == 16) {
            i2 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        } else {
            if (i14 != 80) {
                i3 = i11 + paddingTop;
                i4 = i12 + paddingTop;
                i5 = paddingTop + i13;
                TextView textView = this.g;
                textView.layout(i9, i4, i10, textView.getMeasuredHeight() + i4);
                int iMin = Math.min(paddingLeft, (i9 - this.k) - measuredWidth);
                TextView textView2 = this.f;
                textView2.layout(iMin, i3, measuredWidth + iMin, textView2.getMeasuredHeight() + i3);
                int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.k);
                TextView textView3 = this.h;
                textView3.layout(iMax3, i5, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i5);
                this.j = f;
                this.n = false;
            }
            i2 = (height - paddingBottom) - iMax2;
        }
        i3 = i11 + i2;
        i4 = i12 + i2;
        i5 = i2 + i13;
        TextView textView4 = this.g;
        textView4.layout(i9, i4, i10, textView4.getMeasuredHeight() + i4);
        int iMin2 = Math.min(paddingLeft, (i9 - this.k) - measuredWidth);
        TextView textView22 = this.f;
        textView22.layout(iMin2, i3, measuredWidth + iMin2, textView22.getMeasuredHeight() + i3);
        int iMax32 = Math.max((width - paddingRight) - measuredWidth3, i10 + this.k);
        TextView textView32 = this.h;
        textView32.layout(iMax32, i5, iMax32 + measuredWidth3, textView32.getMeasuredHeight() + i5);
        this.j = f;
        this.n = false;
    }

    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        xi adapter = viewPager.getAdapter();
        a aVar = this.o;
        viewPager.a0 = aVar;
        if (viewPager.b0 == null) {
            viewPager.b0 = new ArrayList();
        }
        viewPager.b0.add(aVar);
        this.e = viewPager;
        WeakReference<xi> weakReference = this.p;
        a(weakReference != null ? weakReference.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.e;
        if (viewPager != null) {
            a(viewPager.getAdapter(), null);
            ViewPager viewPager2 = this.e;
            ViewPager.j jVar = viewPager2.a0;
            viewPager2.a0 = null;
            a aVar = this.o;
            List<ViewPager.i> list = viewPager2.b0;
            if (list != null) {
                list.remove(aVar);
            }
            this.e = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.e != null) {
            float f = this.j;
            if (f < 0.0f) {
                f = 0.0f;
            }
            c(this.i, f, true);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iMax;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.f.measure(childMeasureSpec2, childMeasureSpec);
        this.g.measure(childMeasureSpec2, childMeasureSpec);
        this.h.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i2);
        } else {
            iMax = Math.max(getMinHeight(), this.g.getMeasuredHeight() + paddingBottom);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i2, this.g.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.m) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i) {
        this.l = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(float f) {
        int i = ((int) (f * 255.0f)) & Base64.BASELENGTH;
        this.q = i;
        int i2 = (i << 24) | (this.r & 16777215);
        this.f.setTextColor(i2);
        this.h.setTextColor(i2);
    }

    public void setTextColor(int i) {
        this.r = i;
        this.g.setTextColor(i);
        int i2 = (this.q << 24) | (this.r & 16777215);
        this.f.setTextColor(i2);
        this.h.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.f.setTextSize(i, f);
        this.g.setTextSize(i, f);
        this.h.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.k = i;
        requestLayout();
    }

    public PagerTitleStrip(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.i = -1;
        this.j = -1.0f;
        this.o = new a();
        TextView textView = new TextView(context);
        this.f = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.g = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.h = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s);
        boolean z = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            d0.h.c0(this.f, resourceId);
            d0.h.c0(this.g, resourceId);
            d0.h.c0(this.h, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f.setTextColor(color);
            this.g.setTextColor(color);
            this.h.setTextColor(color);
        }
        this.l = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.r = this.g.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.f.setEllipsize(TextUtils.TruncateAt.END);
        this.g.setEllipsize(TextUtils.TruncateAt.END);
        this.h.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, t);
            z = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.f);
            setSingleLineAllCaps(this.g);
            setSingleLineAllCaps(this.h);
        } else {
            this.f.setSingleLine();
            this.g.setSingleLine();
            this.h.setSingleLine();
        }
        this.k = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }
}
