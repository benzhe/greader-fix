package net.simonvt.menudrawer;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import defpackage.ks7;
import defpackage.ls7;
import defpackage.n56;
import defpackage.ns7;
import defpackage.qs7;
import defpackage.rs7;
import defpackage.ss7;
import defpackage.ts7;

/* loaded from: classes2.dex */
public abstract class MenuDrawer extends ViewGroup {
    public static final Interpolator b0 = new rs7();
    public static final Interpolator c0 = new AccelerateInterpolator();
    public boolean A;
    public ls7 B;
    public Runnable C;
    public int D;
    public float E;
    public boolean F;
    public Bundle G;
    public int H;
    public d I;
    public qs7 J;
    public Drawable K;
    public boolean L;
    public ss7 M;
    public int N;
    public int O;
    public int P;
    public ns7 Q;
    public ns7 R;
    public final Rect S;
    public boolean T;
    public final Rect U;
    public float V;
    public boolean W;
    public ViewTreeObserver.OnScrollChangedListener a0;
    public Drawable e;
    public boolean f;
    public int g;
    public Drawable h;
    public boolean i;
    public int j;
    public Bitmap k;
    public View l;
    public int m;
    public boolean n;
    public final Rect o;
    public final Rect p;
    public View q;
    public BuildLayerFrameLayout r;
    public BuildLayerFrameLayout s;
    public int t;
    public boolean u;
    public int v;
    public int w;
    public int x;
    public c y;
    public int z;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public Bundle e;

