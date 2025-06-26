package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.customview.view.AbsSavedState;
import defpackage.ha;
import defpackage.jb;
import defpackage.sa;
import defpackage.u7;
import defpackage.v9;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    public static final int[] I = {R.attr.colorPrimaryDark};
    public static final int[] J = {R.attr.layout_gravity};
    public Drawable A;
    public CharSequence B;
    public CharSequence C;
    public Object D;
    public boolean E;
    public final ArrayList<View> F;
    public Rect G;
    public Matrix H;
    public final c e;
    public float f;
    public int g;
    public int h;
    public float i;
    public Paint j;
    public final jb k;
    public final jb l;
    public final f m;
    public final f n;
    public int o;
    public boolean p;
    public boolean q;
    public int r;
    public int s;
    public int t;
    public int u;
    public boolean v;
    public d w;
    public List<d> x;
    public float y;
    public float z;

    public class a implements View.OnApplyWindowInsetsListener {
        public a(DrawerLayout drawerLayout) {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    public class b extends v9 {
        public final Rect d = new Rect();

        public b() {
        }

        @Override // defpackage.v9
        public boolean a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View viewF = DrawerLayout.this.f();
            if (viewF == null) {
                return true;
            }
            int iH = DrawerLayout.this.h(viewF);
            DrawerLayout drawerLayout = DrawerLayout.this;
            Objects.requireNonNull(drawerLayout);
            AtomicInteger atomicInteger = ha.a;
            int absoluteGravity = Gravity.getAbsoluteGravity(iH, drawerLayout.getLayoutDirection());
            CharSequence charSequence = absoluteGravity == 3 ? drawerLayout.B : absoluteGravity == 5 ? drawerLayout.C : null;
            if (charSequence == null) {
                return true;
            }
            text.add(charSequence);
            return true;
        }

        @Override // defpackage.v9
        public void c(View view, AccessibilityEvent accessibilityEvent) {
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            int[] iArr = DrawerLayout.I;
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.a.setClassName(DrawerLayout.class.getName());
            saVar.a.setFocusable(false);
            saVar.a.setFocused(false);
            saVar.q(sa.a.e);
            saVar.q(sa.a.f);
        }

        @Override // defpackage.v9
        public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            int[] iArr = DrawerLayout.I;
            return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    public static final class c extends v9 {
        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            if (DrawerLayout.i(view)) {
                return;
            }
            saVar.v(null);
        }
    }

    public interface d {
        void a(View view);

        void b(View view);

        void c(int i);

        void d(View view, float f);
    }

    public class f extends jb.c {
        public final int a;
        public jb b;
        public final Runnable c = new a();

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                View viewD;
                int width;
                f fVar = f.this;
                int i = fVar.b.o;
                boolean z = fVar.a == 3;
                if (z) {
                    viewD = DrawerLayout.this.d(3);
                    width = (viewD != null ? -viewD.getWidth() : 0) + i;
                } else {
                    viewD = DrawerLayout.this.d(5);
                    width = DrawerLayout.this.getWidth() - i;
                }
                if (viewD != null) {
                    if (((!z || viewD.getLeft() >= width) && (z || viewD.getLeft() <= width)) || DrawerLayout.this.g(viewD) != 0) {
                        return;
                    }
                    e eVar = (e) viewD.getLayoutParams();
                    fVar.b.z(viewD, width, viewD.getTop());
                    eVar.c = true;
                    DrawerLayout.this.invalidate();
                    fVar.m();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (drawerLayout.v) {
                        return;
                    }
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        drawerLayout.getChildAt(i2).dispatchTouchEvent(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    drawerLayout.v = true;
                }
            }
        }

        public f(int i) {
            this.a = i;
        }

        @Override // jb.c
        public int a(View view, int i, int i2) {
            if (DrawerLayout.this.a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // jb.c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // jb.c
        public int c(View view) {
            if (DrawerLayout.this.k(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // jb.c
        public void e(int i, int i2) {
            View viewD = (i & 1) == 1 ? DrawerLayout.this.d(3) : DrawerLayout.this.d(5);
            if (viewD == null || DrawerLayout.this.g(viewD) != 0) {
                return;
            }
            this.b.c(viewD, i2);
        }

        @Override // jb.c
        public boolean f(int i) {
            return false;
        }

        @Override // jb.c
        public void g(int i, int i2) {
            DrawerLayout.this.postDelayed(this.c, 160L);
        }

        @Override // jb.c
        public void h(View view, int i) {
            ((e) view.getLayoutParams()).c = false;
            m();
        }

        @Override // jb.c
        public void i(int i) {
            DrawerLayout.this.o(i, this.b.s);
        }

        @Override // jb.c
        public void j(View view, int i, int i2, int i3, int i4) {
            float width = (DrawerLayout.this.a(view, 3) ? i + r3 : DrawerLayout.this.getWidth() - i) / view.getWidth();
            DrawerLayout.this.m(view, width);
            view.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // jb.c
        public void k(View view, float f, float f2) {
            int i;
            Objects.requireNonNull(DrawerLayout.this);
            float f3 = ((e) view.getLayoutParams()).b;
            int width = view.getWidth();
            if (DrawerLayout.this.a(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && f3 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && f3 > 0.5f)) {
                    width2 -= width;
                }
                i = width2;
            }
            this.b.x(i, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // jb.c
        public boolean l(View view, int i) {
            return DrawerLayout.this.k(view) && DrawerLayout.this.a(view, this.a) && DrawerLayout.this.g(view) == 0;
        }

        public final void m() {
            View viewD = DrawerLayout.this.d(this.a == 3 ? 5 : 3);
            if (viewD != null) {
                DrawerLayout.this.b(viewD);
            }
        }

        public void n() {
            DrawerLayout.this.removeCallbacks(this.c);
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public static boolean i(View view) {
        AtomicInteger atomicInteger = ha.a;
        return (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) ? false : true;
    }

    public boolean a(View view, int i) {
        return (h(view) & i) == i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (!k(childAt)) {
                this.F.add(childAt);
            } else {
                if (!k(childAt)) {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
                if ((((e) childAt.getLayoutParams()).d & 1) == 1) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            }
        }
        if (!z) {
            int size = this.F.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.F.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.F.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (e() != null || k(view)) {
            AtomicInteger atomicInteger = ha.a;
            view.setImportantForAccessibility(4);
        } else {
            AtomicInteger atomicInteger2 = ha.a;
            view.setImportantForAccessibility(1);
        }
    }

    public void b(View view) {
        if (!k(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        e eVar = (e) view.getLayoutParams();
        if (this.q) {
            eVar.b = 0.0f;
            eVar.d = 0;
        } else {
            eVar.d |= 4;
            if (a(view, 3)) {
                this.k.z(view, -view.getWidth(), view.getTop());
            } else {
                this.l.z(view, getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    public void c(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            e eVar = (e) childAt.getLayoutParams();
            if (k(childAt) && (!z || eVar.c)) {
                z2 |= a(childAt, 3) ? this.k.z(childAt, -childAt.getWidth(), childAt.getTop()) : this.l.z(childAt, getWidth(), childAt.getTop());
                eVar.c = false;
            }
        }
        this.m.n();
        this.n.n();
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i = 0; i < childCount; i++) {
            fMax = Math.max(fMax, ((e) getChildAt(i).getLayoutParams()).b);
        }
        this.i = fMax;
        boolean zJ = this.k.j(true);
        boolean zJ2 = this.l.j(true);
        if (zJ || zJ2) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public View d(int i) {
        AtomicInteger atomicInteger = ha.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((h(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean zDispatchGenericMotionEvent;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.i <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            if (this.G == null) {
                this.G = new Rect();
            }
            childAt.getHitRect(this.G);
            if (this.G.contains((int) x, (int) y) && !j(childAt)) {
                if (childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX, scrollY);
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(scrollX2, scrollY2);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.H == null) {
                            this.H = new Matrix();
                        }
                        matrix.invert(this.H);
                        motionEventObtain.transform(this.H);
                    }
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (zDispatchGenericMotionEvent) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        int height = getHeight();
        boolean zJ = j(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i = 0;
        if (zJ) {
            int childCount = getChildCount();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0) {
                    Drawable background = childAt.getBackground();
                    if ((background != null && background.getOpacity() == -1) && k(childAt) && childAt.getHeight() >= height) {
                        if (a(childAt, 3)) {
                            int right = childAt.getRight();
                            if (right > i2) {
                                i2 = right;
                            }
                        } else {
                            int left = childAt.getLeft();
                            if (left < width) {
                                width = left;
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i = i2;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        float f2 = this.i;
        if (f2 > 0.0f && zJ) {
            this.j.setColor((((int) ((((-16777216) & r15) >>> 24) * f2)) << 24) | (this.h & 16777215));
            canvas.drawRect(i, 0.0f, width, getHeight(), this.j);
        }
        return zDrawChild;
    }

    public View e() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((e) childAt.getLayoutParams()).d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public View f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (k(childAt)) {
                if (!k(childAt)) {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
                if (((e) childAt.getLayoutParams()).b > 0.0f) {
                    return childAt;
                }
            }
        }
        return null;
    }

    public int g(View view) {
        if (!k(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        int i = ((e) view.getLayoutParams()).a;
        AtomicInteger atomicInteger = ha.a;
        int layoutDirection = getLayoutDirection();
        if (i == 3) {
            int i2 = this.r;
            if (i2 != 3) {
                return i2;
            }
            int i3 = layoutDirection == 0 ? this.t : this.u;
            if (i3 != 3) {
                return i3;
            }
        } else if (i == 5) {
            int i4 = this.s;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.u : this.t;
            if (i5 != 3) {
                return i5;
            }
        } else if (i == 8388611) {
            int i6 = this.t;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.r : this.s;
            if (i7 != 3) {
                return i7;
            }
        } else if (i == 8388613) {
            int i8 = this.u;
            if (i8 != 3) {
                return i8;
            }
            int i9 = layoutDirection == 0 ? this.s : this.r;
            if (i9 != 3) {
                return i9;
            }
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    public float getDrawerElevation() {
        return this.f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.A;
    }

    public int h(View view) {
        int i = ((e) view.getLayoutParams()).a;
        AtomicInteger atomicInteger = ha.a;
        return Gravity.getAbsoluteGravity(i, getLayoutDirection());
    }

    public boolean j(View view) {
        return ((e) view.getLayoutParams()).a == 0;
    }

    public boolean k(View view) {
        int i = ((e) view.getLayoutParams()).a;
        AtomicInteger atomicInteger = ha.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    public void l(View view) {
        if (!k(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        e eVar = (e) view.getLayoutParams();
        if (this.q) {
            eVar.b = 1.0f;
            eVar.d = 1;
            n(view, true);
        } else {
            eVar.d |= 2;
            if (a(view, 3)) {
                this.k.z(view, 0, view.getTop());
            } else {
                this.l.z(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    public void m(View view, float f2) {
        e eVar = (e) view.getLayoutParams();
        if (f2 == eVar.b) {
            return;
        }
        eVar.b = f2;
        List<d> list = this.x;
        if (list == null) {
            return;
        }
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                this.x.get(size).d(view, f2);
            }
        }
    }

    public final void n(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || k(childAt)) && !(z && childAt == view)) {
                AtomicInteger atomicInteger = ha.a;
                childAt.setImportantForAccessibility(4);
            } else {
                AtomicInteger atomicInteger2 = ha.a;
                childAt.setImportantForAccessibility(1);
            }
        }
    }

    public void o(int i, View view) {
        View rootView;
        int i2 = this.k.a;
        int i3 = this.l.a;
        int i4 = 2;
        if (i2 == 1 || i3 == 1) {
            i4 = 1;
        } else if (i2 != 2 && i3 != 2) {
            i4 = 0;
        }
        if (view != null && i == 0) {
            float f2 = ((e) view.getLayoutParams()).b;
            if (f2 == 0.0f) {
                e eVar = (e) view.getLayoutParams();
                if ((eVar.d & 1) == 1) {
                    eVar.d = 0;
                    List<d> list = this.x;
                    if (list != null) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            this.x.get(size).b(view);
                        }
                    }
                    n(view, false);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f2 == 1.0f) {
                e eVar2 = (e) view.getLayoutParams();
                if ((eVar2.d & 1) == 0) {
                    eVar2.d = 1;
                    List<d> list2 = this.x;
                    if (list2 != null) {
                        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                            this.x.get(size2).a(view);
                        }
                    }
                    n(view, true);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i4 != this.o) {
            this.o = i4;
            List<d> list3 = this.x;
            if (list3 != null) {
                for (int size3 = list3.size() - 1; size3 >= 0; size3--) {
                    this.x.get(size3).c(i4);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.E || this.A == null) {
            return;
        }
        Object obj = this.D;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.A.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.A.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054 A[LOOP:1: B:11:0x0024->B:21:0x0054, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0052 A[SYNTHETIC] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            int r0 = r9.getActionMasked()
            jb r1 = r8.k
            boolean r1 = r1.y(r9)
            jb r2 = r8.l
            boolean r2 = r2.y(r9)
            r1 = r1 | r2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L6c
            if (r0 == r2) goto L65
            r9 = 2
            if (r0 == r9) goto L1e
            r9 = 3
            if (r0 == r9) goto L65
            goto L6a
        L1e:
            jb r9 = r8.k
            float[] r0 = r9.d
            int r0 = r0.length
            r4 = 0
        L24:
            if (r4 >= r0) goto L57
            boolean r5 = r9.o(r4)
            if (r5 != 0) goto L2d
            goto L4f
        L2d:
            float[] r5 = r9.f
            r5 = r5[r4]
            float[] r6 = r9.d
            r6 = r6[r4]
            float r5 = r5 - r6
            float[] r6 = r9.g
            r6 = r6[r4]
            float[] r7 = r9.e
            r7 = r7[r4]
            float r6 = r6 - r7
            float r5 = r5 * r5
            float r6 = r6 * r6
            float r6 = r6 + r5
            int r5 = r9.b
            int r5 = r5 * r5
            float r5 = (float) r5
            int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r5 <= 0) goto L4f
            r5 = 1
            goto L50
        L4f:
            r5 = 0
        L50:
            if (r5 == 0) goto L54
            r9 = 1
            goto L58
        L54:
            int r4 = r4 + 1
            goto L24
        L57:
            r9 = 0
        L58:
            if (r9 == 0) goto L6a
            androidx.drawerlayout.widget.DrawerLayout$f r9 = r8.m
            r9.n()
            androidx.drawerlayout.widget.DrawerLayout$f r9 = r8.n
            r9.n()
            goto L6a
        L65:
            r8.c(r2)
            r8.v = r3
        L6a:
            r9 = 0
            goto L94
        L6c:
            float r0 = r9.getX()
            float r9 = r9.getY()
            r8.y = r0
            r8.z = r9
            float r4 = r8.i
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L91
            jb r4 = r8.k
            int r0 = (int) r0
            int r9 = (int) r9
            android.view.View r9 = r4.m(r0, r9)
            if (r9 == 0) goto L91
            boolean r9 = r8.j(r9)
            if (r9 == 0) goto L91
            r9 = 1
            goto L92
        L91:
            r9 = 0
        L92:
            r8.v = r3
        L94:
            if (r1 != 0) goto Lbb
            if (r9 != 0) goto Lbb
            int r9 = r8.getChildCount()
            r0 = 0
        L9d:
            if (r0 >= r9) goto Lb2
            android.view.View r1 = r8.getChildAt(r0)
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.drawerlayout.widget.DrawerLayout$e r1 = (androidx.drawerlayout.widget.DrawerLayout.e) r1
            boolean r1 = r1.c
            if (r1 == 0) goto Laf
            r9 = 1
            goto Lb3
        Laf:
            int r0 = r0 + 1
            goto L9d
        Lb2:
            r9 = 0
        Lb3:
            if (r9 != 0) goto Lbb
            boolean r9 = r8.v
            if (r9 == 0) goto Lba
            goto Lbb
        Lba:
            r2 = 0
        Lbb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (f() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View viewF = f();
        if (viewF != null && g(viewF) == 0) {
            c(false);
        }
        return viewF != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f2;
        int i5;
        this.p = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (j(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) eVar).topMargin, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f3 = measuredWidth;
                        i5 = (-measuredWidth) + ((int) (eVar.b * f3));
                        f2 = (measuredWidth + i5) / f3;
                    } else {
                        float f4 = measuredWidth;
                        f2 = (i6 - r11) / f4;
                        i5 = i6 - ((int) (eVar.b * f4));
                    }
                    boolean z2 = f2 != eVar.b;
                    int i9 = eVar.a & 112;
                    if (i9 == 16) {
                        int i10 = i4 - i2;
                        int i11 = (i10 - measuredHeight) / 2;
                        int i12 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                        if (i11 < i12) {
                            i11 = i12;
                        } else {
                            int i13 = i11 + measuredHeight;
                            int i14 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                            if (i13 > i10 - i14) {
                                i11 = (i10 - i14) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i11, measuredWidth + i5, measuredHeight + i11);
                    } else if (i9 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
                    }
                    if (z2) {
                        m(childAt, f2);
                    }
                    int i17 = eVar.b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        this.p = false;
        this.q = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View viewD;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        int i = savedState.g;
        if (i != 0 && (viewD = d(i)) != null) {
            l(viewD);
        }
        int i2 = savedState.h;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.i;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.j;
        if (i4 != 3) {
            setDrawerLockMode(i4, 8388611);
        }
        int i5 = savedState.k;
        if (i5 != 3) {
            setDrawerLockMode(i5, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            e eVar = (e) getChildAt(i).getLayoutParams();
            int i2 = eVar.d;
            boolean z = i2 == 1;
            boolean z2 = i2 == 2;
            if (z || z2) {
                savedState.g = eVar.a;
                break;
            }
        }
        savedState.h = this.r;
        savedState.i = this.s;
        savedState.j = this.t;
        savedState.k = this.u;
        return savedState;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            jb r0 = r6.k
            r0.r(r7)
            jb r0 = r6.l
            r0.r(r7)
            int r0 = r7.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L60
            if (r0 == r2) goto L20
            r7 = 3
            if (r0 == r7) goto L1a
            goto L6e
        L1a:
            r6.c(r2)
            r6.v = r1
            goto L6e
        L20:
            float r0 = r7.getX()
            float r7 = r7.getY()
            jb r3 = r6.k
            int r4 = (int) r0
            int r5 = (int) r7
            android.view.View r3 = r3.m(r4, r5)
            if (r3 == 0) goto L5b
            boolean r3 = r6.j(r3)
            if (r3 == 0) goto L5b
            float r3 = r6.y
            float r0 = r0 - r3
            float r3 = r6.z
            float r7 = r7 - r3
            jb r3 = r6.k
            int r3 = r3.b
            float r0 = r0 * r0
            float r7 = r7 * r7
            float r7 = r7 + r0
            int r3 = r3 * r3
            float r0 = (float) r3
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 >= 0) goto L5b
            android.view.View r7 = r6.e()
            if (r7 == 0) goto L5b
            int r7 = r6.g(r7)
            r0 = 2
            if (r7 != r0) goto L5c
        L5b:
            r1 = 1
        L5c:
            r6.c(r1)
            goto L6e
        L60:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.y = r0
            r6.z = r7
            r6.v = r1
        L6e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            c(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.p) {
            return;
        }
        super.requestLayout();
    }

    public void setChildInsets(Object obj, boolean z) {
        this.D = obj;
        this.E = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f2) {
        this.f = f2;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (k(childAt)) {
                float f3 = this.f;
                AtomicInteger atomicInteger = ha.a;
                childAt.setElevation(f3);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(d dVar) {
        List<d> list;
        d dVar2 = this.w;
        if (dVar2 != null && dVar2 != null && (list = this.x) != null) {
            list.remove(dVar2);
        }
        if (dVar != null) {
            if (this.x == null) {
                this.x = new ArrayList();
            }
            this.x.add(dVar);
        }
        this.w = dVar;
    }

    public void setDrawerLockMode(int i, int i2) {
        View viewD;
        AtomicInteger atomicInteger = ha.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        if (i2 == 3) {
            this.r = i;
        } else if (i2 == 5) {
            this.s = i;
        } else if (i2 == 8388611) {
            this.t = i;
        } else if (i2 == 8388613) {
            this.u = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.k : this.l).b();
        }
        if (i != 1) {
            if (i == 2 && (viewD = d(absoluteGravity)) != null) {
                l(viewD);
                return;
            }
            return;
        }
        View viewD2 = d(absoluteGravity);
        if (viewD2 != null) {
            b(viewD2);
        }
    }

    public void setDrawerShadow(int i, int i2) {
        Context context = getContext();
        Object obj = u7.a;
        setDrawerShadow(context.getDrawable(i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        AtomicInteger atomicInteger = ha.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        if (absoluteGravity == 3) {
            this.B = charSequence;
        } else if (absoluteGravity == 5) {
            this.C = charSequence;
        }
    }

    public void setScrimColor(int i) {
        this.h = i;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.A = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.A = new ColorDrawable(i);
        invalidate();
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new c();
        this.h = -1728053248;
        this.j = new Paint();
        this.q = true;
        this.r = 3;
        this.s = 3;
        this.t = 3;
        this.u = 3;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.g = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        f fVar = new f(3);
        this.m = fVar;
        f fVar2 = new f(5);
        this.n = fVar2;
        jb jbVarK = jb.k(this, 1.0f, fVar);
        this.k = jbVarK;
        jbVarK.p = 1;
        jbVarK.n = f3;
        fVar.b = jbVarK;
        jb jbVarK2 = jb.k(this, 1.0f, fVar2);
        this.l = jbVarK2;
        jbVarK2.p = 2;
        jbVarK2.n = f3;
        fVar2.b = jbVarK2;
        setFocusableInTouchMode(true);
        AtomicInteger atomicInteger = ha.a;
        setImportantForAccessibility(1);
        ha.s(this, new b());
        setMotionEventSplittingEnabled(false);
        if (getFitsSystemWindows()) {
            setOnApplyWindowInsetsListener(new a(this));
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(I);
            try {
                this.A = typedArrayObtainStyledAttributes.getDrawable(0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.f = f2 * 10.0f;
        this.F = new ArrayList<>();
    }

    public void setStatusBarBackground(int i) {
        Drawable drawable;
        if (i != 0) {
            Context context = getContext();
            Object obj = u7.a;
            drawable = context.getDrawable(i);
        } else {
            drawable = null;
        }
        this.A = drawable;
        invalidate();
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public int a;
        public float b;
        public boolean c;
        public int d;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.J);
            this.a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public e(int i, int i2) {
            super(i, i2);
            this.a = 0;
        }

        public e(e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
            this.a = 0;
            this.a = eVar.a;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 0;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = 0;
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.g = 0;
        }
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, View view) {
        if (k(view)) {
            setDrawerLockMode(i, ((e) view.getLayoutParams()).a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }
}
