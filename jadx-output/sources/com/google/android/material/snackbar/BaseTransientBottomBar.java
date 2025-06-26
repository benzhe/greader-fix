package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import defpackage.ab5;
import defpackage.c50;
import defpackage.d0;
import defpackage.ea;
import defpackage.eb5;
import defpackage.fb5;
import defpackage.fc5;
import defpackage.gb5;
import defpackage.ha;
import defpackage.hb5;
import defpackage.i55;
import defpackage.ib5;
import defpackage.jb5;
import defpackage.kb5;
import defpackage.lb5;
import defpackage.qa;
import defpackage.sa;
import defpackage.t85;
import defpackage.v9;
import defpackage.xa5;
import defpackage.za5;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    public final ViewGroup a;
    public final Context b;
    public final SnackbarBaseLayout c;
    public final kb5 d;
    public int e;
    public Rect g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public final AccessibilityManager m;
    public static final int[] p = {R$attr.snackbarStyle};
    public static final String q = BaseTransientBottomBar.class.getSimpleName();
    public static final Handler o = new Handler(Looper.getMainLooper(), new a());
    public final Runnable f = new b();
    public lb5.b n = new e();

    public static class Behavior extends SwipeDismissBehavior<View> {
        public final f i = new f(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean B(View view) {
            Objects.requireNonNull(this.i);
            return view instanceof SnackbarBaseLayout;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            f fVar = this.i;
            Objects.requireNonNull(fVar);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    lb5.b().f(fVar.a);
                }
            } else if (coordinatorLayout.u(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                lb5.b().e(fVar.a);
            }
            return super.j(coordinatorLayout, view, motionEvent);
        }
    }

    public static class SnackbarBaseLayout extends FrameLayout {
        public static final View.OnTouchListener l = new a();
        public h e;
        public g f;
        public int g;
        public final float h;
        public final float i;
        public ColorStateList j;
        public PorterDuff.Mode k;

        public static class a implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
            Drawable drawableL0;
            super(fc5.a(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
            int i = R$styleable.SnackbarLayout_elevation;
            if (typedArrayObtainStyledAttributes.hasValue(i)) {
                float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(i, 0);
                AtomicInteger atomicInteger = ha.a;
                setElevation(dimensionPixelSize);
            }
            this.g = typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_animationMode, 0);
            this.h = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(c50.a0(context2, typedArrayObtainStyledAttributes, R$styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(c50.B0(typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.i = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(l);
            setFocusable(true);
            if (getBackground() == null) {
                float dimension = getResources().getDimension(R$dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(c50.p0(c50.Z(this, R$attr.colorSurface), c50.Z(this, R$attr.colorOnSurface), getBackgroundOverlayColorAlpha()));
                if (this.j != null) {
                    drawableL0 = d0.h.l0(gradientDrawable);
                    drawableL0.setTintList(this.j);
                } else {
                    drawableL0 = d0.h.l0(gradientDrawable);
                }
                AtomicInteger atomicInteger2 = ha.a;
                setBackground(drawableL0);
            }
        }

        public float getActionTextColorAlpha() {
            return this.i;
        }

        public int getAnimationMode() {
            return this.g;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.h;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            WindowInsets rootWindowInsets;
            super.onAttachedToWindow();
            g gVar = this.f;
            if (gVar != null) {
                hb5 hb5Var = (hb5) gVar;
                Objects.requireNonNull(hb5Var);
                if (Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = hb5Var.a.c.getRootWindowInsets()) != null) {
                    hb5Var.a.k = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                    hb5Var.a.h();
                }
            }
            AtomicInteger atomicInteger = ha.a;
            requestApplyInsets();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            boolean z;
            super.onDetachedFromWindow();
            g gVar = this.f;
            if (gVar != null) {
                hb5 hb5Var = (hb5) gVar;
                BaseTransientBottomBar baseTransientBottomBar = hb5Var.a;
                Objects.requireNonNull(baseTransientBottomBar);
                lb5 lb5VarB = lb5.b();
                lb5.b bVar = baseTransientBottomBar.n;
                synchronized (lb5VarB.a) {
                    z = lb5VarB.c(bVar) || lb5VarB.d(bVar);
                }
                if (z) {
                    BaseTransientBottomBar.o.post(new gb5(hb5Var));
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            h hVar = this.e;
            if (hVar != null) {
                ib5 ib5Var = (ib5) hVar;
                ib5Var.a.c.setOnLayoutChangeListener(null);
                ib5Var.a.g();
            }
        }

        public void setAnimationMode(int i) {
            this.g = i;
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.j != null) {
                drawable = d0.h.l0(drawable.mutate());
                drawable.setTintList(this.j);
                drawable.setTintMode(this.k);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.j = colorStateList;
            if (getBackground() != null) {
                Drawable drawableL0 = d0.h.l0(getBackground().mutate());
                drawableL0.setTintList(colorStateList);
                drawableL0.setTintMode(this.k);
                if (drawableL0 != getBackground()) {
                    super.setBackgroundDrawable(drawableL0);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.k = mode;
            if (getBackground() != null) {
                Drawable drawableL0 = d0.h.l0(getBackground().mutate());
                drawableL0.setTintMode(mode);
                if (drawableL0 != getBackground()) {
                    super.setBackgroundDrawable(drawableL0);
                }
            }
        }

        public void setOnAttachStateChangeListener(g gVar) {
            this.f = gVar;
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : l);
            super.setOnClickListener(onClickListener);
        }

        public void setOnLayoutChangeListener(h hVar) {
            this.e = hVar;
        }
    }

    public static class a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                int i2 = message.arg1;
                if (!baseTransientBottomBar.f() || baseTransientBottomBar.c.getVisibility() != 0) {
                    baseTransientBottomBar.d(i2);
                } else if (baseTransientBottomBar.c.getAnimationMode() == 1) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                    valueAnimatorOfFloat.setInterpolator(i55.a);
                    valueAnimatorOfFloat.addUpdateListener(new ab5(baseTransientBottomBar));
                    valueAnimatorOfFloat.setDuration(75L);
                    valueAnimatorOfFloat.addListener(new za5(baseTransientBottomBar, i2));
                    valueAnimatorOfFloat.start();
                } else {
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(0, baseTransientBottomBar.c());
                    valueAnimator.setInterpolator(i55.b);
                    valueAnimator.setDuration(250L);
                    valueAnimator.addListener(new eb5(baseTransientBottomBar, i2));
                    valueAnimator.addUpdateListener(new fb5(baseTransientBottomBar));
                    valueAnimator.start();
                }
                return true;
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            baseTransientBottomBar2.c.setOnAttachStateChangeListener(new hb5(baseTransientBottomBar2));
            if (baseTransientBottomBar2.c.getParent() == null) {
                ViewGroup.LayoutParams layoutParams = baseTransientBottomBar2.c.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f) {
                    CoordinatorLayout.f fVar = (CoordinatorLayout.f) layoutParams;
                    Behavior behavior = new Behavior();
                    f fVar2 = behavior.i;
                    Objects.requireNonNull(fVar2);
                    fVar2.a = baseTransientBottomBar2.n;
                    behavior.b = new jb5(baseTransientBottomBar2);
                    fVar.b(behavior);
                    fVar.g = 80;
                }
                baseTransientBottomBar2.l = 0;
                baseTransientBottomBar2.h();
                baseTransientBottomBar2.c.setVisibility(4);
                baseTransientBottomBar2.a.addView(baseTransientBottomBar2.c);
            }
            SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar2.c;
            AtomicInteger atomicInteger = ha.a;
            if (snackbarBaseLayout.isLaidOut()) {
                baseTransientBottomBar2.g();
            } else {
                baseTransientBottomBar2.c.setOnLayoutChangeListener(new ib5(baseTransientBottomBar2));
            }
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.c == null || (context = baseTransientBottomBar.b) == null) {
                return;
            }
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
            int[] iArr = new int[2];
            baseTransientBottomBar2.c.getLocationOnScreen(iArr);
            int height = (i - (baseTransientBottomBar2.c.getHeight() + iArr[1])) + ((int) BaseTransientBottomBar.this.c.getTranslationY());
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            if (height >= baseTransientBottomBar3.k) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = baseTransientBottomBar3.c.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Handler handler = BaseTransientBottomBar.o;
                Log.w(BaseTransientBottomBar.q, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i2 = marginLayoutParams.bottomMargin;
            BaseTransientBottomBar baseTransientBottomBar4 = BaseTransientBottomBar.this;
            marginLayoutParams.bottomMargin = (baseTransientBottomBar4.k - height) + i2;
            baseTransientBottomBar4.c.requestLayout();
        }
    }

    public class c implements ea {
        public c() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            BaseTransientBottomBar.this.h = qaVar.b();
            BaseTransientBottomBar.this.i = qaVar.c();
            BaseTransientBottomBar.this.j = qaVar.d();
            BaseTransientBottomBar.this.h();
            return qaVar;
        }
    }

    public class d extends v9 {
        public d() {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.a.addAction(1048576);
            saVar.a.setDismissable(true);
        }

        @Override // defpackage.v9
        public boolean g(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.g(view, i, bundle);
            }
            BaseTransientBottomBar.this.a();
            return true;
        }
    }

    public class e implements lb5.b {
        public e() {
        }

        @Override // lb5.b
        public void a(int i) {
            Handler handler = BaseTransientBottomBar.o;
            handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // lb5.b
        public void show() {
            Handler handler = BaseTransientBottomBar.o;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    public static class f {
        public lb5.b a;

        public f(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.f = SwipeDismissBehavior.C(0.0f, 0.1f, 1.0f);
            swipeDismissBehavior.g = SwipeDismissBehavior.C(0.0f, 0.6f, 1.0f);
            swipeDismissBehavior.d = 0;
        }
    }

    public interface g {
    }

    public interface h {
    }

    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, kb5 kb5Var) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (kb5Var == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.a = viewGroup;
        this.d = kb5Var;
        this.b = context;
        t85.c(context, t85.a, "Theme.AppCompat");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(p);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) layoutInflaterFrom.inflate(resourceId != -1 ? R$layout.mtrl_layout_snackbar : R$layout.design_layout_snackbar, viewGroup, false);
        this.c = snackbarBaseLayout;
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            float actionTextColorAlpha = snackbarBaseLayout.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout.f.setTextColor(c50.p0(c50.Z(snackbarContentLayout, R$attr.colorSurface), snackbarContentLayout.f.getCurrentTextColor(), actionTextColorAlpha));
            }
        }
        snackbarBaseLayout.addView(view);
        ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.g = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        AtomicInteger atomicInteger = ha.a;
        snackbarBaseLayout.setAccessibilityLiveRegion(1);
        snackbarBaseLayout.setImportantForAccessibility(1);
        snackbarBaseLayout.setFitsSystemWindows(true);
        ha.t(snackbarBaseLayout, new c());
        ha.s(snackbarBaseLayout, new d());
        this.m = (AccessibilityManager) context.getSystemService("accessibility");
    }

    public void a() {
        b(3);
    }

    public void b(int i) {
        lb5 lb5VarB = lb5.b();
        lb5.b bVar = this.n;
        synchronized (lb5VarB.a) {
            if (lb5VarB.c(bVar)) {
                lb5VarB.a(lb5VarB.c, i);
            } else if (lb5VarB.d(bVar)) {
                lb5VarB.a(lb5VarB.d, i);
            }
        }
    }

    public final int c() {
        int height = this.c.getHeight();
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    public void d(int i) {
        lb5 lb5VarB = lb5.b();
        lb5.b bVar = this.n;
        synchronized (lb5VarB.a) {
            if (lb5VarB.c(bVar)) {
                lb5VarB.c = null;
                if (lb5VarB.d != null) {
                    lb5VarB.h();
                }
            }
        }
        ViewParent parent = this.c.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.c);
        }
    }

    public void e() {
        lb5 lb5VarB = lb5.b();
        lb5.b bVar = this.n;
        synchronized (lb5VarB.a) {
            if (lb5VarB.c(bVar)) {
                lb5VarB.g(lb5VarB.c);
            }
        }
    }

    public boolean f() {
        AccessibilityManager accessibilityManager = this.m;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public final void g() {
        if (f()) {
            this.c.post(new xa5(this));
            return;
        }
        if (this.c.getParent() != null) {
            this.c.setVisibility(0);
        }
        e();
    }

    public final void h() {
        Rect rect;
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || (rect = this.g) == null) {
            Log.w(q, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = rect.bottom + this.h;
        marginLayoutParams.leftMargin = rect.left + this.i;
        marginLayoutParams.rightMargin = rect.right + this.j;
        this.c.requestLayout();
        if (Build.VERSION.SDK_INT >= 29) {
            boolean z = false;
            if (this.k > 0) {
                ViewGroup.LayoutParams layoutParams2 = this.c.getLayoutParams();
                if ((layoutParams2 instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) layoutParams2).a instanceof SwipeDismissBehavior)) {
                    z = true;
                }
            }
            if (z) {
                this.c.removeCallbacks(this.f);
                this.c.post(this.f);
            }
        }
    }
}