        public static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.e);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.e = parcel.readBundle();
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MenuDrawer menuDrawer = MenuDrawer.this;
            Interpolator interpolator = MenuDrawer.b0;
            menuDrawer.a();
        }
    }

    public class b implements ViewTreeObserver.OnScrollChangedListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            MenuDrawer menuDrawer = MenuDrawer.this;
            View view = menuDrawer.l;
            if (view == null || !menuDrawer.g(view)) {
                return;
            }
            MenuDrawer menuDrawer2 = MenuDrawer.this;
            menuDrawer2.l.getDrawingRect(menuDrawer2.p);
            MenuDrawer menuDrawer3 = MenuDrawer.this;
            menuDrawer3.offsetDescendantRectToMyCoords(menuDrawer3.l, menuDrawer3.p);
            MenuDrawer menuDrawer4 = MenuDrawer.this;
            Rect rect = menuDrawer4.p;
            int i = rect.left;
            Rect rect2 = menuDrawer4.o;
            if (i == rect2.left && rect.top == rect2.top && rect.right == rect2.right && rect.bottom == rect2.bottom) {
                return;
            }
            menuDrawer4.invalidate();
        }
    }

    public interface c {
        void a(float f, int i);

        void b(int i, int i2);
    }

    public interface d {
        boolean a(View view, int i, int i2, int i3);
    }

    public MenuDrawer(Context context) {
        this(context, null);
    }

    private int getIndicatorStartPos() {
        int iOrdinal = getPosition().ordinal();
        return iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? this.S.top : this.S.left : this.S.top : this.S.left;
    }

    private void setPosition(ns7 ns7Var) {
        this.Q = ns7Var;
        this.R = getPosition();
    }

    public final void a() {
        boolean z;
        ls7 ls7Var = this.B;
        if (ls7Var.h) {
            z = false;
        } else {
            int iCurrentAnimationTimeMillis = (int) (AnimationUtils.currentAnimationTimeMillis() - ls7Var.d);
            z = true;
            if (iCurrentAnimationTimeMillis < ls7Var.e) {
                float f = (iCurrentAnimationTimeMillis * ls7Var.f) - 1.0f;
                ls7Var.c = (((f * f * f * f * f) + 1.0f) * ls7Var.g) + ls7Var.a;
            } else {
                ls7Var.c = ls7Var.b;
                ls7Var.h = true;
            }
        }
        if (z) {
            this.E = this.B.c;
            invalidate();
            if (!this.B.h) {
                postOnAnimation(this.C);
                return;
            }
        }
        this.E = 1.0f;
        this.F = false;
        invalidate();
    }

    public abstract void b(boolean z);

    public int c(int i) {
        return (int) ((getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    public abstract void d(Canvas canvas);

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d5  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatchDraw(android.graphics.Canvas r12) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.simonvt.menudrawer.MenuDrawer.dispatchDraw(android.graphics.Canvas):void");
    }

    public void e(Context context, AttributeSet attributeSet, int i) {
        setWillNotDraw(false);
        setFocusable(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MenuDrawer, R$attr.menuDrawerStyle, R$style.Widget_MenuDrawer);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.MenuDrawer_mdContentBackground);
        Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.MenuDrawer_mdMenuBackground);
        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MenuDrawer_mdMenuSize, c(240));
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuDrawer_mdActiveIndicator, 0);
        if (resourceId != 0) {
            this.k = BitmapFactory.decodeResource(getResources(), resourceId);
        }
        this.f = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuDrawer_mdDropShadowEnabled, true);
        Drawable drawable3 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.MenuDrawer_mdDropShadow);
        this.h = drawable3;
        if (drawable3 == null) {
            this.g = typedArrayObtainStyledAttributes.getColor(R$styleable.MenuDrawer_mdDropShadowColor, -16777216);
        } else {
            this.i = true;
        }
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MenuDrawer_mdDropShadowSize, c(6));
        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MenuDrawer_mdTouchBezelSize, c(24));
        this.n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuDrawer_mdAllowIndicatorAnimation, false);
        this.H = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuDrawer_mdMaxAnimationDuration, 600);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuDrawer_mdSlideDrawable, -1);
        if (resourceId2 != -1) {
            setSlideDrawable(resourceId2);
        }
        this.O = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuDrawer_mdDrawerOpenUpContentDescription, 0);
        this.P = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuDrawer_mdDrawerClosedUpContentDescription, 0);
        this.W = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuDrawer_mdDrawOverlay, true);
        setPosition(ns7.l.get(typedArrayObtainStyledAttributes.getInt(R$styleable.MenuDrawer_mdPosition, 0)));
        typedArrayObtainStyledAttributes.recycle();
        NoClickThroughFrameLayout noClickThroughFrameLayout = new NoClickThroughFrameLayout(context);
        this.r = noClickThroughFrameLayout;
        noClickThroughFrameLayout.setId(R$id.md__menu);
        this.r.setBackgroundDrawable(drawable2);
        NoClickThroughFrameLayout noClickThroughFrameLayout2 = new NoClickThroughFrameLayout(context);
        this.s = noClickThroughFrameLayout2;
        noClickThroughFrameLayout2.setId(R$id.md__content);
        this.s.setBackgroundDrawable(drawable);
        this.e = new ks7(-16777216);
        this.B = new ls7(b0);
    }

    public abstract boolean f();

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    public boolean g(View view) {
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this) {
                return true;
            }
        }
        return false;
    }

    public boolean getAllowIndicatorAnimation() {
        return this.n;
    }

    public ViewGroup getContentContainer() {
        return this.s;
    }

    public boolean getDrawOverlay() {
        return this.W;
    }

    public int getDrawerState() {
        return this.v;
    }

    public Drawable getDropShadow() {
        return this.h;
    }

    public GradientDrawable.Orientation getDropShadowOrientation() {
        int iOrdinal = getPosition().ordinal();
        return iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? GradientDrawable.Orientation.RIGHT_LEFT : GradientDrawable.Orientation.TOP_BOTTOM : GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.BOTTOM_TOP;
    }

    public ViewGroup getMenuContainer() {
        return this.r;
    }

    public int getMenuSize() {
        return this.t;
    }

    public View getMenuView() {
        return this.q;
    }

    public abstract boolean getOffsetMenuEnabled();

    public ns7 getPosition() {
        int layoutDirection = getLayoutDirection();
        int iOrdinal = this.Q.ordinal();
        return iOrdinal != 4 ? iOrdinal != 5 ? this.Q : layoutDirection == 1 ? ns7.LEFT : ns7.RIGHT : layoutDirection == 1 ? ns7.RIGHT : ns7.LEFT;
    }

    public abstract int getTouchBezelSize();

    public abstract int getTouchMode();

    public abstract void h(int i);

    public abstract void i(boolean z);

    public void j(Parcelable parcelable) {
        this.G = (Bundle) parcelable;
    }

    public void k(Bundle bundle) {
    }

    public abstract void l(boolean z);

    public void m() {
        int iOrdinal = getPosition().ordinal();
        if (iOrdinal == 0) {
            Rect rect = this.U;
            rect.top = 0;
            rect.bottom = getHeight();
            this.U.right = n56.O0(this.s);
            Rect rect2 = this.U;
            rect2.left = rect2.right - this.j;
            return;
        }
        if (iOrdinal == 1) {
            Rect rect3 = this.U;
            rect3.left = 0;
            rect3.right = getWidth();
            this.U.bottom = n56.Y0(this.s);
            Rect rect4 = this.U;
            rect4.top = rect4.bottom - this.j;
            return;
        }
        if (iOrdinal == 2) {
            Rect rect5 = this.U;
            rect5.top = 0;
            rect5.bottom = getHeight();
            this.U.left = n56.U0(this.s);
            Rect rect6 = this.U;
            rect6.right = rect6.left + this.j;
            return;
        }
        if (iOrdinal != 3) {
            return;
        }
        Rect rect7 = this.U;
        rect7.left = 0;
        rect7.right = getWidth();
        this.U.top = n56.C0(this.s);
        Rect rect8 = this.U;
        rect8.bottom = rect8.top + this.j;
    }

    public void n() {
        int i = this.z;
        if (i == 1) {
            this.x = this.w;
        } else if (i == 2) {
            this.x = getMeasuredWidth();
        } else {
            this.x = 0;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.a0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnScrollChangedListener(this.a0);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R$id.mdMenu);
        if (viewFindViewById != null) {
            removeView(viewFindViewById);
            setMenuView(viewFindViewById);
        }
        View viewFindViewById2 = findViewById(R$id.mdContent);
        if (viewFindViewById2 != null) {
            removeView(viewFindViewById2);
            setContentView(viewFindViewById2);
        }
        if (getChildCount() > 2) {
            throw new IllegalStateException("Menu and content view added in xml must have id's @id/mdMenu and @id/mdContent");
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        j(savedState.e);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (!this.i) {
            setDropShadowColor(this.g);
        }
        if (getPosition() != this.R) {
            this.R = getPosition();
            setOffsetPixels(this.V * (-1.0f));
        }
        qs7 qs7Var = this.J;
        if (qs7Var != null) {
            qs7Var.h = i == 1;
            qs7Var.invalidateSelf();
        }
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.G == null) {
            this.G = new Bundle();
        }
        k(this.G);
        savedState.e = this.G;
        return savedState;
    }

    @Override // android.view.View
    public void postOnAnimation(Runnable runnable) {
        super.postOnAnimation(runnable);
    }

    public void setActiveView(View view) {
        setActiveView(view, 0);
    }

    public void setAllowIndicatorAnimation(boolean z) {
        if (z != this.n) {
            this.n = z;
            this.E = 1.0f;
            this.F = false;
            invalidate();
        }
    }

    public void setContentView(int i) {
        this.s.removeAllViews();
        LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.s, true);
    }

    public void setDrawOverlay(boolean z) {
        this.W = z;
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        ss7 ss7Var = this.M;
        if (ss7Var == null) {
            throw new IllegalStateException("setupUpIndicator(Activity) has not been called");
        }
        this.L = z;
        if (z) {
            ss7Var.a(this.J, f() ? this.O : this.P);
        } else {
            ss7Var.a(this.K, 0);
        }
    }

    public void setDrawerState(int i) {
        int i2 = this.v;
        if (i != i2) {
            this.v = i;
            c cVar = this.y;
            if (cVar != null) {
                cVar.b(i2, i);
            }
        }
    }

    public void setDropShadow(Drawable drawable) {
        this.h = drawable;
        this.i = drawable != null;
        invalidate();
    }

    public void setDropShadowColor(int i) {
        this.h = new GradientDrawable(getDropShadowOrientation(), new int[]{i, 16777215 & i});
        invalidate();
    }

    public void setDropShadowEnabled(boolean z) {
        this.f = z;
        invalidate();
    }

    public void setDropShadowSize(int i) {
        this.j = i;
        invalidate();
    }

    public abstract void setHardwareLayerEnabled(boolean z);

    public void setMaxAnimationDuration(int i) {
        this.H = i;
    }

    public abstract void setMenuSize(int i);

    public void setMenuView(int i) {
        this.r.removeAllViews();
        View viewInflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.r, false);
        this.q = viewInflate;
        this.r.addView(viewInflate);
    }

    public abstract void setOffsetMenuEnabled(boolean z);

    public void setOffsetPixels(float f) {
        ss7 ss7Var;
        int i = (int) this.V;
        int i2 = (int) f;
        this.V = f;
        if (this.J != null) {
            float fAbs = Math.abs(f) / this.t;
            qs7 qs7Var = this.J;
            qs7Var.f = fAbs;
            qs7Var.invalidateSelf();
            int i3 = f() ? this.O : this.P;
            if (this.L && (ss7Var = this.M) != null && i3 != this.N) {
                this.N = i3;
                Object obj = ss7Var.b;
                Activity activity = ss7Var.a;
                ts7.a aVar = (ts7.a) obj;
                if (aVar.a != null) {
                    try {
                        aVar.b.invoke(activity.getActionBar(), Integer.valueOf(i3));
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        if (i2 != i) {
            h(i2);
            this.u = i2 != 0;
            float fAbs2 = Math.abs(i2) / this.t;
            c cVar = this.y;
            if (cVar != null) {
                cVar.a(fAbs2, i2);
            }
        }
    }

    public void setOnDrawerStateChangeListener(c cVar) {
        this.y = cVar;
    }

    public void setOnInterceptMoveEventListener(d dVar) {
        this.I = dVar;
    }

    public void setSlideDrawable(int i) {
        setSlideDrawable(getResources().getDrawable(i));
    }

    public abstract void setTouchBezelSize(int i);

    public abstract void setTouchMode(int i);

    public void setupUpIndicator(Activity activity) {
        if (this.M == null) {
            this.M = new ss7(activity);
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(ts7.a);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
            this.K = drawable;
            if (this.L) {
                this.M.a(this.J, f() ? this.O : this.P);
            }
        }
    }

    public MenuDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.menuDrawerStyle);
    }

    public void setActiveView(View view, int i) {
        View view2 = this.l;
        this.l = view;
        this.m = i;
        if (this.n && view2 != null) {
            this.D = getIndicatorStartPos();
            this.F = true;
            ls7 ls7Var = this.B;
            ls7Var.h = false;
            ls7Var.e = 800;
            ls7Var.d = AnimationUtils.currentAnimationTimeMillis();
            ls7Var.a = 0.0f;
            ls7Var.b = 1.0f;
            ls7Var.g = 1.0f;
            ls7Var.f = 1.0f / ls7Var.e;
            a();
        }
        invalidate();
    }

    public void setSlideDrawable(Drawable drawable) {
        qs7 qs7Var = new qs7(drawable);
        this.J = qs7Var;
        qs7Var.h = getLayoutDirection() == 1;
        qs7Var.invalidateSelf();
        ss7 ss7Var = this.M;
        if (ss7Var != null) {
            ActionBar actionBar = ss7Var.a.getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayHomeAsUpEnabled(true);
            }
            if (this.L) {
                this.M.a(this.J, f() ? this.O : this.P);
            }
        }
    }

    public MenuDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new Rect();
        this.p = new Rect();
        this.v = 0;
        this.z = 1;
        this.A = true;
        this.C = new a();
        this.H = 600;
        this.S = new Rect();
        this.U = new Rect();
        this.a0 = new b();
        e(context, attributeSet, i);
    }

    public void setContentView(View view) {
        setContentView(view, new ViewGroup.LayoutParams(-1, -1));
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.s.removeAllViews();
        this.s.addView(view, layoutParams);
    }

    public void setDropShadow(int i) {
        setDropShadow(getResources().getDrawable(i));
    }

    public void setMenuView(View view) {
        setMenuView(view, new ViewGroup.LayoutParams(-1, -1));
    }

    public void setMenuView(View view, ViewGroup.LayoutParams layoutParams) {
        this.q = view;
        this.r.removeAllViews();
        this.r.addView(view, layoutParams);
    }
}
