package androidx.viewpager2.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.R$styleable;
import defpackage.bj;
import defpackage.cj;
import defpackage.dj;
import defpackage.ej;
import defpackage.fj;
import defpackage.ha;
import defpackage.sa;
import defpackage.ua;
import defpackage.yf;
import defpackage.yi;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {
    public final Rect e;
    public final Rect f;
    public bj g;
    public int h;
    public boolean i;
    public RecyclerView.g j;
    public LinearLayoutManager k;
    public int l;
    public Parcelable m;
    public RecyclerView n;
    public yf o;
    public ej p;
    public bj q;
    public cj r;
    public dj s;
    public RecyclerView.j t;
    public boolean u;
    public boolean v;
    public int w;
    public d x;

    public class a extends e {
        public a() {
            super(null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onChanged() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.i = true;
            viewPager2.p.l = true;
        }
    }

    public class b extends g {
        public b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g
        public void a(int i) {
            if (i == 0) {
                ViewPager2.this.e();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g
        public void c(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.h != i) {
                viewPager2.h = i;
                viewPager2.x.b();
            }
        }
    }

    public class c extends g {
        public c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.g
        public void c(int i) {
            ViewPager2.this.clearFocus();
            if (ViewPager2.this.hasFocus()) {
                ViewPager2.this.n.requestFocus(2);
            }
        }
    }

    public abstract class d {
        public d(ViewPager2 viewPager2, a aVar) {
        }

        public abstract void a(bj bjVar, RecyclerView recyclerView);

        public abstract void b();
    }

    public static abstract class e extends RecyclerView.g {
        public e(a aVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }
    }

    public class f extends LinearLayoutManager {
        public f(Context context) {
            super(1, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public boolean D0(RecyclerView.t tVar, RecyclerView.x xVar, int i, Bundle bundle) {
            Objects.requireNonNull(ViewPager2.this.x);
            return super.D0(tVar, xVar, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public boolean K0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void a1(RecyclerView.x xVar, int[] iArr) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.a1(xVar, iArr);
                return;
            }
            int pageSize = ViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public void l0(RecyclerView.t tVar, RecyclerView.x xVar, sa saVar) {
            super.l0(tVar, xVar, saVar);
            Objects.requireNonNull(ViewPager2.this.x);
        }
    }

    public static abstract class g {
        public void a(int i) {
        }

        public void b(int i, float f, int i2) {
        }

        public void c(int i) {
        }
    }

    public class h extends d {
        public final ua a;
        public final ua b;
        public RecyclerView.g c;

        public class a implements ua {
            public a() {
            }

            @Override // defpackage.ua
            public boolean a(View view, ua.a aVar) {
                h.this.c(((ViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        }

        public class b implements ua {
            public b() {
            }

            @Override // defpackage.ua
            public boolean a(View view, ua.a aVar) {
                h.this.c(((ViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        }

        public class c extends e {
            public c() {
                super(null);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.g
            public void onChanged() {
                h.this.d();
            }
        }

        public h() {
            super(ViewPager2.this, null);
            this.a = new a();
            this.b = new b();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.d
        public void a(bj bjVar, RecyclerView recyclerView) {
            AtomicInteger atomicInteger = ha.a;
            recyclerView.setImportantForAccessibility(2);
            this.c = new c();
            if (ViewPager2.this.getImportantForAccessibility() == 0) {
                ViewPager2.this.setImportantForAccessibility(1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.d
        public void b() {
            d();
        }

        public void c(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.v) {
                viewPager2.d(i, true);
            }
        }

        public void d() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = R.id.accessibilityActionPageLeft;
            ha.o(viewPager2, R.id.accessibilityActionPageLeft);
            ha.o(viewPager2, R.id.accessibilityActionPageRight);
            ha.o(viewPager2, R.id.accessibilityActionPageUp);
            ha.o(viewPager2, R.id.accessibilityActionPageDown);
            if (ViewPager2.this.getAdapter() == null || (itemCount = ViewPager2.this.getAdapter().getItemCount()) == 0) {
                return;
            }
            ViewPager2 viewPager22 = ViewPager2.this;
            if (viewPager22.v) {
                if (viewPager22.getOrientation() != 0) {
                    if (ViewPager2.this.h < itemCount - 1) {
                        ha.q(viewPager2, new sa.a(R.id.accessibilityActionPageDown, null), null, this.a);
                    }
                    if (ViewPager2.this.h > 0) {
                        ha.q(viewPager2, new sa.a(R.id.accessibilityActionPageUp, null), null, this.b);
                        return;
                    }
                    return;
                }
                boolean zB = ViewPager2.this.b();
                int i2 = zB ? R.id.accessibilityActionPageLeft : R.id.accessibilityActionPageRight;
                if (zB) {
                    i = R.id.accessibilityActionPageRight;
                }
                if (ViewPager2.this.h < itemCount - 1) {
                    ha.q(viewPager2, new sa.a(i2, null), null, this.a);
                }
                if (ViewPager2.this.h > 0) {
                    ha.q(viewPager2, new sa.a(i, null), null, this.b);
                }
            }
        }
    }

    public interface i {
        void a(View view, float f);
    }

    public class j extends yf {
        public j() {
        }

        @Override // defpackage.yf, defpackage.dg
        public View c(RecyclerView.m mVar) {
            if (ViewPager2.this.r.a.m) {
                return null;
            }
            return super.c(mVar);
        }
    }

    public class k extends RecyclerView {
        public k(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public CharSequence getAccessibilityClassName() {
            Objects.requireNonNull(ViewPager2.this.x);
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.h);
            accessibilityEvent.setToIndex(ViewPager2.this.h);
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.v && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.v && super.onTouchEvent(motionEvent);
        }
    }

    public static class l implements Runnable {
        public final int e;
        public final RecyclerView f;

        public l(int i, RecyclerView recyclerView) {
            this.e = i;
            this.f = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f.m0(this.e);
        }
    }

    public ViewPager2(Context context) throws IllegalStateException {
        super(context);
        this.e = new Rect();
        this.f = new Rect();
        this.g = new bj(3);
        this.i = false;
        this.j = new a();
        this.l = -1;
        this.t = null;
        this.u = false;
        this.v = true;
        this.w = -1;
        a(context, null);
    }

    public final void a(Context context, AttributeSet attributeSet) throws IllegalStateException {
        this.x = new h();
        k kVar = new k(context);
        this.n = kVar;
        AtomicInteger atomicInteger = ha.a;
        kVar.setId(View.generateViewId());
        this.n.setDescendantFocusability(131072);
        f fVar = new f(context);
        this.k = fVar;
        this.n.setLayoutManager(fVar);
        this.n.setScrollingTouchSlop(1);
        int[] iArr = R$styleable.ViewPager2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.ViewPager2_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
            this.n.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            RecyclerView recyclerView = this.n;
            fj fjVar = new fj(this);
            if (recyclerView.G == null) {
                recyclerView.G = new ArrayList();
            }
            recyclerView.G.add(fjVar);
            ej ejVar = new ej(this);
            this.p = ejVar;
            this.r = new cj(this, ejVar, this.n);
            j jVar = new j();
            this.o = jVar;
            jVar.a(this.n);
            this.n.h(this.p);
            bj bjVar = new bj(3);
            this.q = bjVar;
            this.p.a = bjVar;
            b bVar = new b();
            c cVar = new c();
            bjVar.a.add(bVar);
            this.q.a.add(cVar);
            this.x.a(this.q, this.n);
            bj bjVar2 = this.q;
            bjVar2.a.add(this.g);
            dj djVar = new dj(this.k);
            this.s = djVar;
            this.q.a.add(djVar);
            RecyclerView recyclerView2 = this.n;
            attachViewToParent(recyclerView2, 0, recyclerView2.getLayoutParams());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public boolean b() {
        return this.k.K() == 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        RecyclerView.e adapter;
        if (this.l == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.m;
        if (parcelable != null) {
            if (adapter instanceof yi) {
                ((yi) adapter).b(parcelable);
            }
            this.m = null;
        }
        int iMax = Math.max(0, Math.min(this.l, adapter.getItemCount() - 1));
        this.h = iMax;
        this.l = -1;
        this.n.i0(iMax);
        ((h) this.x).d();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        return this.n.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        return this.n.canScrollVertically(i2);
    }

    public void d(int i2, boolean z) {
        g gVar;
        RecyclerView.e adapter = getAdapter();
        if (adapter == null) {
            if (this.l != -1) {
                this.l = Math.max(i2, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i2, 0), adapter.getItemCount() - 1);
        int i3 = this.h;
        if (iMin == i3) {
            if (this.p.f == 0) {
                return;
            }
        }
        if (iMin == i3 && z) {
            return;
        }
        double d2 = i3;
        this.h = iMin;
        ((h) this.x).d();
        ej ejVar = this.p;
        if (!(ejVar.f == 0)) {
            ejVar.f();
            ej.a aVar = ejVar.g;
            d2 = aVar.a + aVar.b;
        }
        ej ejVar2 = this.p;
        ejVar2.e = z ? 2 : 3;
        ejVar2.m = false;
        boolean z2 = ejVar2.i != iMin;
        ejVar2.i = iMin;
        ejVar2.d(2);
        if (z2 && (gVar = ejVar2.a) != null) {
            gVar.c(iMin);
        }
        if (!z) {
            this.n.i0(iMin);
            return;
        }
        double d3 = iMin;
        if (Math.abs(d3 - d2) <= 3.0d) {
            this.n.m0(iMin);
            return;
        }
        this.n.i0(d3 > d2 ? iMin - 3 : iMin + 3);
        RecyclerView recyclerView = this.n;
        recyclerView.post(new l(iMin, recyclerView));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).e;
            sparseArray.put(this.n.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        c();
    }

    public void e() {
        yf yfVar = this.o;
        if (yfVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewC = yfVar.c(this.k);
        if (viewC == null) {
            return;
        }
        int iR = this.k.R(viewC);
        if (iR != this.h && getScrollState() == 0) {
            this.q.c(iR);
        }
        this.i = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        Objects.requireNonNull(this.x);
        Objects.requireNonNull(this.x);
        return "androidx.viewpager.widget.ViewPager";
    }

    public RecyclerView.e getAdapter() {
        return this.n.getAdapter();
    }

    public int getCurrentItem() {
        return this.h;
    }

    public int getItemDecorationCount() {
        return this.n.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.w;
    }

    public int getOrientation() {
        return this.k.r;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.n;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.p.f;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo r6) {
        /*
            r5 = this;
            super.onInitializeAccessibilityNodeInfo(r6)
            androidx.viewpager2.widget.ViewPager2$d r0 = r5.x
            androidx.viewpager2.widget.ViewPager2$h r0 = (androidx.viewpager2.widget.ViewPager2.h) r0
            androidx.viewpager2.widget.ViewPager2 r1 = androidx.viewpager2.widget.ViewPager2.this
            androidx.recyclerview.widget.RecyclerView$e r1 = r1.getAdapter()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L31
            androidx.viewpager2.widget.ViewPager2 r1 = androidx.viewpager2.widget.ViewPager2.this
            int r1 = r1.getOrientation()
            if (r1 != r2) goto L24
            androidx.viewpager2.widget.ViewPager2 r1 = androidx.viewpager2.widget.ViewPager2.this
            androidx.recyclerview.widget.RecyclerView$e r1 = r1.getAdapter()
            int r1 = r1.getItemCount()
            goto L32
        L24:
            androidx.viewpager2.widget.ViewPager2 r1 = androidx.viewpager2.widget.ViewPager2.this
            androidx.recyclerview.widget.RecyclerView$e r1 = r1.getAdapter()
            int r1 = r1.getItemCount()
            r4 = r1
            r1 = 0
            goto L33
        L31:
            r1 = 0
        L32:
            r4 = 0
        L33:
            sa$b r1 = sa.b.a(r1, r4, r3, r3)
            java.lang.Object r1 = r1.a
            android.view.accessibility.AccessibilityNodeInfo$CollectionInfo r1 = (android.view.accessibility.AccessibilityNodeInfo.CollectionInfo) r1
            r6.setCollectionInfo(r1)
            androidx.viewpager2.widget.ViewPager2 r1 = androidx.viewpager2.widget.ViewPager2.this
            androidx.recyclerview.widget.RecyclerView$e r1 = r1.getAdapter()
            if (r1 != 0) goto L47
            goto L6c
        L47:
            int r1 = r1.getItemCount()
            if (r1 == 0) goto L6c
            androidx.viewpager2.widget.ViewPager2 r3 = androidx.viewpager2.widget.ViewPager2.this
            boolean r4 = r3.v
            if (r4 != 0) goto L54
            goto L6c
        L54:
            int r3 = r3.h
            if (r3 <= 0) goto L5d
            r3 = 8192(0x2000, float:1.148E-41)
            r6.addAction(r3)
        L5d:
            androidx.viewpager2.widget.ViewPager2 r0 = androidx.viewpager2.widget.ViewPager2.this
            int r0 = r0.h
            int r1 = r1 - r2
            if (r0 >= r1) goto L69
            r0 = 4096(0x1000, float:5.74E-42)
            r6.addAction(r0)
        L69:
            r6.setScrollable(r2)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ViewPager2.onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.n.getMeasuredWidth();
        int measuredHeight = this.n.getMeasuredHeight();
        this.e.left = getPaddingLeft();
        this.e.right = (i4 - i2) - getPaddingRight();
        this.e.top = getPaddingTop();
        this.e.bottom = (i5 - i3) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.e, this.f);
        RecyclerView recyclerView = this.n;
        Rect rect = this.f;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.i) {
            e();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        measureChild(this.n, i2, i3);
        int measuredWidth = this.n.getMeasuredWidth();
        int measuredHeight = this.n.getMeasuredHeight();
        int measuredState = this.n.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, measuredState), ViewGroup.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.l = savedState.f;
        this.m = savedState.g;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.e = this.n.getId();
        int i2 = this.l;
        if (i2 == -1) {
            i2 = this.h;
        }
        savedState.f = i2;
        Parcelable parcelable = this.m;
        if (parcelable != null) {
            savedState.g = parcelable;
        } else {
            Object adapter = this.n.getAdapter();
            if (adapter instanceof yi) {
                savedState.g = ((yi) adapter).a();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        Objects.requireNonNull((h) this.x);
        if (!(i2 == 8192 || i2 == 4096)) {
            return super.performAccessibilityAction(i2, bundle);
        }
        h hVar = (h) this.x;
        Objects.requireNonNull(hVar);
        if (!(i2 == 8192 || i2 == 4096)) {
            throw new IllegalStateException();
        }
        hVar.c(i2 == 8192 ? ViewPager2.this.getCurrentItem() - 1 : ViewPager2.this.getCurrentItem() + 1);
        return true;
    }

    public void setAdapter(RecyclerView.e eVar) {
        RecyclerView.e adapter = this.n.getAdapter();
        h hVar = (h) this.x;
        Objects.requireNonNull(hVar);
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(hVar.c);
        }
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.j);
        }
        this.n.setAdapter(eVar);
        this.h = 0;
        c();
        h hVar2 = (h) this.x;
        hVar2.d();
        if (eVar != null) {
            eVar.registerAdapterDataObserver(hVar2.c);
        }
        if (eVar != null) {
            eVar.registerAdapterDataObserver(this.j);
        }
    }

    public void setCurrentItem(int i2) {
        setCurrentItem(i2, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        ((h) this.x).d();
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1 && i2 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.w = i2;
        this.n.requestLayout();
    }

    public void setOrientation(int i2) {
        this.k.D1(i2);
        ((h) this.x).d();
    }

    public void setPageTransformer(i iVar) {
        if (iVar != null) {
            if (!this.u) {
                this.t = this.n.getItemAnimator();
                this.u = true;
            }
            this.n.setItemAnimator(null);
        } else if (this.u) {
            this.n.setItemAnimator(this.t);
            this.t = null;
            this.u = false;
        }
        dj djVar = this.s;
        if (iVar == djVar.b) {
            return;
        }
        djVar.b = iVar;
        if (iVar == null) {
            return;
        }
        ej ejVar = this.p;
        ejVar.f();
        ej.a aVar = ejVar.g;
        double d2 = aVar.a + aVar.b;
        int i2 = (int) d2;
        float f2 = (float) (d2 - i2);
        this.s.b(i2, f2, Math.round(getPageSize() * f2));
    }

    public void setUserInputEnabled(boolean z) {
        this.v = z;
        ((h) this.x).d();
    }

    public void setCurrentItem(int i2, boolean z) {
        if (this.r.a.m) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        d(i2, z);
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int e;
        public int f;
        public Parcelable g;

        public static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, null) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeParcelable(this.g, i);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readParcelable(null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet) throws IllegalStateException {
        super(context, attributeSet);
        this.e = new Rect();
        this.f = new Rect();
        this.g = new bj(3);
        this.i = false;
        this.j = new a();
        this.l = -1;
        this.t = null;
        this.u = false;
        this.v = true;
        this.w = -1;
        a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i2) throws IllegalStateException {
        super(context, attributeSet, i2);
        this.e = new Rect();
        this.f = new Rect();
        this.g = new bj(3);
        this.i = false;
        this.j = new a();
        this.l = -1;
        this.t = null;
        this.u = false;
        this.v = true;
        this.w = -1;
        a(context, attributeSet);
    }
}
