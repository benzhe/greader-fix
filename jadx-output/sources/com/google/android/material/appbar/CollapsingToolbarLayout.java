package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import defpackage.a65;
import defpackage.d0;
import defpackage.ea;
import defpackage.fc5;
import defpackage.ha;
import defpackage.i55;
import defpackage.j85;
import defpackage.k85;
import defpackage.qa;
import defpackage.t85;
import defpackage.u7;
import defpackage.w55;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    public static final int B = R$style.Widget_Design_CollapsingToolbar;
    public qa A;
    public boolean e;
    public int f;
    public ViewGroup g;
    public View h;
    public View i;
    public int j;
    public int k;
    public int l;
    public int m;
    public final Rect n;
    public final j85 o;
    public boolean p;
    public boolean q;
    public Drawable r;
    public Drawable s;
    public int t;
    public boolean u;
    public ValueAnimator v;
    public long w;
    public int x;
    public AppBarLayout.d y;
    public int z;

    public class a implements ea {
        public a() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            Objects.requireNonNull(collapsingToolbarLayout);
            AtomicInteger atomicInteger = ha.a;
            qa qaVar2 = collapsingToolbarLayout.getFitsSystemWindows() ? qaVar : null;
            if (!Objects.equals(collapsingToolbarLayout.A, qaVar2)) {
                collapsingToolbarLayout.A = qaVar2;
                collapsingToolbarLayout.requestLayout();
            }
            return qaVar.a();
        }
    }

    public class c implements AppBarLayout.d {
        public c() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.b
        public void a(AppBarLayout appBarLayout, int i) throws NoSuchMethodException, SecurityException {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.z = i;
            qa qaVar = collapsingToolbarLayout.A;
            int iE = qaVar != null ? qaVar.e() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                b bVar = (b) childAt.getLayoutParams();
                a65 a65VarD = CollapsingToolbarLayout.d(childAt);
                int i3 = bVar.a;
                if (i3 == 1) {
                    a65VarD.b(d0.h.l(-i, 0, CollapsingToolbarLayout.this.c(childAt)));
                } else if (i3 == 2) {
                    a65VarD.b(Math.round((-i) * bVar.b));
                }
            }
            CollapsingToolbarLayout.this.f();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.s != null && iE > 0) {
                AtomicInteger atomicInteger = ha.a;
                collapsingToolbarLayout2.postInvalidateOnAnimation();
            }
            int height = CollapsingToolbarLayout.this.getHeight();
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            AtomicInteger atomicInteger2 = ha.a;
            CollapsingToolbarLayout.this.o.w(Math.abs(i) / ((height - collapsingToolbarLayout3.getMinimumHeight()) - iE));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public static int b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public static a65 d(View view) {
        int i = R$id.view_offset_helper;
        a65 a65Var = (a65) view.getTag(i);
        if (a65Var != null) {
            return a65Var;
        }
        a65 a65Var2 = new a65(view);
        view.setTag(i, a65Var2);
        return a65Var2;
    }

    public final void a() {
        if (this.e) {
            ViewGroup viewGroup = null;
            this.g = null;
            this.h = null;
            int i = this.f;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.g = viewGroup2;
                if (viewGroup2 != null) {
                    ViewParent parent = viewGroup2.getParent();
                    View view = viewGroup2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view = (View) parent;
                        }
                        parent = parent.getParent();
                        view = view;
                    }
                    this.h = view;
                }
            }
            if (this.g == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i2++;
                }
                this.g = viewGroup;
            }
            e();
            this.e = false;
        }
    }

    public final int c(View view) {
        return ((getHeight() - d(view).b) - view.getHeight()) - ((FrameLayout.LayoutParams) ((b) view.getLayoutParams())).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        a();
        if (this.g == null && (drawable = this.r) != null && this.t > 0) {
            drawable.mutate().setAlpha(this.t);
            this.r.draw(canvas);
        }
        if (this.p && this.q) {
            this.o.g(canvas);
        }
        if (this.s == null || this.t <= 0) {
            return;
        }
        qa qaVar = this.A;
        int iE = qaVar != null ? qaVar.e() : 0;
        if (iE > 0) {
            this.s.setBounds(0, -this.z, getWidth(), iE - this.z);
            this.s.mutate().setAlpha(this.t);
            this.s.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0018, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002d  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawChild(android.graphics.Canvas r5, android.view.View r6, long r7) {
        /*
            r4 = this;
            android.graphics.drawable.Drawable r0 = r4.r
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L2d
            int r3 = r4.t
            if (r3 <= 0) goto L2d
            android.view.View r3 = r4.h
            if (r3 == 0) goto L14
            if (r3 != r4) goto L11
            goto L14
        L11:
            if (r6 != r3) goto L1a
            goto L18
        L14:
            android.view.ViewGroup r3 = r4.g
            if (r6 != r3) goto L1a
        L18:
            r3 = 1
            goto L1b
        L1a:
            r3 = 0
        L1b:
            if (r3 == 0) goto L2d
            android.graphics.drawable.Drawable r0 = r0.mutate()
            int r3 = r4.t
            r0.setAlpha(r3)
            android.graphics.drawable.Drawable r0 = r4.r
            r0.draw(r5)
            r0 = 1
            goto L2e
        L2d:
            r0 = 0
        L2e:
            boolean r5 = super.drawChild(r5, r6, r7)
            if (r5 != 0) goto L38
            if (r0 == 0) goto L37
            goto L38
        L37:
            r1 = 0
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.s;
        boolean zY = false;
        if (drawable != null && drawable.isStateful()) {
            zY = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.r;
        if (drawable2 != null && drawable2.isStateful()) {
            zY |= drawable2.setState(drawableState);
        }
        j85 j85Var = this.o;
        if (j85Var != null) {
            zY |= j85Var.y(drawableState);
        }
        if (zY) {
            invalidate();
        }
    }

    public final void e() {
        View view;
        if (!this.p && (view = this.i) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.i);
            }
        }
        if (!this.p || this.g == null) {
            return;
        }
        if (this.i == null) {
            this.i = new View(getContext());
        }
        if (this.i.getParent() == null) {
            this.g.addView(this.i, -1, -1);
        }
    }

    public final void f() {
        if (this.r == null && this.s == null) {
            return;
        }
        setScrimsShown(getHeight() + this.z < getScrimVisibleHeightTrigger());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b(-1, -1);
    }

    public int getCollapsedTitleGravity() {
        return this.o.h;
    }

    public Typeface getCollapsedTitleTypeface() {
        Typeface typeface = this.o.s;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public Drawable getContentScrim() {
        return this.r;
    }

    public int getExpandedTitleGravity() {
        return this.o.g;
    }

    public int getExpandedTitleMarginBottom() {
        return this.m;
    }

    public int getExpandedTitleMarginEnd() {
        return this.l;
    }

    public int getExpandedTitleMarginStart() {
        return this.j;
    }

    public int getExpandedTitleMarginTop() {
        return this.k;
    }

    public Typeface getExpandedTitleTypeface() {
        Typeface typeface = this.o.t;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getMaxLines() {
        return this.o.Y;
    }

    public int getScrimAlpha() {
        return this.t;
    }

    public long getScrimAnimationDuration() {
        return this.w;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.x;
        if (i >= 0) {
            return i;
        }
        qa qaVar = this.A;
        int iE = qaVar != null ? qaVar.e() : 0;
        AtomicInteger atomicInteger = ha.a;
        int minimumHeight = getMinimumHeight();
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + iE, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.s;
    }

    public CharSequence getTitle() {
        if (this.p) {
            return this.o.x;
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object parent = getParent();
        if (parent instanceof AppBarLayout) {
            AtomicInteger atomicInteger = ha.a;
            setFitsSystemWindows(((View) parent).getFitsSystemWindows());
            if (this.y == null) {
                this.y = new c();
            }
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            AppBarLayout.d dVar = this.y;
            if (appBarLayout.l == null) {
                appBarLayout.l = new ArrayList();
            }
            if (dVar != null && !appBarLayout.l.contains(dVar)) {
                appBarLayout.l.add(dVar);
            }
            requestApplyInsets();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        List<AppBarLayout.b> list;
        ViewParent parent = getParent();
        AppBarLayout.d dVar = this.y;
        if (dVar != null && (parent instanceof AppBarLayout) && (list = ((AppBarLayout) parent).l) != null && dVar != null) {
            list.remove(dVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws NoSuchMethodException, SecurityException {
        View view;
        int titleMarginBottom;
        int titleMarginStart;
        int titleMarginEnd;
        int titleMarginTop;
        super.onLayout(z, i, i2, i3, i4);
        qa qaVar = this.A;
        if (qaVar != null) {
            int iE = qaVar.e();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                AtomicInteger atomicInteger = ha.a;
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < iE) {
                    ha.m(childAt, iE);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            a65 a65VarD = d(getChildAt(i6));
            a65VarD.b = a65VarD.a.getTop();
            a65VarD.c = a65VarD.a.getLeft();
        }
        if (this.p && (view = this.i) != null) {
            AtomicInteger atomicInteger2 = ha.a;
            boolean z2 = view.isAttachedToWindow() && this.i.getVisibility() == 0;
            this.q = z2;
            if (z2) {
                boolean z3 = getLayoutDirection() == 1;
                View view2 = this.h;
                if (view2 == null) {
                    view2 = this.g;
                }
                int iC = c(view2);
                k85.a(this, this.i, this.n);
                ViewGroup viewGroup = this.g;
                if (viewGroup instanceof Toolbar) {
                    Toolbar toolbar = (Toolbar) viewGroup;
                    titleMarginStart = toolbar.getTitleMarginStart();
                    titleMarginEnd = toolbar.getTitleMarginEnd();
                    titleMarginTop = toolbar.getTitleMarginTop();
                    titleMarginBottom = toolbar.getTitleMarginBottom();
                } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
                    titleMarginBottom = 0;
                    titleMarginStart = 0;
                    titleMarginEnd = 0;
                    titleMarginTop = 0;
                } else {
                    android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                    titleMarginStart = toolbar2.getTitleMarginStart();
                    titleMarginEnd = toolbar2.getTitleMarginEnd();
                    titleMarginTop = toolbar2.getTitleMarginTop();
                    titleMarginBottom = toolbar2.getTitleMarginBottom();
                }
                j85 j85Var = this.o;
                Rect rect = this.n;
                int i7 = rect.left + (z3 ? titleMarginEnd : titleMarginStart);
                int i8 = rect.top + iC + titleMarginTop;
                int i9 = rect.right;
                if (!z3) {
                    titleMarginStart = titleMarginEnd;
                }
                int i10 = i9 - titleMarginStart;
                int i11 = (rect.bottom + iC) - titleMarginBottom;
                if (!j85.n(j85Var.e, i7, i8, i10, i11)) {
                    j85Var.e.set(i7, i8, i10, i11);
                    j85Var.E = true;
                    j85Var.l();
                }
                j85 j85Var2 = this.o;
                int i12 = z3 ? this.l : this.j;
                int i13 = this.n.top + this.k;
                int i14 = (i3 - i) - (z3 ? this.j : this.l);
                int i15 = (i4 - i2) - this.m;
                if (!j85.n(j85Var2.d, i12, i13, i14, i15)) {
                    j85Var2.d.set(i12, i13, i14, i15);
                    j85Var2.E = true;
                    j85Var2.l();
                }
                this.o.m();
            }
        }
        if (this.g != null && this.p && TextUtils.isEmpty(this.o.x)) {
            ViewGroup viewGroup2 = this.g;
            setTitle(viewGroup2 instanceof Toolbar ? ((Toolbar) viewGroup2).getTitle() : viewGroup2 instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup2).getTitle() : null);
        }
        f();
        int childCount3 = getChildCount();
        for (int i16 = 0; i16 < childCount3; i16++) {
            d(getChildAt(i16)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        a();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        qa qaVar = this.A;
        int iE = qaVar != null ? qaVar.e() : 0;
        if (mode == 0 && iE > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + iE, 1073741824));
        }
        ViewGroup viewGroup = this.g;
        if (viewGroup != null) {
            View view = this.h;
            if (view == null || view == this) {
                setMinimumHeight(b(viewGroup));
            } else {
                setMinimumHeight(b(view));
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) throws NoSuchMethodException, SecurityException {
        j85 j85Var = this.o;
        if (j85Var.h != i) {
            j85Var.h = i;
            j85Var.m();
        }
    }

    public void setCollapsedTitleTextAppearance(int i) throws NoSuchMethodException, SecurityException {
        this.o.o(i);
    }

    public void setCollapsedTitleTextColor(int i) throws NoSuchMethodException, SecurityException {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTypeface(Typeface typeface) throws NoSuchMethodException, SecurityException {
        this.o.r(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.r = drawableMutate;
            if (drawableMutate != null) {
                drawableMutate.setBounds(0, 0, getWidth(), getHeight());
                this.r.setCallback(this);
                this.r.setAlpha(this.t);
            }
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        Context context = getContext();
        Object obj = u7.a;
        setContentScrim(context.getDrawable(i));
    }

    public void setExpandedTitleColor(int i) throws NoSuchMethodException, SecurityException {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) throws NoSuchMethodException, SecurityException {
        j85 j85Var = this.o;
        if (j85Var.g != i) {
            j85Var.g = i;
            j85Var.m();
        }
    }

    public void setExpandedTitleMargin(int i, int i2, int i3, int i4) {
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.l = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.j = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.k = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) throws NoSuchMethodException, SecurityException {
        this.o.s(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) throws NoSuchMethodException, SecurityException {
        j85 j85Var = this.o;
        if (j85Var.k != colorStateList) {
            j85Var.k = colorStateList;
            j85Var.m();
        }
    }

    public void setExpandedTitleTypeface(Typeface typeface) throws NoSuchMethodException, SecurityException {
        this.o.v(typeface);
    }

    public void setMaxLines(int i) throws NoSuchMethodException, SecurityException {
        j85 j85Var = this.o;
        if (i != j85Var.Y) {
            j85Var.Y = i;
            j85Var.f();
            j85Var.m();
        }
    }

    public void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.t) {
            if (this.r != null && (viewGroup = this.g) != null) {
                AtomicInteger atomicInteger = ha.a;
                viewGroup.postInvalidateOnAnimation();
            }
            this.t = i;
            AtomicInteger atomicInteger2 = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public void setScrimAnimationDuration(long j) {
        this.w = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.x != i) {
            this.x = i;
            f();
        }
    }

    public void setScrimsShown(boolean z) {
        AtomicInteger atomicInteger = ha.a;
        setScrimsShown(z, isLaidOut() && !isInEditMode());
    }

    public void setStatusBarScrim(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.s;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.s = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.s.setState(getDrawableState());
                }
                Drawable drawable3 = this.s;
                AtomicInteger atomicInteger = ha.a;
                d0.h.Y(drawable3, getLayoutDirection());
                this.s.setVisible(getVisibility() == 0, false);
                this.s.setCallback(this);
                this.s.setAlpha(this.t);
            }
            AtomicInteger atomicInteger2 = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarScrimColor(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Context context = getContext();
        Object obj = u7.a;
        setStatusBarScrim(context.getDrawable(i));
    }

    public void setTitle(CharSequence charSequence) throws NoSuchMethodException, SecurityException {
        this.o.z(charSequence);
        setContentDescription(getTitle());
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.p) {
            this.p = z;
            setContentDescription(getTitle());
            e();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.s;
        if (drawable != null && drawable.isVisible() != z) {
            this.s.setVisible(z, false);
        }
        Drawable drawable2 = this.r;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.r.setVisible(z, false);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r || drawable == this.s;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.collapsingToolbarLayoutStyle);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new b(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) throws NoSuchMethodException, SecurityException {
        j85 j85Var = this.o;
        if (j85Var.l != colorStateList) {
            j85Var.l = colorStateList;
            j85Var.m();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2;
        int i3 = B;
        super(fc5.a(context, attributeSet, i, i3), attributeSet, i);
        this.e = true;
        this.n = new Rect();
        this.x = -1;
        Context context2 = getContext();
        j85 j85Var = new j85(this);
        this.o = j85Var;
        j85Var.I = i55.e;
        j85Var.m();
        TypedArray typedArrayD = t85.d(context2, attributeSet, R$styleable.CollapsingToolbarLayout, i, i3, new int[0]);
        j85Var.u(typedArrayD.getInt(R$styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        j85Var.q(typedArrayD.getInt(R$styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.m = dimensionPixelSize;
        this.l = dimensionPixelSize;
        this.k = dimensionPixelSize;
        this.j = dimensionPixelSize;
        int i4 = R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart;
        if (typedArrayD.hasValue(i4)) {
            this.j = typedArrayD.getDimensionPixelSize(i4, 0);
        }
        int i5 = R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd;
        if (typedArrayD.hasValue(i5)) {
            this.l = typedArrayD.getDimensionPixelSize(i5, 0);
        }
        int i6 = R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop;
        if (typedArrayD.hasValue(i6)) {
            this.k = typedArrayD.getDimensionPixelSize(i6, 0);
        }
        int i7 = R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom;
        if (typedArrayD.hasValue(i7)) {
            this.m = typedArrayD.getDimensionPixelSize(i7, 0);
        }
        this.p = typedArrayD.getBoolean(R$styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayD.getText(R$styleable.CollapsingToolbarLayout_title));
        j85Var.s(R$style.TextAppearance_Design_CollapsingToolbar_Expanded);
        j85Var.o(androidx.appcompat.R$style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        int i8 = R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance;
        if (typedArrayD.hasValue(i8)) {
            j85Var.s(typedArrayD.getResourceId(i8, 0));
        }
        int i9 = R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance;
        if (typedArrayD.hasValue(i9)) {
            j85Var.o(typedArrayD.getResourceId(i9, 0));
        }
        this.x = typedArrayD.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        int i10 = R$styleable.CollapsingToolbarLayout_maxLines;
        if (typedArrayD.hasValue(i10) && (i2 = typedArrayD.getInt(i10, 1)) != j85Var.Y) {
            j85Var.Y = i2;
            j85Var.f();
            j85Var.m();
        }
        this.w = typedArrayD.getInt(R$styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        setContentScrim(typedArrayD.getDrawable(R$styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayD.getDrawable(R$styleable.CollapsingToolbarLayout_statusBarScrim));
        this.f = typedArrayD.getResourceId(R$styleable.CollapsingToolbarLayout_toolbarId, -1);
        typedArrayD.recycle();
        setWillNotDraw(false);
        ha.t(this, new a());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.u != z) {
            int i = Base64.BASELENGTH;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                a();
                ValueAnimator valueAnimator = this.v;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.v = valueAnimator2;
                    valueAnimator2.setDuration(this.w);
                    this.v.setInterpolator(i > this.t ? i55.c : i55.d);
                    this.v.addUpdateListener(new w55(this));
                } else if (valueAnimator.isRunning()) {
                    this.v.cancel();
                }
                this.v.setIntValues(this.t, i);
                this.v.start();
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.u = z;
        }
    }

    public static class b extends FrameLayout.LayoutParams {
        public int a;
        public float b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            this.b = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CollapsingToolbarLayout_Layout);
            this.a = typedArrayObtainStyledAttributes.getInt(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            this.b = typedArrayObtainStyledAttributes.getFloat(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f);
            typedArrayObtainStyledAttributes.recycle();
        }

        public b(int i, int i2) {
            super(i, i2);
            this.a = 0;
            this.b = 0.5f;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
            this.b = 0.5f;
        }
    }
}
