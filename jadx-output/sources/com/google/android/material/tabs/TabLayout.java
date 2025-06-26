package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.badge.BadgeDrawable;
import defpackage.ba5;
import defpackage.c50;
import defpackage.c65;
import defpackage.d0;
import defpackage.fc5;
import defpackage.ga;
import defpackage.ha;
import defpackage.i55;
import defpackage.la5;
import defpackage.mb5;
import defpackage.nb5;
import defpackage.ob5;
import defpackage.p0;
import defpackage.sa;
import defpackage.t85;
import defpackage.t9;
import defpackage.u75;
import defpackage.u9;
import defpackage.xi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

@ViewPager.e
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final int U = R$style.Widget_Design_TabLayout;
    public static final t9<g> V = new u9(16);
    public int A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public int G;
    public boolean H;
    public nb5 I;
    public c J;
    public final ArrayList<c> K;
    public c L;
    public ValueAnimator M;
    public ViewPager N;
    public xi O;
    public DataSetObserver P;
    public h Q;
    public b R;
    public boolean S;
    public final t9<TabView> T;
    public final ArrayList<g> e;
    public g f;
    public final f g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public ColorStateList m;
    public ColorStateList n;
    public ColorStateList o;
    public Drawable p;
    public int q;
    public PorterDuff.Mode r;
    public float s;
    public float t;
    public final int u;
    public int v;
    public final int w;
    public final int x;
    public final int y;
    public int z;

    public final class TabView extends LinearLayout {
        public static final /* synthetic */ int p = 0;
        public g e;
        public TextView f;
        public ImageView g;
        public View h;
        public BadgeDrawable i;
        public View j;
        public TextView k;
        public ImageView l;
        public Drawable m;
        public int n;

        public TabView(Context context) {
            super(context);
            this.n = 2;
            g(context);
            int i = TabLayout.this.h;
            int i2 = TabLayout.this.i;
            int i3 = TabLayout.this.j;
            int i4 = TabLayout.this.k;
            AtomicInteger atomicInteger = ha.a;
            setPaddingRelative(i, i2, i3, i4);
            setGravity(17);
            setOrientation(!TabLayout.this.E ? 1 : 0);
            setClickable(true);
            ha.u(this, ga.a(getContext(), 1002));
        }

        private BadgeDrawable getBadge() {
            return this.i;
        }

        private BadgeDrawable getOrCreateBadge() throws Resources.NotFoundException {
            if (this.i == null) {
                Context context = getContext();
                int i = BadgeDrawable.v;
                int i2 = BadgeDrawable.u;
                BadgeDrawable badgeDrawable = new BadgeDrawable(context);
                int[] iArr = R$styleable.Badge;
                t85.a(context, null, i, i2);
                t85.b(context, null, iArr, i, i2, new int[0]);
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, i, i2);
                badgeDrawable.j(typedArrayObtainStyledAttributes.getInt(R$styleable.Badge_maxCharacterCount, 4));
                int i3 = R$styleable.Badge_number;
                if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                    badgeDrawable.k(typedArrayObtainStyledAttributes.getInt(i3, 0));
                }
                badgeDrawable.g(c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.Badge_backgroundColor).getDefaultColor());
                int i4 = R$styleable.Badge_badgeTextColor;
                if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                    badgeDrawable.i(c50.a0(context, typedArrayObtainStyledAttributes, i4).getDefaultColor());
                }
                badgeDrawable.h(typedArrayObtainStyledAttributes.getInt(R$styleable.Badge_badgeGravity, 8388661));
                badgeDrawable.l.o = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.Badge_horizontalOffset, 0);
                badgeDrawable.m();
                badgeDrawable.l.p = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.Badge_verticalOffset, 0);
                badgeDrawable.m();
                typedArrayObtainStyledAttributes.recycle();
                this.i = badgeDrawable;
            }
            d();
            BadgeDrawable badgeDrawable2 = this.i;
            if (badgeDrawable2 != null) {
                return badgeDrawable2;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        public final boolean a() {
            return this.i != null;
        }

        public final void b(View view) throws Resources.NotFoundException {
            if (a() && view != null) {
                setClipChildren(false);
                setClipToPadding(false);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(false);
                    viewGroup.setClipToPadding(false);
                }
                c65.a(this.i, view, null);
                this.h = view;
            }
        }

        public final void c() {
            if (a()) {
                setClipChildren(true);
                setClipToPadding(true);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(true);
                    viewGroup.setClipToPadding(true);
                }
                View view = this.h;
                if (view != null) {
                    c65.b(this.i, view);
                    this.h = null;
                }
            }
        }

        public final void d() throws Resources.NotFoundException {
            g gVar;
            g gVar2;
            if (a()) {
                if (this.j != null) {
                    c();
                    return;
                }
                ImageView imageView = this.g;
                if (imageView != null && (gVar2 = this.e) != null && gVar2.a != null) {
                    if (this.h == imageView) {
                        e(imageView);
                        return;
                    } else {
                        c();
                        b(this.g);
                        return;
                    }
                }
                if (this.f == null || (gVar = this.e) == null) {
                    c();
                    return;
                }
                Objects.requireNonNull(gVar);
                View view = this.h;
                TextView textView = this.f;
                if (view == textView) {
                    e(textView);
                } else {
                    c();
                    b(this.f);
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.m;
            boolean state = false;
            if (drawable != null && drawable.isStateful()) {
                state = false | this.m.setState(drawableState);
            }
            if (state) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public final void e(View view) {
            if (a() && view == this.h) {
                c65.c(this.i, view, null);
            }
        }

        public final void f() throws Resources.NotFoundException {
            Drawable drawable;
            g gVar = this.e;
            Drawable drawableMutate = null;
            View view = gVar != null ? gVar.e : null;
            if (view != null) {
                ViewParent parent = view.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    addView(view);
                }
                this.j = view;
                TextView textView = this.f;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.g;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.g.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(R.id.text1);
                this.k = textView2;
                if (textView2 != null) {
                    this.n = textView2.getMaxLines();
                }
                this.l = (ImageView) view.findViewById(R.id.icon);
            } else {
                View view2 = this.j;
                if (view2 != null) {
                    removeView(view2);
                    this.j = null;
                }
                this.k = null;
                this.l = null;
            }
            boolean z = false;
            if (this.j == null) {
                if (this.g == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.g = imageView2;
                    addView(imageView2, 0);
                }
                if (gVar != null && (drawable = gVar.a) != null) {
                    drawableMutate = d0.h.l0(drawable).mutate();
                }
                if (drawableMutate != null) {
                    drawableMutate.setTintList(TabLayout.this.n);
                    PorterDuff.Mode mode = TabLayout.this.r;
                    if (mode != null) {
                        drawableMutate.setTintMode(mode);
                    }
                }
                if (this.f == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.f = textView3;
                    addView(textView3);
                    this.n = this.f.getMaxLines();
                }
                d0.h.c0(this.f, TabLayout.this.l);
                ColorStateList colorStateList = TabLayout.this.m;
                if (colorStateList != null) {
                    this.f.setTextColor(colorStateList);
                }
                h(this.f, this.g);
                d();
                ImageView imageView3 = this.g;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new ob5(this, imageView3));
                }
                TextView textView4 = this.f;
                if (textView4 != null) {
                    textView4.addOnLayoutChangeListener(new ob5(this, textView4));
                }
            } else {
                TextView textView5 = this.k;
                if (textView5 != null || this.l != null) {
                    h(textView5, this.l);
                }
            }
            if (gVar != null && !TextUtils.isEmpty(gVar.c)) {
                setContentDescription(gVar.c);
            }
            if (gVar != null) {
                TabLayout tabLayout = gVar.f;
                if (tabLayout == null) {
                    throw new IllegalArgumentException("Tab not attached to a TabLayout");
                }
                if (tabLayout.getSelectedTabPosition() == gVar.d) {
                    z = true;
                }
            }
            setSelected(z);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View, android.widget.LinearLayout, com.google.android.material.tabs.TabLayout$TabView] */
        public final void g(Context context) {
            int i = TabLayout.this.u;
            if (i != 0) {
                Drawable drawableB = p0.b(context, i);
                this.m = drawableB;
                if (drawableB != null && drawableB.isStateful()) {
                    this.m.setState(getDrawableState());
                }
            } else {
                this.m = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            if (TabLayout.this.o != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateListA = ba5.a(TabLayout.this.o);
                boolean z = TabLayout.this.H;
                if (z) {
                    gradientDrawable = null;
                }
                gradientDrawable = new RippleDrawable(colorStateListA, gradientDrawable, z ? null : gradientDrawable2);
            }
            AtomicInteger atomicInteger = ha.a;
            setBackground(gradientDrawable);
            TabLayout.this.invalidate();
        }

        public int getContentHeight() {
            View[] viewArr = {this.f, this.g, this.j};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f, this.g, this.j};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        public g getTab() {
            return this.e;
        }

        public final void h(TextView textView, ImageView imageView) {
            Drawable drawable;
            g gVar = this.e;
            Drawable drawableMutate = (gVar == null || (drawable = gVar.a) == null) ? null : d0.h.l0(drawable).mutate();
            g gVar2 = this.e;
            CharSequence charSequence = gVar2 != null ? gVar2.b : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequence);
            if (textView != null) {
                if (z) {
                    textView.setText(charSequence);
                    Objects.requireNonNull(this.e);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iP = (z && imageView.getVisibility() == 0) ? (int) c50.P(getContext(), 8) : 0;
                if (TabLayout.this.E) {
                    if (iP != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(iP);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iP != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iP;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            g gVar3 = this.e;
            CharSequence charSequence2 = gVar3 != null ? gVar3.c : null;
            if (Build.VERSION.SDK_INT > 23) {
                if (!z) {
                    charSequence = charSequence2;
                }
                d0.h.g0(this, charSequence);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) throws Resources.NotFoundException {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.i;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfo.setContentDescription(((Object) getContentDescription()) + ", " + ((Object) this.i.c()));
            }
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) sa.c.a(0, 1, this.e.d, 1, false, isSelected()).a);
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) sa.a.g.a);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R$string.item_view_role_description));
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(int r8, int r9) {
            /*
                r7 = this;
                int r0 = android.view.View.MeasureSpec.getSize(r8)
                int r1 = android.view.View.MeasureSpec.getMode(r8)
                com.google.android.material.tabs.TabLayout r2 = com.google.android.material.tabs.TabLayout.this
                int r2 = r2.getTabMaxWidth()
                if (r2 <= 0) goto L1e
                if (r1 == 0) goto L14
                if (r0 <= r2) goto L1e
            L14:
                com.google.android.material.tabs.TabLayout r8 = com.google.android.material.tabs.TabLayout.this
                int r8 = r8.v
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r0)
            L1e:
                super.onMeasure(r8, r9)
                android.widget.TextView r0 = r7.f
                if (r0 == 0) goto La6
                com.google.android.material.tabs.TabLayout r0 = com.google.android.material.tabs.TabLayout.this
                float r0 = r0.s
                int r1 = r7.n
                android.widget.ImageView r2 = r7.g
                r3 = 1
                if (r2 == 0) goto L38
                int r2 = r2.getVisibility()
                if (r2 != 0) goto L38
                r1 = 1
                goto L46
            L38:
                android.widget.TextView r2 = r7.f
                if (r2 == 0) goto L46
                int r2 = r2.getLineCount()
                if (r2 <= r3) goto L46
                com.google.android.material.tabs.TabLayout r0 = com.google.android.material.tabs.TabLayout.this
                float r0 = r0.t
            L46:
                android.widget.TextView r2 = r7.f
                float r2 = r2.getTextSize()
                android.widget.TextView r4 = r7.f
                int r4 = r4.getLineCount()
                android.widget.TextView r5 = r7.f
                int r5 = r5.getMaxLines()
                int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r2 != 0) goto L60
                if (r5 < 0) goto La6
                if (r1 == r5) goto La6
            L60:
                com.google.android.material.tabs.TabLayout r5 = com.google.android.material.tabs.TabLayout.this
                int r5 = r5.D
                r6 = 0
                if (r5 != r3) goto L97
                if (r2 <= 0) goto L97
                if (r4 != r3) goto L97
                android.widget.TextView r2 = r7.f
                android.text.Layout r2 = r2.getLayout()
                if (r2 == 0) goto L96
                float r4 = r2.getLineWidth(r6)
                android.text.TextPaint r2 = r2.getPaint()
                float r2 = r2.getTextSize()
                float r2 = r0 / r2
                float r2 = r2 * r4
                int r4 = r7.getMeasuredWidth()
                int r5 = r7.getPaddingLeft()
                int r4 = r4 - r5
                int r5 = r7.getPaddingRight()
                int r4 = r4 - r5
                float r4 = (float) r4
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 <= 0) goto L97
            L96:
                r3 = 0
            L97:
                if (r3 == 0) goto La6
                android.widget.TextView r2 = r7.f
                r2.setTextSize(r6, r0)
                android.widget.TextView r0 = r7.f
                r0.setMaxLines(r1)
                super.onMeasure(r8, r9)
            La6:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.e == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            g gVar = this.e;
            TabLayout tabLayout = gVar.f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.k(gVar, true);
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            if (isSelected() != z) {
            }
            super.setSelected(z);
            TextView textView = this.f;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.g;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.j;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(g gVar) throws Resources.NotFoundException {
            if (gVar != this.e) {
                this.e = gVar;
                f();
            }
        }
    }

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    public class b implements ViewPager.i {
        public boolean a;

        public b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void d(ViewPager viewPager, xi xiVar, xi xiVar2) throws Resources.NotFoundException {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.N == viewPager) {
                tabLayout.l(xiVar2, this.a);
            }
        }
    }

    @Deprecated
    public interface c<T extends g> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    public interface d extends c<g> {
    }

    public class e extends DataSetObserver {
        public e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws Resources.NotFoundException {
            TabLayout.this.j();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() throws Resources.NotFoundException {
            TabLayout.this.j();
        }
    }

    public class f extends LinearLayout {
        public ValueAnimator e;
        public int f;
        public float g;
        public int h;

        public class a implements ValueAnimator.AnimatorUpdateListener {
            public final /* synthetic */ View a;
            public final /* synthetic */ View b;

            public a(View view, View view2) {
                this.a = view;
                this.b = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                f.this.c(this.a, this.b, valueAnimator.getAnimatedFraction());
            }
        }

        public class b extends AnimatorListenerAdapter {
            public final /* synthetic */ int a;

            public b(int i) {
                this.a = i;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                f.this.f = this.a;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                f.this.f = this.a;
            }
        }

        public f(Context context) {
            super(context);
            this.f = -1;
            this.h = -1;
            setWillNotDraw(false);
        }

        public final void a() {
            View childAt = getChildAt(this.f);
            TabLayout tabLayout = TabLayout.this;
            nb5 nb5Var = tabLayout.I;
            Drawable drawable = tabLayout.p;
            Objects.requireNonNull(nb5Var);
            RectF rectFA = nb5.a(tabLayout, childAt);
            drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
        }

        public void b(int i) {
            Rect bounds = TabLayout.this.p.getBounds();
            TabLayout.this.p.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        public final void c(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                TabLayout tabLayout = TabLayout.this;
                tabLayout.I.b(tabLayout, view, view2, f, tabLayout.p);
            } else {
                Drawable drawable = TabLayout.this.p;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.p.getBounds().bottom);
            }
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }

        public final void d(boolean z, int i, int i2) {
            View childAt = getChildAt(this.f);
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                a();
                return;
            }
            a aVar = new a(childAt, childAt2);
            if (!z) {
                this.e.removeAllUpdateListeners();
                this.e.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.e = valueAnimator;
            valueAnimator.setInterpolator(i55.b);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.addListener(new b(i));
            valueAnimator.start();
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int iHeight = TabLayout.this.p.getBounds().height();
            if (iHeight < 0) {
                iHeight = TabLayout.this.p.getIntrinsicHeight();
            }
            int i = TabLayout.this.C;
            int height = 0;
            if (i == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i == 1) {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            } else if (i != 2) {
                iHeight = i != 3 ? 0 : getHeight();
            }
            if (TabLayout.this.p.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.p.getBounds();
                TabLayout.this.p.setBounds(bounds.left, height, bounds.right, iHeight);
                TabLayout tabLayout = TabLayout.this;
                Drawable drawableL0 = tabLayout.p;
                if (tabLayout.q != 0) {
                    drawableL0 = d0.h.l0(drawableL0);
                    if (Build.VERSION.SDK_INT == 21) {
                        drawableL0.setColorFilter(TabLayout.this.q, PorterDuff.Mode.SRC_IN);
                    } else {
                        drawableL0.setTint(TabLayout.this.q);
                    }
                }
                drawableL0.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.e;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                a();
            } else {
                d(false, this.f, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.A == 1 || tabLayout.D == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) c50.P(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.A = 0;
                    tabLayout2.p(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.h == i) {
                return;
            }
            requestLayout();
            this.h = i;
        }
    }

    public static class g {
        public Drawable a;
        public CharSequence b;
        public CharSequence c;
        public View e;
        public TabLayout f;
        public TabView g;
        public int d = -1;
        public int h = -1;

        public g a(CharSequence charSequence) throws Resources.NotFoundException {
            if (TextUtils.isEmpty(this.c) && !TextUtils.isEmpty(charSequence)) {
                this.g.setContentDescription(charSequence);
            }
            this.b = charSequence;
            b();
            return this;
        }

        public void b() throws Resources.NotFoundException {
            TabView tabView = this.g;
            if (tabView != null) {
                tabView.f();
            }
        }
    }

    public static class h implements ViewPager.j {
        public final WeakReference<TabLayout> a;
        public int b;
        public int c;

        public h(TabLayout tabLayout) {
            this.a = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void a(int i, float f, int i2) {
            TabLayout tabLayout = this.a.get();
            if (tabLayout != null) {
                int i3 = this.c;
                tabLayout.setScrollPosition(i, f, i3 != 2 || this.b == 1, (i3 == 2 && this.b == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void b(int i) {
            this.b = this.c;
            this.c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void c(int i) {
            TabLayout tabLayout = this.a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.c;
            tabLayout.k(tabLayout.h(i), i2 == 0 || (i2 == 2 && this.b == 0));
        }
    }

    public static class i implements d {
        public final ViewPager a;

        public i(ViewPager viewPager) {
            this.a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void a(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void b(g gVar) throws Resources.NotFoundException {
            this.a.setCurrentItem(gVar.d);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void c(g gVar) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public static ColorStateList f(int i2, int i3) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i3, i2});
    }

    private int getDefaultHeight() {
        int size = this.e.size();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                g gVar = this.e.get(i2);
                if (gVar != null && gVar.a != null && !TextUtils.isEmpty(gVar.b)) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return (!z || this.E) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.w;
        if (i2 != -1) {
            return i2;
        }
        int i3 = this.D;
        if (i3 == 0 || i3 == 2) {
            return this.y;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.g.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.g.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.g.getChildAt(i3);
                boolean z = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z = false;
                }
                childAt.setActivated(z);
                i3++;
            }
        }
    }

    public void a(g gVar, boolean z) {
        int size = this.e.size();
        if (gVar.f != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        gVar.d = size;
        this.e.add(size, gVar);
        int size2 = this.e.size();
        while (true) {
            size++;
            if (size >= size2) {
                break;
            } else {
                this.e.get(size).d = size;
            }
        }
        TabView tabView = gVar.g;
        tabView.setSelected(false);
        tabView.setActivated(false);
        f fVar = this.g;
        int i2 = gVar.d;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        o(layoutParams);
        fVar.addView(tabView, i2, layoutParams);
        if (z) {
            TabLayout tabLayout = gVar.f;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.k(gVar, true);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) throws Resources.NotFoundException {
        b(view);
    }

    public final void b(View view) throws Resources.NotFoundException {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        TabItem tabItem = (TabItem) view;
        g gVarI = i();
        CharSequence charSequence = tabItem.e;
        if (charSequence != null) {
            gVarI.a(charSequence);
        }
        Drawable drawable = tabItem.f;
        if (drawable != null) {
            gVarI.a = drawable;
            TabLayout tabLayout = gVarI.f;
            if (tabLayout.A == 1 || tabLayout.D == 2) {
                tabLayout.p(true);
            }
            gVarI.b();
        }
        int i2 = tabItem.g;
        if (i2 != 0) {
            gVarI.e = LayoutInflater.from(gVarI.g.getContext()).inflate(i2, (ViewGroup) gVarI.g, false);
            gVarI.b();
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            gVarI.c = tabItem.getContentDescription();
            gVarI.b();
        }
        a(gVarI, this.e.isEmpty());
    }

    public final void c(int i2) {
        boolean z;
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() != null) {
            AtomicInteger atomicInteger = ha.a;
            if (isLaidOut()) {
                f fVar = this.g;
                int childCount = fVar.getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        z = false;
                        break;
                    } else {
                        if (fVar.getChildAt(i3).getWidth() <= 0) {
                            z = true;
                            break;
                        }
                        i3++;
                    }
                }
                if (!z) {
                    int scrollX = getScrollX();
                    int iE = e(i2, 0.0f);
                    if (scrollX != iE) {
                        g();
                        this.M.setIntValues(scrollX, iE);
                        this.M.start();
                    }
                    f fVar2 = this.g;
                    int i4 = this.B;
                    ValueAnimator valueAnimator = fVar2.e;
                    if (valueAnimator != null && valueAnimator.isRunning()) {
                        fVar2.e.cancel();
                    }
                    fVar2.d(true, i2, i4);
                    return;
                }
            }
        }
        setScrollPosition(i2, 0.0f, true);
    }

    public final void d() {
        int i2 = this.D;
        int iMax = (i2 == 0 || i2 == 2) ? Math.max(0, this.z - this.h) : 0;
        f fVar = this.g;
        AtomicInteger atomicInteger = ha.a;
        fVar.setPaddingRelative(iMax, 0, 0, 0);
        int i3 = this.D;
        if (i3 == 0) {
            int i4 = this.A;
            if (i4 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i4 == 1) {
                this.g.setGravity(1);
            } else if (i4 == 2) {
            }
            this.g.setGravity(8388611);
        } else if (i3 == 1 || i3 == 2) {
            if (this.A == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.g.setGravity(1);
        }
        p(true);
    }

    public final int e(int i2, float f2) {
        int i3 = this.D;
        if (i3 != 0 && i3 != 2) {
            return 0;
        }
        View childAt = this.g.getChildAt(i2);
        int i4 = i2 + 1;
        View childAt2 = i4 < this.g.getChildCount() ? this.g.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i5 = (int) ((width + width2) * 0.5f * f2);
        AtomicInteger atomicInteger = ha.a;
        return getLayoutDirection() == 0 ? left + i5 : left - i5;
    }

    public final void g() {
        if (this.M == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.M = valueAnimator;
            valueAnimator.setInterpolator(i55.b);
            this.M.setDuration(this.B);
            this.M.addUpdateListener(new a());
        }
    }

    public int getSelectedTabPosition() {
        g gVar = this.f;
        if (gVar != null) {
            return gVar.d;
        }
        return -1;
    }

    public int getTabCount() {
        return this.e.size();
    }

    public int getTabGravity() {
        return this.A;
    }

    public ColorStateList getTabIconTint() {
        return this.n;
    }

    public int getTabIndicatorAnimationMode() {
        return this.G;
    }

    public int getTabIndicatorGravity() {
        return this.C;
    }

    public int getTabMaxWidth() {
        return this.v;
    }

    public int getTabMode() {
        return this.D;
    }

    public ColorStateList getTabRippleColor() {
        return this.o;
    }

    public Drawable getTabSelectedIndicator() {
        return this.p;
    }

    public ColorStateList getTabTextColors() {
        return this.m;
    }

    public g h(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.e.get(i2);
    }

    public g i() throws Resources.NotFoundException {
        g gVarA = V.a();
        if (gVarA == null) {
            gVarA = new g();
        }
        gVarA.f = this;
        t9<TabView> t9Var = this.T;
        TabView tabViewA = t9Var != null ? t9Var.a() : null;
        if (tabViewA == null) {
            tabViewA = new TabView(getContext());
        }
        tabViewA.setTab(gVarA);
        tabViewA.setFocusable(true);
        tabViewA.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVarA.c)) {
            tabViewA.setContentDescription(gVarA.b);
        } else {
            tabViewA.setContentDescription(gVarA.c);
        }
        gVarA.g = tabViewA;
        int i2 = gVarA.h;
        if (i2 != -1) {
            tabViewA.setId(i2);
        }
        return gVarA;
    }

    public void j() throws Resources.NotFoundException {
        int currentItem;
        for (int childCount = this.g.getChildCount() - 1; childCount >= 0; childCount--) {
            TabView tabView = (TabView) this.g.getChildAt(childCount);
            this.g.removeViewAt(childCount);
            if (tabView != null) {
                tabView.setTab(null);
                tabView.setSelected(false);
                this.T.b(tabView);
            }
            requestLayout();
        }
        Iterator<g> it = this.e.iterator();
        while (it.hasNext()) {
            g next = it.next();
            it.remove();
            next.f = null;
            next.g = null;
            next.a = null;
            next.h = -1;
            next.b = null;
            next.c = null;
            next.d = -1;
            next.e = null;
            V.b(next);
        }
        this.f = null;
        xi xiVar = this.O;
        if (xiVar != null) {
            int iC = xiVar.c();
            for (int i2 = 0; i2 < iC; i2++) {
                g gVarI = i();
                gVarI.a(this.O.d(i2));
                a(gVarI, false);
            }
            ViewPager viewPager = this.N;
            if (viewPager == null || iC <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            k(h(currentItem), true);
        }
    }

    public void k(g gVar, boolean z) {
        g gVar2 = this.f;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                for (int size = this.K.size() - 1; size >= 0; size--) {
                    this.K.get(size).a(gVar);
                }
                c(gVar.d);
                return;
            }
            return;
        }
        int i2 = gVar != null ? gVar.d : -1;
        if (z) {
            if ((gVar2 == null || gVar2.d == -1) && i2 != -1) {
                setScrollPosition(i2, 0.0f, true);
            } else {
                c(i2);
            }
            if (i2 != -1) {
                setSelectedTabView(i2);
            }
        }
        this.f = gVar;
        if (gVar2 != null) {
            for (int size2 = this.K.size() - 1; size2 >= 0; size2--) {
                this.K.get(size2).c(gVar2);
            }
        }
        if (gVar != null) {
            for (int size3 = this.K.size() - 1; size3 >= 0; size3--) {
                this.K.get(size3).b(gVar);
            }
        }
    }

    public void l(xi xiVar, boolean z) throws Resources.NotFoundException {
        DataSetObserver dataSetObserver;
        xi xiVar2 = this.O;
        if (xiVar2 != null && (dataSetObserver = this.P) != null) {
            xiVar2.a.unregisterObserver(dataSetObserver);
        }
        this.O = xiVar;
        if (z && xiVar != null) {
            if (this.P == null) {
                this.P = new e();
            }
            xiVar.a.registerObserver(this.P);
        }
        j();
    }

    public final void m(ViewPager viewPager, boolean z, boolean z2) throws Resources.NotFoundException {
        List<ViewPager.i> list;
        List<ViewPager.j> list2;
        ViewPager viewPager2 = this.N;
        if (viewPager2 != null) {
            h hVar = this.Q;
            if (hVar != null && (list2 = viewPager2.V) != null) {
                list2.remove(hVar);
            }
            b bVar = this.R;
            if (bVar != null && (list = this.N.b0) != null) {
                list.remove(bVar);
            }
        }
        c cVar = this.L;
        if (cVar != null) {
            this.K.remove(cVar);
            this.L = null;
        }
        if (viewPager != null) {
            this.N = viewPager;
            if (this.Q == null) {
                this.Q = new h(this);
            }
            h hVar2 = this.Q;
            hVar2.c = 0;
            hVar2.b = 0;
            viewPager.b(hVar2);
            i iVar = new i(viewPager);
            this.L = iVar;
            if (!this.K.contains(iVar)) {
                this.K.add(iVar);
            }
            xi adapter = viewPager.getAdapter();
            if (adapter != null) {
                l(adapter, z);
            }
            if (this.R == null) {
                this.R = new b();
            }
            b bVar2 = this.R;
            bVar2.a = z;
            if (viewPager.b0 == null) {
                viewPager.b0 = new ArrayList();
            }
            viewPager.b0.add(bVar2);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.N = null;
            l(null, false);
        }
        this.S = z2;
    }

    public final void n() throws Resources.NotFoundException {
        int size = this.e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.e.get(i2).b();
        }
    }

    public final void o(LinearLayout.LayoutParams layoutParams) {
        if (this.D == 1 && this.A == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() throws Resources.NotFoundException {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof la5) {
            c50.I0(this, (la5) background);
        }
        if (this.N == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() throws Resources.NotFoundException {
        super.onDetachedFromWindow();
        if (this.S) {
            setupWithViewPager(null);
            this.S = false;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        TabView tabView;
        Drawable drawable;
        for (int i2 = 0; i2 < this.g.getChildCount(); i2++) {
            View childAt = this.g.getChildAt(i2);
            if ((childAt instanceof TabView) && (drawable = (tabView = (TabView) childAt).m) != null) {
                drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                tabView.m.draw(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) sa.b.a(1, getTabCount(), false, 1).a);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.getContext()
            int r1 = r6.getDefaultHeight()
            float r0 = defpackage.c50.P(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r8)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            r4 = 0
            r5 = 1
            if (r1 == r2) goto L2e
            if (r1 == 0) goto L1f
            goto L41
        L1f:
            int r8 = r6.getPaddingTop()
            int r8 = r8 + r0
            int r0 = r6.getPaddingBottom()
            int r0 = r0 + r8
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3)
            goto L41
        L2e:
            int r1 = r6.getChildCount()
            if (r1 != r5) goto L41
            int r1 = android.view.View.MeasureSpec.getSize(r8)
            if (r1 < r0) goto L41
            android.view.View r1 = r6.getChildAt(r4)
            r1.setMinimumHeight(r0)
        L41:
            int r0 = android.view.View.MeasureSpec.getSize(r7)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            if (r1 == 0) goto L5f
            int r1 = r6.x
            if (r1 <= 0) goto L50
            goto L5d
        L50:
            float r0 = (float) r0
            android.content.Context r1 = r6.getContext()
            r2 = 56
            float r1 = defpackage.c50.P(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L5d:
            r6.v = r1
        L5f:
            super.onMeasure(r7, r8)
            int r7 = r6.getChildCount()
            if (r7 != r5) goto Lad
            android.view.View r7 = r6.getChildAt(r4)
            int r0 = r6.D
            if (r0 == 0) goto L82
            if (r0 == r5) goto L76
            r1 = 2
            if (r0 == r1) goto L82
            goto L8d
        L76:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 == r1) goto L8d
        L80:
            r4 = 1
            goto L8d
        L82:
            int r0 = r7.getMeasuredWidth()
            int r1 = r6.getMeasuredWidth()
            if (r0 >= r1) goto L8d
            goto L80
        L8d:
            if (r4 == 0) goto Lad
            int r0 = r6.getPaddingTop()
            int r1 = r6.getPaddingBottom()
            int r1 = r1 + r0
            android.view.ViewGroup$LayoutParams r0 = r7.getLayoutParams()
            int r0 = r0.height
            int r8 = android.widget.HorizontalScrollView.getChildMeasureSpec(r8, r1, r0)
            int r0 = r6.getMeasuredWidth()
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3)
            r7.measure(r0, r8)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    public void p(boolean z) {
        for (int i2 = 0; i2 < this.g.getChildCount(); i2++) {
            View childAt = this.g.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            o((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        c50.H0(this, f2);
    }

    public void setInlineLabel(boolean z) {
        if (this.E != z) {
            this.E = z;
            for (int i2 = 0; i2 < this.g.getChildCount(); i2++) {
                View childAt = this.g.getChildAt(i2);
                if (childAt instanceof TabView) {
                    TabView tabView = (TabView) childAt;
                    tabView.setOrientation(!TabLayout.this.E ? 1 : 0);
                    TextView textView = tabView.k;
                    if (textView == null && tabView.l == null) {
                        tabView.h(tabView.f, tabView.g);
                    } else {
                        tabView.h(textView, tabView.l);
                    }
                }
            }
            d();
        }
    }

    public void setInlineLabelResource(int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        g();
        this.M.addListener(animatorListener);
    }

    public void setScrollPosition(int i2, float f2, boolean z) {
        setScrollPosition(i2, f2, z, true);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.p != drawable) {
            if (drawable == null) {
                drawable = new GradientDrawable();
            }
            this.p = drawable;
        }
    }

    public void setSelectedTabIndicatorColor(int i2) {
        this.q = i2;
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.C != i2) {
            this.C = i2;
            f fVar = this.g;
            AtomicInteger atomicInteger = ha.a;
            fVar.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.g.b(i2);
    }

    public void setTabGravity(int i2) {
        if (this.A != i2) {
            this.A = i2;
            d();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            n();
        }
    }

    public void setTabIconTintResource(int i2) throws Resources.NotFoundException {
        setTabIconTint(p0.a(getContext(), i2));
    }

    public void setTabIndicatorAnimationMode(int i2) {
        this.G = i2;
        if (i2 == 0) {
            this.I = new nb5();
        } else {
            if (i2 == 1) {
                this.I = new mb5();
                return;
            }
            throw new IllegalArgumentException(i2 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.F = z;
        f fVar = this.g;
        AtomicInteger atomicInteger = ha.a;
        fVar.postInvalidateOnAnimation();
    }

    public void setTabMode(int i2) {
        if (i2 != this.D) {
            this.D = i2;
            d();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.o != colorStateList) {
            this.o = colorStateList;
            for (int i2 = 0; i2 < this.g.getChildCount(); i2++) {
                View childAt = this.g.getChildAt(i2);
                if (childAt instanceof TabView) {
                    Context context = getContext();
                    int i3 = TabView.p;
                    ((TabView) childAt).g(context);
                }
            }
        }
    }

    public void setTabRippleColorResource(int i2) {
        setTabRippleColor(p0.a(getContext(), i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            n();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(xi xiVar) throws Resources.NotFoundException {
        l(xiVar, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.H != z) {
            this.H = z;
            for (int i2 = 0; i2 < this.g.getChildCount(); i2++) {
                View childAt = this.g.getChildAt(i2);
                if (childAt instanceof TabView) {
                    Context context = getContext();
                    int i3 = TabView.p;
                    ((TabView) childAt).g(context);
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(ViewPager viewPager) throws Resources.NotFoundException {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.tabStyle);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2) throws Resources.NotFoundException {
        b(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(c cVar) {
        c cVar2 = this.J;
        if (cVar2 != null) {
            this.K.remove(cVar2);
        }
        this.J = cVar;
        if (cVar == null || this.K.contains(cVar)) {
            return;
        }
        this.K.add(cVar);
    }

    public void setScrollPosition(int i2, float f2, boolean z, boolean z2) {
        int iRound = Math.round(i2 + f2);
        if (iRound < 0 || iRound >= this.g.getChildCount()) {
            return;
        }
        if (z2) {
            f fVar = this.g;
            ValueAnimator valueAnimator = fVar.e;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                fVar.e.cancel();
            }
            fVar.f = i2;
            fVar.g = f2;
            fVar.c(fVar.getChildAt(i2), fVar.getChildAt(fVar.f + 1), fVar.g);
        }
        ValueAnimator valueAnimator2 = this.M;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.M.cancel();
        }
        scrollTo(e(i2, f2), 0);
        if (z) {
            setSelectedTabView(iRound);
        }
    }

    public void setupWithViewPager(ViewPager viewPager, boolean z) throws Resources.NotFoundException {
        m(viewPager, z, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(Context context, AttributeSet attributeSet, int i2) throws Resources.NotFoundException {
        int i3 = U;
        super(fc5.a(context, attributeSet, i2, i3), attributeSet, i2);
        this.e = new ArrayList<>();
        this.p = new GradientDrawable();
        this.q = 0;
        this.v = Integer.MAX_VALUE;
        this.K = new ArrayList<>();
        this.T = new t9<>(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        f fVar = new f(context2);
        this.g = fVar;
        super.addView(fVar, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = R$styleable.TabLayout;
        int i4 = R$styleable.TabLayout_tabTextAppearance;
        TypedArray typedArrayD = t85.d(context2, attributeSet, iArr, i2, i3, i4);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            la5 la5Var = new la5();
            la5Var.t(ColorStateList.valueOf(colorDrawable.getColor()));
            la5Var.e.b = new u75(context2);
            la5Var.E();
            AtomicInteger atomicInteger = ha.a;
            la5Var.s(getElevation());
            setBackground(la5Var);
        }
        setSelectedTabIndicator(c50.f0(context2, typedArrayD, R$styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayD.getColor(R$styleable.TabLayout_tabIndicatorColor, 0));
        fVar.b(typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayD.getInt(R$styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(typedArrayD.getBoolean(R$styleable.TabLayout_tabIndicatorFullWidth, true));
        setTabIndicatorAnimationMode(typedArrayD.getInt(R$styleable.TabLayout_tabIndicatorAnimationMode, 0));
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabPadding, 0);
        this.k = dimensionPixelSize;
        this.j = dimensionPixelSize;
        this.i = dimensionPixelSize;
        this.h = dimensionPixelSize;
        this.h = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.i = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingTop, this.i);
        this.j = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingEnd, this.j);
        this.k = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingBottom, this.k);
        int resourceId = typedArrayD.getResourceId(i4, R$style.TextAppearance_Design_Tab);
        this.l = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, androidx.appcompat.R$styleable.TextAppearance);
        try {
            this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, 0);
            this.m = c50.a0(context2, typedArrayObtainStyledAttributes, androidx.appcompat.R$styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            int i5 = R$styleable.TabLayout_tabTextColor;
            if (typedArrayD.hasValue(i5)) {
                this.m = c50.a0(context2, typedArrayD, i5);
            }
            int i6 = R$styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayD.hasValue(i6)) {
                this.m = f(this.m.getDefaultColor(), typedArrayD.getColor(i6, 0));
            }
            this.n = c50.a0(context2, typedArrayD, R$styleable.TabLayout_tabIconTint);
            this.r = c50.B0(typedArrayD.getInt(R$styleable.TabLayout_tabIconTintMode, -1), null);
            this.o = c50.a0(context2, typedArrayD, R$styleable.TabLayout_tabRippleColor);
            this.B = typedArrayD.getInt(R$styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.w = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabMinWidth, -1);
            this.x = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabMaxWidth, -1);
            this.u = typedArrayD.getResourceId(R$styleable.TabLayout_tabBackground, 0);
            this.z = typedArrayD.getDimensionPixelSize(R$styleable.TabLayout_tabContentStart, 0);
            this.D = typedArrayD.getInt(R$styleable.TabLayout_tabMode, 1);
            this.A = typedArrayD.getInt(R$styleable.TabLayout_tabGravity, 0);
            this.E = typedArrayD.getBoolean(R$styleable.TabLayout_tabInlineLabel, false);
            this.H = typedArrayD.getBoolean(R$styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayD.recycle();
            Resources resources = getResources();
            this.t = resources.getDimensionPixelSize(R$dimen.design_tab_text_size_2line);
            this.y = resources.getDimensionPixelSize(R$dimen.design_tab_scrollable_min_width);
            d();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        b(view);
    }

    public void setSelectedTabIndicator(int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(p0.b(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        b(view);
    }

    public void setTabTextColors(int i2, int i3) throws Resources.NotFoundException {
        setTabTextColors(f(i2, i3));
    }
}
