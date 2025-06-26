package androidx.slidingpanelayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.customview.view.AbsSavedState;
import defpackage.ha;
import defpackage.jb;
import defpackage.sa;
import defpackage.u7;
import defpackage.v9;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {
    public int e;
    public int f;
    public Drawable g;
    public Drawable h;
    public final int i;
    public boolean j;
    public View k;
    public float l;
    public float m;
    public int n;
    public boolean o;
    public int p;
    public float q;
    public float r;
    public e s;
    public final jb t;
    public boolean u;
    public boolean v;
    public final Rect w;
    public final ArrayList<b> x;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public boolean g;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.g ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, null);
            this.g = parcel.readInt() != 0;
        }
    }

    public class a extends v9 {
        public final Rect d = new Rect();

        public a() {
        }

        @Override // defpackage.v9
        public void c(View view, AccessibilityEvent accessibilityEvent) {
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(saVar.a);
            this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoObtain);
            Rect rect = this.d;
            accessibilityNodeInfoObtain.getBoundsInParent(rect);
            saVar.a.setBoundsInParent(rect);
            accessibilityNodeInfoObtain.getBoundsInScreen(rect);
            saVar.a.setBoundsInScreen(rect);
            saVar.a.setVisibleToUser(accessibilityNodeInfoObtain.isVisibleToUser());
            saVar.a.setPackageName(accessibilityNodeInfoObtain.getPackageName());
            saVar.a.setClassName(accessibilityNodeInfoObtain.getClassName());
            saVar.a.setContentDescription(accessibilityNodeInfoObtain.getContentDescription());
            saVar.a.setEnabled(accessibilityNodeInfoObtain.isEnabled());
            saVar.a.setClickable(accessibilityNodeInfoObtain.isClickable());
            saVar.a.setFocusable(accessibilityNodeInfoObtain.isFocusable());
            saVar.a.setFocused(accessibilityNodeInfoObtain.isFocused());
            saVar.a.setAccessibilityFocused(accessibilityNodeInfoObtain.isAccessibilityFocused());
            saVar.a.setSelected(accessibilityNodeInfoObtain.isSelected());
            saVar.a.setLongClickable(accessibilityNodeInfoObtain.isLongClickable());
            saVar.a.addAction(accessibilityNodeInfoObtain.getActions());
            saVar.a.setMovementGranularities(accessibilityNodeInfoObtain.getMovementGranularities());
            accessibilityNodeInfoObtain.recycle();
            saVar.a.setClassName(SlidingPaneLayout.class.getName());
            saVar.c = -1;
            saVar.a.setSource(view);
            AtomicInteger atomicInteger = ha.a;
            Object parentForAccessibility = view.getParentForAccessibility();
            if (parentForAccessibility instanceof View) {
                saVar.v((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!SlidingPaneLayout.this.c(childAt) && childAt.getVisibility() == 0) {
                    childAt.setImportantForAccessibility(1);
                    saVar.a.addChild(childAt);
                }
            }
        }

        @Override // defpackage.v9
        public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (SlidingPaneLayout.this.c(view)) {
                return false;
            }
            return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    public class b implements Runnable {
        public final View e;

        public b(View view) {
            this.e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.e.getParent() == SlidingPaneLayout.this) {
                this.e.setLayerType(0, null);
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                View view = this.e;
                Objects.requireNonNull(slidingPaneLayout);
                Paint paint = ((d) view.getLayoutParams()).d;
                AtomicInteger atomicInteger = ha.a;
                view.setLayerPaint(paint);
            }
            SlidingPaneLayout.this.x.remove(this);
        }
    }

    public class c extends jb.c {
        public c() {
        }

        @Override // jb.c
        public int a(View view, int i, int i2) {
            d dVar = (d) SlidingPaneLayout.this.k.getLayoutParams();
            if (!SlidingPaneLayout.this.d()) {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
                return Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.n + paddingLeft);
            }
            int width = SlidingPaneLayout.this.getWidth() - (SlidingPaneLayout.this.k.getWidth() + (SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
            return Math.max(Math.min(i, width), width - SlidingPaneLayout.this.n);
        }

        @Override // jb.c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // jb.c
        public int c(View view) {
            return SlidingPaneLayout.this.n;
        }

        @Override // jb.c
        public void e(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.t.c(slidingPaneLayout.k, i2);
        }

        @Override // jb.c
        public void h(View view, int i) {
            SlidingPaneLayout.this.g();
        }

        @Override // jb.c
        public void i(int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.t.a == 0) {
                if (slidingPaneLayout.l != 0.0f) {
                    View view = slidingPaneLayout.k;
                    e eVar = slidingPaneLayout.s;
                    if (eVar != null) {
                        eVar.b(view);
                    }
                    slidingPaneLayout.sendAccessibilityEvent(32);
                    SlidingPaneLayout.this.u = true;
                    return;
                }
                slidingPaneLayout.i(slidingPaneLayout.k);
                SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                View view2 = slidingPaneLayout2.k;
                e eVar2 = slidingPaneLayout2.s;
                if (eVar2 != null) {
                    eVar2.c(view2);
                }
                slidingPaneLayout2.sendAccessibilityEvent(32);
                SlidingPaneLayout.this.u = false;
            }
        }

        @Override // jb.c
        public void j(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.k == null) {
                slidingPaneLayout.l = 0.0f;
            } else {
                boolean zD = slidingPaneLayout.d();
                d dVar = (d) slidingPaneLayout.k.getLayoutParams();
                int width = slidingPaneLayout.k.getWidth();
                if (zD) {
                    i = (slidingPaneLayout.getWidth() - i) - width;
                }
                float paddingRight = (i - ((zD ? slidingPaneLayout.getPaddingRight() : slidingPaneLayout.getPaddingLeft()) + (zD ? ((ViewGroup.MarginLayoutParams) dVar).rightMargin : ((ViewGroup.MarginLayoutParams) dVar).leftMargin))) / slidingPaneLayout.n;
                slidingPaneLayout.l = paddingRight;
                if (slidingPaneLayout.p != 0) {
                    slidingPaneLayout.f(paddingRight);
                }
                if (dVar.c) {
                    slidingPaneLayout.b(slidingPaneLayout.k, slidingPaneLayout.l, slidingPaneLayout.e);
                }
                View view2 = slidingPaneLayout.k;
                e eVar = slidingPaneLayout.s;
                if (eVar != null) {
                    eVar.a(view2, slidingPaneLayout.l);
                }
            }
            SlidingPaneLayout.this.invalidate();
        }

        @Override // jb.c
        public void k(View view, float f, float f2) {
            int paddingLeft;
            d dVar = (d) view.getLayoutParams();
            if (SlidingPaneLayout.this.d()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
                if (f < 0.0f || (f == 0.0f && SlidingPaneLayout.this.l > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.n;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.k.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) dVar).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.l > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.n;
                }
            }
            SlidingPaneLayout.this.t.x(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // jb.c
        public boolean l(View view, int i) {
            if (SlidingPaneLayout.this.o) {
                return false;
            }
            return ((d) view.getLayoutParams()).b;
        }
    }

    public interface e {
        void a(View view, float f);

        void b(View view);

        void c(View view);
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public final boolean a(int i) {
        if (!this.v && !h(0.0f)) {
            return false;
        }
        this.u = false;
        return true;
    }

    public final void b(View view, float f, int i) {
        d dVar = (d) view.getLayoutParams();
        if (f <= 0.0f || i == 0) {
            if (view.getLayerType() != 0) {
                Paint paint = dVar.d;
                if (paint != null) {
                    paint.setColorFilter(null);
                }
                b bVar = new b(view);
                this.x.add(bVar);
                AtomicInteger atomicInteger = ha.a;
                postOnAnimation(bVar);
                return;
            }
            return;
        }
        int i2 = (((int) ((((-16777216) & i) >>> 24) * f)) << 24) | (i & 16777215);
        if (dVar.d == null) {
            dVar.d = new Paint();
        }
        dVar.d.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_OVER));
        if (view.getLayerType() != 2) {
            view.setLayerType(2, dVar.d);
        }
        Paint paint2 = ((d) view.getLayoutParams()).d;
        AtomicInteger atomicInteger2 = ha.a;
        view.setLayerPaint(paint2);
    }

    public boolean c(View view) {
        if (view == null) {
            return false;
        }
        return this.j && ((d) view.getLayoutParams()).c && this.l > 0.0f;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.t.j(true)) {
            if (!this.j) {
                this.t.a();
            } else {
                AtomicInteger atomicInteger = ha.a;
                postInvalidateOnAnimation();
            }
        }
    }

    public boolean d() {
        AtomicInteger atomicInteger = ha.a;
        return getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int right;
        super.draw(canvas);
        Drawable drawable = d() ? this.h : this.g;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (d()) {
            right = childAt.getRight();
            i = intrinsicWidth + right;
        } else {
            int left = childAt.getLeft();
            int i2 = left - intrinsicWidth;
            i = left;
            right = i2;
        }
        drawable.setBounds(right, top, i, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        d dVar = (d) view.getLayoutParams();
        int iSave = canvas.save();
        if (this.j && !dVar.b && this.k != null) {
            canvas.getClipBounds(this.w);
            if (d()) {
                Rect rect = this.w;
                rect.left = Math.max(rect.left, this.k.getRight());
            } else {
                Rect rect2 = this.w;
                rect2.right = Math.min(rect2.right, this.k.getLeft());
            }
            canvas.clipRect(this.w);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    public final boolean e(int i) {
        if (!this.v && !h(1.0f)) {
            return false;
        }
        this.u = true;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(float r10) {
        /*
            r9 = this;
            boolean r0 = r9.d()
            android.view.View r1 = r9.k
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.slidingpanelayout.widget.SlidingPaneLayout$d r1 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.d) r1
            boolean r2 = r1.c
            r3 = 0
            if (r2 == 0) goto L1c
            if (r0 == 0) goto L16
            int r1 = r1.rightMargin
            goto L18
        L16:
            int r1 = r1.leftMargin
        L18:
            if (r1 > 0) goto L1c
            r1 = 1
            goto L1d
        L1c:
            r1 = 0
        L1d:
            int r2 = r9.getChildCount()
        L21:
            if (r3 >= r2) goto L59
            android.view.View r4 = r9.getChildAt(r3)
            android.view.View r5 = r9.k
            if (r4 != r5) goto L2c
            goto L56
        L2c:
            float r5 = r9.m
            r6 = 1065353216(0x3f800000, float:1.0)
            float r5 = r6 - r5
            int r7 = r9.p
            float r8 = (float) r7
            float r5 = r5 * r8
            int r5 = (int) r5
            r9.m = r10
            float r8 = r6 - r10
            float r7 = (float) r7
            float r8 = r8 * r7
            int r7 = (int) r8
            int r5 = r5 - r7
            if (r0 == 0) goto L44
            int r5 = -r5
        L44:
            r4.offsetLeftAndRight(r5)
            if (r1 == 0) goto L56
            float r5 = r9.m
            if (r0 == 0) goto L4f
            float r5 = r5 - r6
            goto L51
        L4f:
            float r5 = r6 - r5
        L51:
            int r6 = r9.f
            r9.b(r4, r5, r6)
        L56:
            int r3 = r3 + 1
            goto L21
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.f(float):void");
    }

    public void g() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new d((ViewGroup.MarginLayoutParams) layoutParams) : new d(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.f;
    }

    public int getParallaxDistance() {
        return this.p;
    }

    public int getSliderFadeColor() {
        return this.e;
    }

    public boolean h(float f) {
        int paddingLeft;
        if (!this.j) {
            return false;
        }
        boolean zD = d();
        d dVar = (d) this.k.getLayoutParams();
        if (zD) {
            int paddingRight = getPaddingRight() + ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
            paddingLeft = (int) (getWidth() - (((f * this.n) + paddingRight) + this.k.getWidth()));
        } else {
            paddingLeft = (int) ((f * this.n) + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin);
        }
        jb jbVar = this.t;
        View view = this.k;
        if (!jbVar.z(view, paddingLeft, view.getTop())) {
            return false;
        }
        g();
        AtomicInteger atomicInteger = ha.a;
        postInvalidateOnAnimation();
        return true;
    }

    public void i(View view) {
        int left;
        int right;
        int top;
        int bottom;
        View childAt;
        boolean z;
        View view2 = view;
        boolean zD = d();
        int width = zD ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = zD ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !view.isOpaque()) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            left = view.getLeft();
            right = view.getRight();
            top = view.getTop();
            bottom = view.getBottom();
        }
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount && (childAt = getChildAt(i)) != view2) {
            if (childAt.getVisibility() == 8) {
                z = zD;
            } else {
                z = zD;
                childAt.setVisibility((Math.max(zD ? paddingLeft : width, childAt.getLeft()) < left || Math.max(paddingTop, childAt.getTop()) < top || Math.min(zD ? width : paddingLeft, childAt.getRight()) > right || Math.min(height, childAt.getBottom()) > bottom) ? 0 : 4);
            }
            i++;
            view2 = view;
            zD = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.v = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.v = true;
        int size = this.x.size();
        for (int i = 0; i < size; i++) {
            this.x.get(i).run();
        }
        this.x.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.j && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.u = !this.t.q(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.j || (this.o && actionMasked != 0)) {
            this.t.b();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.t.b();
            return false;
        }
        if (actionMasked == 0) {
            this.o = false;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.q = x;
            this.r = y;
            if (this.t.q(this.k, (int) x, (int) y) && c(this.k)) {
                z = true;
            }
            return this.t.y(motionEvent) || z;
        }
        if (actionMasked == 2) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float fAbs = Math.abs(x2 - this.q);
            float fAbs2 = Math.abs(y2 - this.r);
            jb jbVar = this.t;
            if (fAbs > jbVar.b && fAbs2 > fAbs) {
                jbVar.b();
                this.o = true;
                return false;
            }
        }
        z = false;
        if (this.t.y(motionEvent)) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean zD = d();
        if (zD) {
            this.t.p = 2;
        } else {
            this.t.p = 1;
        }
        int i10 = i3 - i;
        int paddingRight = zD ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = zD ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.v) {
            this.l = (this.j && this.u) ? 1.0f : 0.0f;
        }
        int i11 = paddingRight;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (dVar.b) {
                    int i13 = i10 - paddingLeft;
                    int iMin = (Math.min(paddingRight, i13 - this.i) - i11) - (((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    this.n = iMin;
                    int i14 = zD ? ((ViewGroup.MarginLayoutParams) dVar).rightMargin : ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
                    dVar.c = (measuredWidth / 2) + ((i11 + i14) + iMin) > i13;
                    int i15 = (int) (iMin * this.l);
                    i5 = i14 + i15 + i11;
                    this.l = i15 / iMin;
                    i6 = 0;
                } else if (!this.j || (i7 = this.p) == 0) {
                    i5 = paddingRight;
                    i6 = 0;
                } else {
                    i6 = (int) ((1.0f - this.l) * i7);
                    i5 = paddingRight;
                }
                if (zD) {
                    i9 = (i10 - i5) + i6;
                    i8 = i9 - measuredWidth;
                } else {
                    i8 = i5 - i6;
                    i9 = i8 + measuredWidth;
                }
                childAt.layout(i8, paddingTop, i9, childAt.getMeasuredHeight() + paddingTop);
                i11 = i5;
                paddingRight = childAt.getWidth() + paddingRight;
            }
        }
        if (this.v) {
            if (this.j) {
                if (this.p != 0) {
                    f(this.l);
                }
                if (((d) this.k.getLayoutParams()).c) {
                    b(this.k, this.l, this.e);
                }
            } else {
                for (int i16 = 0; i16 < childCount; i16++) {
                    b(getChildAt(i16), 0.0f, this.e);
                }
            }
            i(this.k);
        }
        this.v = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1 A[PHI: r13
      0x00b1: PHI (r13v2 float) = (r13v1 float), (r13v7 float) binds: [B:35:0x00a8, B:37:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r21, int r22) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        if (savedState.g) {
            e(0);
        } else {
            a(0);
        }
        this.u = savedState.g;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean z = this.j;
        savedState.g = z ? !z || this.l == 1.0f : this.u;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.v = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.j) {
            return super.onTouchEvent(motionEvent);
        }
        this.t.r(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.q = x;
            this.r = y;
        } else if (actionMasked == 1 && c(this.k)) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.q;
            float f2 = y2 - this.r;
            jb jbVar = this.t;
            int i = jbVar.b;
            if ((f2 * f2) + (f * f) < i * i && jbVar.q(this.k, (int) x2, (int) y2)) {
                a(0);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.j) {
            return;
        }
        this.u = view == this.k;
    }

    public void setCoveredFadeColor(int i) {
        this.f = i;
    }

    public void setPanelSlideListener(e eVar) {
        this.s = eVar;
    }

    public void setParallaxDistance(int i) {
        this.p = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable) {
        this.g = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable) {
        this.h = drawable;
    }

    @Deprecated
    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        Context context = getContext();
        Object obj = u7.a;
        setShadowDrawableLeft(context.getDrawable(i));
    }

    public void setShadowResourceRight(int i) {
        Context context = getContext();
        Object obj = u7.a;
        setShadowDrawableRight(context.getDrawable(i));
    }

    public void setSliderFadeColor(int i) {
        this.e = i;
    }

    public static class d extends ViewGroup.MarginLayoutParams {
        public static final int[] e = {R.attr.layout_weight};
        public float a;
        public boolean b;
        public boolean c;
        public Paint d;

        public d() {
            super(-1, -1);
            this.a = 0.0f;
        }

        public d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0.0f;
        }

        public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 0.0f;
        }

        public d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.a = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = -858993460;
        this.v = true;
        this.w = new Rect();
        this.x = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.i = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        ha.s(this, new a());
        setImportantForAccessibility(1);
        jb jbVarK = jb.k(this, 0.5f, new c());
        this.t = jbVarK;
        jbVarK.n = f * 400.0f;
    }
}
