package com.noinnion.android.view.viewpager;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.c9;
import defpackage.d9;
import defpackage.ea;
import defpackage.ha;
import defpackage.jo;
import defpackage.la;
import defpackage.qa;
import defpackage.ry6;
import defpackage.sa;
import defpackage.v9;
import defpackage.xa;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes2.dex */
public class FixedViewPager extends ViewGroup {
    public static final int[] i0 = {R.attr.layout_gravity};
    public static final Comparator<e> j0 = new a();
    public static final Interpolator k0 = new b();
    public static final l l0 = new l();
    public int A;
    public boolean B;
    public boolean C;
    public int D;
    public int E;
    public int F;
    public float G;
    public float H;
    public float I;
    public float J;
    public int K;
    public VelocityTracker L;
    public int M;
    public int N;
    public int O;
    public int P;
    public xa Q;
    public xa R;
    public boolean S;
    public boolean T;
    public int U;
    public List<i> V;
    public i W;
    public h a0;
    public j b0;
    public Method c0;
    public int d0;
    public int e;
    public ArrayList<View> e0;
    public final ArrayList<e> f;
    public final Runnable f0;
    public final e g;
    public int g0;
    public final Rect h;
    public int h0;
    public ry6 i;
    public int j;
    public int k;
    public Parcelable l;
    public ClassLoader m;
    public Scroller n;
    public k o;
    public boolean p;
    public int q;
    public Drawable r;
    public int s;
    public int t;
    public float u;
    public float v;
    public int w;
    public boolean x;
    public boolean y;
    public boolean z;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new c9(new a());
        public int e;
        public Parcelable f;
        public ClassLoader g;

        public static class a implements d9<SavedState> {
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("FragmentPager.SavedState{");
            sbZ.append(Integer.toHexString(System.identityHashCode(this)));
            sbZ.append(" position=");
            return jo.q(sbZ, this.e, StringSubstitutor.DEFAULT_VAR_END);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.e);
            parcel.writeParcelable(this.f, i);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            classLoader = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.e = parcel.readInt();
            this.f = parcel.readParcelable(classLoader);
            this.g = classLoader;
        }
    }

    public static class a implements Comparator<e> {
        @Override // java.util.Comparator
        public int compare(e eVar, e eVar2) {
            return eVar.b - eVar2.b;
        }
    }

    public static class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            FixedViewPager.this.setScrollState(0);
            FixedViewPager fixedViewPager = FixedViewPager.this;
            fixedViewPager.s(fixedViewPager.j);
        }
    }

    public class d implements ea {
        public final Rect a = new Rect();

        public d() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            qa qaVarN = ha.n(view, qaVar);
            if (qaVarN.h()) {
                return qaVarN;
            }
            Rect rect = this.a;
            rect.left = qaVarN.c();
            rect.top = qaVarN.e();
            rect.right = qaVarN.d();
            rect.bottom = qaVarN.b();
            int childCount = FixedViewPager.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                qa qaVarE = ha.e(FixedViewPager.this.getChildAt(i), qaVarN);
                rect.left = Math.min(qaVarE.c(), rect.left);
                rect.top = Math.min(qaVarE.e(), rect.top);
                rect.right = Math.min(qaVarE.d(), rect.right);
                rect.bottom = Math.min(qaVarE.b(), rect.bottom);
            }
            return qaVarN.i(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    public static class e {
        public Object a;
        public int b;
        public boolean c;
        public float d;
        public float e;
    }

    public class g extends v9 {
        public g() {
        }

        @Override // defpackage.v9
        public void c(View view, AccessibilityEvent accessibilityEvent) {
            ry6 ry6Var;
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(FixedViewPager.class.getName());
            ry6 ry6Var2 = FixedViewPager.this.i;
            accessibilityEvent.setScrollable(ry6Var2 != null && ry6Var2.b() > 1);
            if (accessibilityEvent.getEventType() != 4096 || (ry6Var = FixedViewPager.this.i) == null) {
                return;
            }
            accessibilityEvent.setItemCount(ry6Var.b());
            accessibilityEvent.setFromIndex(FixedViewPager.this.j);
            accessibilityEvent.setToIndex(FixedViewPager.this.j);
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.a.setClassName(FixedViewPager.class.getName());
            ry6 ry6Var = FixedViewPager.this.i;
            saVar.a.setScrollable(ry6Var != null && ry6Var.b() > 1);
            if (FixedViewPager.this.canScrollHorizontally(1)) {
                saVar.a.addAction(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
            }
            if (FixedViewPager.this.canScrollHorizontally(-1)) {
                saVar.a.addAction(RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            }
        }

        @Override // defpackage.v9
        public boolean g(View view, int i, Bundle bundle) throws Resources.NotFoundException {
            if (super.g(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!FixedViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                FixedViewPager fixedViewPager = FixedViewPager.this;
                fixedViewPager.setCurrentItem(fixedViewPager.j + 1);
                return true;
            }
            if (i != 8192 || !FixedViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            FixedViewPager fixedViewPager2 = FixedViewPager.this;
            fixedViewPager2.setCurrentItem(fixedViewPager2.j - 1);
            return true;
        }
    }

    public interface h {
        void a(ry6 ry6Var, ry6 ry6Var2);
    }

    public interface i {
        void a(int i, float f, int i2);

        void b(int i);

        void c(int i);
    }

    public interface j {
        void a(View view, float f);
    }

    public class k extends DataSetObserver {
        public k(a aVar) {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() throws Resources.NotFoundException {
            FixedViewPager.this.g();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() throws Resources.NotFoundException {
            FixedViewPager.this.g();
        }
    }

    public static class l implements Comparator<View> {
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            f fVar = (f) view.getLayoutParams();
            f fVar2 = (f) view2.getLayoutParams();
            boolean z = fVar.a;
            return z != fVar2.a ? z ? 1 : -1 : fVar.e - fVar2.e;
        }
    }

    public FixedViewPager(Context context) {
        super(context);
        this.f = new ArrayList<>();
        this.g = new e();
        this.h = new Rect();
        this.k = -1;
        this.l = null;
        this.m = null;
        this.u = -3.4028235E38f;
        this.v = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.S = true;
        this.f0 = new c();
        this.g0 = 0;
        this.h0 = 0;
        m();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollState(int i2) {
        if (this.g0 == i2) {
            return;
        }
        this.g0 = i2;
        if (this.b0 != null) {
            boolean z = i2 != 0;
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                int i4 = z ? 2 : 0;
                View childAt = getChildAt(i3);
                AtomicInteger atomicInteger = ha.a;
                childAt.setLayerType(i4, null);
            }
        }
        i iVar = this.W;
        if (iVar != null) {
            iVar.b(i2);
        }
        List<i> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                i iVar2 = this.V.get(i5);
                if (iVar2 != null) {
                    iVar2.b(i2);
                }
            }
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.y != z) {
            this.y = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        e eVarJ;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (eVarJ = j(childAt)) != null && eVarJ.b == this.j) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        e eVarJ;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (eVarJ = j(childAt)) != null && eVarJ.b == this.j) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        f fVar = (f) layoutParams;
        boolean z = fVar.a | false;
        fVar.a = z;
        if (!this.x) {
            super.addView(view, i2, layoutParams);
        } else {
            if (z) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            fVar.d = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    public e b(int i2, int i3) {
        e eVar = new e();
        eVar.b = i2;
        eVar.a = this.i.c(this, i2);
        Objects.requireNonNull(this.i);
        eVar.d = 1.0f;
        if (i3 < 0 || i3 >= this.f.size()) {
            this.f.add(eVar);
        } else {
            this.f.add(i3, eVar);
        }
        return eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(int r7) throws android.content.res.Resources.NotFoundException {
        /*
            r6 = this;
            android.view.View r0 = r6.findFocus()
            r1 = 1
            r2 = 0
            if (r0 != r6) goto L9
            goto L62
        L9:
            if (r0 == 0) goto L63
            android.view.ViewParent r3 = r0.getParent()
        Lf:
            boolean r4 = r3 instanceof android.view.ViewGroup
            if (r4 == 0) goto L1c
            if (r3 != r6) goto L17
            r3 = 1
            goto L1d
        L17:
            android.view.ViewParent r3 = r3.getParent()
            goto Lf
        L1c:
            r3 = 0
        L1d:
            if (r3 != 0) goto L63
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Class r4 = r0.getClass()
            java.lang.String r4 = r4.getSimpleName()
            r3.append(r4)
            android.view.ViewParent r0 = r0.getParent()
        L33:
            boolean r4 = r0 instanceof android.view.ViewGroup
            if (r4 == 0) goto L4c
            java.lang.String r4 = " => "
            r3.append(r4)
            java.lang.Class r4 = r0.getClass()
            java.lang.String r4 = r4.getSimpleName()
            r3.append(r4)
            android.view.ViewParent r0 = r0.getParent()
            goto L33
        L4c:
            java.lang.String r0 = "arrowScroll tried to find focus based on non-child current focused view "
            java.lang.StringBuilder r0 = defpackage.jo.z(r0)
            java.lang.String r3 = r3.toString()
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.String r3 = "ViewPager"
            android.util.Log.e(r3, r0)
        L62:
            r0 = 0
        L63:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            r4 = 66
            r5 = 17
            if (r3 == 0) goto Lb8
            if (r3 == r0) goto Lb8
            if (r7 != r5) goto L98
            android.graphics.Rect r2 = r6.h
            android.graphics.Rect r2 = r6.i(r2, r3)
            int r2 = r2.left
            android.graphics.Rect r4 = r6.h
            android.graphics.Rect r4 = r6.i(r4, r0)
            int r4 = r4.left
            if (r0 == 0) goto L92
            if (r2 < r4) goto L92
            int r0 = r6.j
            if (r0 <= 0) goto Ld0
            int r0 = r0 - r1
            r6.setCurrentItem(r0, r1)
            goto Ld1
        L92:
            boolean r0 = r3.requestFocus()
        L96:
            r2 = r0
            goto Ld2
        L98:
            if (r7 != r4) goto Ld2
            android.graphics.Rect r1 = r6.h
            android.graphics.Rect r1 = r6.i(r1, r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.h
            android.graphics.Rect r2 = r6.i(r2, r0)
            int r2 = r2.left
            if (r0 == 0) goto Lb3
            if (r1 > r2) goto Lb3
            boolean r0 = r6.p()
            goto L96
        Lb3:
            boolean r0 = r3.requestFocus()
            goto L96
        Lb8:
            if (r7 == r5) goto Lc7
            if (r7 != r1) goto Lbd
            goto Lc7
        Lbd:
            if (r7 == r4) goto Lc2
            r0 = 2
            if (r7 != r0) goto Ld2
        Lc2:
            boolean r2 = r6.p()
            goto Ld2
        Lc7:
            int r0 = r6.j
            if (r0 <= 0) goto Ld0
            int r0 = r0 - r1
            r6.setCurrentItem(r0, r1)
            goto Ld1
        Ld0:
            r1 = 0
        Ld1:
            r2 = r1
        Ld2:
            if (r2 == 0) goto Ldb
            int r7 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r7)
        Ldb:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.c(int):boolean");
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        if (this.i == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i2 < 0 ? scrollX > ((int) (((float) clientWidth) * this.u)) : i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.v));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.p = true;
        if (this.n.isFinished() || !this.n.computeScrollOffset()) {
            f(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.n.getCurrX();
        int currY = this.n.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!q(currX)) {
                this.n.abortAnimation();
                scrollTo(0, currY);
            }
        }
        AtomicInteger atomicInteger = ha.a;
        postInvalidateOnAnimation();
    }

    public final void d(e eVar, int i2, e eVar2) {
        int i3;
        int i4;
        e eVar3;
        e eVar4;
        int iB = this.i.b();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? this.q / clientWidth : 0.0f;
        if (eVar2 != null) {
            int i5 = eVar2.b;
            int i6 = eVar.b;
            if (i5 < i6) {
                int i7 = 0;
                float f3 = eVar2.e + eVar2.d + f2;
                while (true) {
                    i5++;
                    if (i5 > eVar.b || i7 >= this.f.size()) {
                        break;
                    }
                    e eVar5 = this.f.get(i7);
                    while (true) {
                        eVar4 = eVar5;
                        if (i5 <= eVar4.b || i7 >= this.f.size() - 1) {
                            break;
                        }
                        i7++;
                        eVar5 = this.f.get(i7);
                    }
                    while (i5 < eVar4.b) {
                        Objects.requireNonNull(this.i);
                        f3 += 1.0f + f2;
                        i5++;
                    }
                    eVar4.e = f3;
                    f3 += eVar4.d + f2;
                }
            } else if (i5 > i6) {
                int size = this.f.size() - 1;
                float f4 = eVar2.e;
                while (true) {
                    i5--;
                    if (i5 < eVar.b || size < 0) {
                        break;
                    }
                    e eVar6 = this.f.get(size);
                    while (true) {
                        eVar3 = eVar6;
                        if (i5 >= eVar3.b || size <= 0) {
                            break;
                        }
                        size--;
                        eVar6 = this.f.get(size);
                    }
                    while (i5 > eVar3.b) {
                        Objects.requireNonNull(this.i);
                        f4 -= 1.0f + f2;
                        i5--;
                    }
                    f4 -= eVar3.d + f2;
                    eVar3.e = f4;
                }
            }
        }
        int size2 = this.f.size();
        float f5 = eVar.e;
        int i8 = eVar.b;
        int i9 = i8 - 1;
        this.u = i8 == 0 ? f5 : -3.4028235E38f;
        int i10 = iB - 1;
        this.v = i8 == i10 ? (eVar.d + f5) - 1.0f : Float.MAX_VALUE;
        int i11 = i2 - 1;
        while (i11 >= 0) {
            e eVar7 = this.f.get(i11);
            while (true) {
                i4 = eVar7.b;
                if (i9 <= i4) {
                    break;
                }
                i9--;
                Objects.requireNonNull(this.i);
                f5 -= 1.0f + f2;
            }
            f5 -= eVar7.d + f2;
            eVar7.e = f5;
            if (i4 == 0) {
                this.u = f5;
            }
            i11--;
            i9--;
        }
        float f6 = eVar.e + eVar.d + f2;
        int i12 = eVar.b + 1;
        int i13 = i2 + 1;
        while (i13 < size2) {
            e eVar8 = this.f.get(i13);
            while (true) {
                i3 = eVar8.b;
                if (i12 >= i3) {
                    break;
                }
                i12++;
                Objects.requireNonNull(this.i);
                f6 += 1.0f + f2;
            }
            if (i3 == i10) {
                this.v = (eVar8.d + f6) - 1.0f;
            }
            eVar8.e = f6;
            f6 += eVar8.d + f2;
            i13++;
            i12++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r5) throws android.content.res.Resources.NotFoundException {
        /*
            r4 = this;
            boolean r0 = super.dispatchKeyEvent(r5)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L47
            int r0 = r5.getAction()
            if (r0 != 0) goto L44
            int r0 = r5.getKeyCode()
            r3 = 21
            if (r0 == r3) goto L3d
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L1f
            goto L44
        L1f:
            boolean r0 = r5.hasNoModifiers()
            if (r0 == 0) goto L2b
            r5 = 2
            boolean r5 = r4.c(r5)
            goto L45
        L2b:
            boolean r5 = r5.hasModifiers(r2)
            if (r5 == 0) goto L44
            boolean r5 = r4.c(r2)
            goto L45
        L36:
            r5 = 66
            boolean r5 = r4.c(r5)
            goto L45
        L3d:
            r5 = 17
            boolean r5 = r4.c(r5)
            goto L45
        L44:
            r5 = 0
        L45:
            if (r5 == 0) goto L48
        L47:
            r1 = 1
        L48:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e eVarJ;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (eVarJ = j(childAt)) != null && eVarJ.b == this.j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        ry6 ry6Var;
        super.draw(canvas);
        AtomicInteger atomicInteger = ha.a;
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (ry6Var = this.i) != null && ry6Var.b() > 1)) {
            if (!this.Q.a.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.u * width);
                this.Q.a.setSize(height, width);
                zDraw = false | this.Q.a.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.R.a.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.v + 1.0f)) * width2);
                this.R.a.setSize(height2, width2);
                zDraw |= this.R.a.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.Q.a.finish();
            this.R.a.finish();
        }
        if (zDraw) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.r;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public boolean e(View view, boolean z, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && e(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z) {
            AtomicInteger atomicInteger = ha.a;
            if (view.canScrollHorizontally(-i2)) {
                return true;
            }
        }
        return false;
    }

    public final void f(boolean z) {
        boolean z2 = this.g0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.n.isFinished()) {
                this.n.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.n.getCurrX();
                int currY = this.n.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        q(currX);
                    }
                }
            }
        }
        this.z = false;
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            e eVar = this.f.get(i2);
            if (eVar.c) {
                eVar.c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (!z) {
                this.f0.run();
                return;
            }
            Runnable runnable = this.f0;
            AtomicInteger atomicInteger = ha.a;
            postOnAnimation(runnable);
        }
    }

    public void g() throws Resources.NotFoundException {
        int iB = this.i.b();
        this.e = iB;
        boolean z = this.f.size() < (this.A * 2) + 1 && this.f.size() < iB;
        int i2 = this.j;
        for (int i3 = 0; i3 < this.f.size(); i3++) {
            e eVar = this.f.get(i3);
            ry6 ry6Var = this.i;
            Object obj = eVar.a;
            Objects.requireNonNull(ry6Var);
        }
        Collections.sort(this.f, j0);
        if (z) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                f fVar = (f) getChildAt(i4).getLayoutParams();
                if (!fVar.a) {
                    fVar.c = 0.0f;
                }
            }
            x(i2, false, true, 0);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public ry6 getAdapter() {
        return this.i;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        if (this.d0 == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((f) this.e0.get(i3).getLayoutParams()).f;
    }

    public int getCurrentItem() {
        return this.j;
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    public int getPageMargin() {
        return this.q;
    }

    public final void h(int i2) {
        i iVar = this.W;
        if (iVar != null) {
            iVar.c(i2);
        }
        List<i> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                i iVar2 = this.V.get(i3);
                if (iVar2 != null) {
                    iVar2.c(i2);
                }
            }
        }
    }

    public final Rect i(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public e j(View view) {
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            e eVar = this.f.get(i2);
            if (this.i.d(view, eVar.a)) {
                return eVar;
            }
        }
        return null;
    }

    public final e k() {
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.q / clientWidth : 0.0f;
        e eVar = null;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z = true;
        while (i4 < this.f.size()) {
            e eVar2 = this.f.get(i4);
            if (!z && eVar2.b != (i2 = i3 + 1)) {
                eVar2 = this.g;
                eVar2.e = f2 + f4 + f3;
                eVar2.b = i2;
                Objects.requireNonNull(this.i);
                eVar2.d = 1.0f;
                i4--;
            }
            f2 = eVar2.e;
            float f5 = eVar2.d + f2 + f3;
            if (!z && scrollX < f2) {
                return eVar;
            }
            if (scrollX < f5 || i4 == this.f.size() - 1) {
                return eVar2;
            }
            i3 = eVar2.b;
            f4 = eVar2.d;
            i4++;
            eVar = eVar2;
            z = false;
        }
        return eVar;
    }

    public e l(int i2) {
        for (int i3 = 0; i3 < this.f.size(); i3++) {
            e eVar = this.f.get(i3);
            if (eVar.b == i2) {
                return eVar;
            }
        }
        return null;
    }

    public void m() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.n = new Scroller(context, k0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        Method method = la.a;
        this.F = viewConfiguration.getScaledPagingTouchSlop();
        this.M = (int) (400.0f * f2);
        this.N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Q = new xa(context);
        this.R = new xa(context);
        this.O = (int) (25.0f * f2);
        this.P = (int) (2.0f * f2);
        this.D = (int) (f2 * 16.0f);
        ha.s(this, new g());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        ha.t(this, new d());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void n(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.U
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = 0
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            com.noinnion.android.view.viewpager.FixedViewPager$f r9 = (com.noinnion.android.view.viewpager.FixedViewPager.f) r9
            boolean r10 = r9.a
            if (r10 != 0) goto L2c
            goto L68
        L2c:
            int r9 = r9.b
            r9 = r9 & 7
            if (r9 == r2) goto L4d
            r10 = 3
            if (r9 == r10) goto L47
            r10 = 5
            if (r9 == r10) goto L3a
            r9 = r3
            goto L5c
        L3a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L59
        L47:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4d:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L59:
            r11 = r9
            r9 = r3
            r3 = r11
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            com.noinnion.android.view.viewpager.FixedViewPager$i r0 = r12.W
            if (r0 == 0) goto L72
            r0.a(r13, r14, r15)
        L72:
            java.util.List<com.noinnion.android.view.viewpager.FixedViewPager$i> r0 = r12.V
            if (r0 == 0) goto L8d
            int r0 = r0.size()
            r3 = 0
        L7b:
            if (r3 >= r0) goto L8d
            java.util.List<com.noinnion.android.view.viewpager.FixedViewPager$i> r4 = r12.V
            java.lang.Object r4 = r4.get(r3)
            com.noinnion.android.view.viewpager.FixedViewPager$i r4 = (com.noinnion.android.view.viewpager.FixedViewPager.i) r4
            if (r4 == 0) goto L8a
            r4.a(r13, r14, r15)
        L8a:
            int r3 = r3 + 1
            goto L7b
        L8d:
            com.noinnion.android.view.viewpager.FixedViewPager$j r13 = r12.b0
            if (r13 == 0) goto Lbe
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L99:
            if (r1 >= r14) goto Lbe
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            com.noinnion.android.view.viewpager.FixedViewPager$f r0 = (com.noinnion.android.view.viewpager.FixedViewPager.f) r0
            boolean r0 = r0.a
            if (r0 == 0) goto Laa
            goto Lbb
        Laa:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            com.noinnion.android.view.viewpager.FixedViewPager$j r3 = r12.b0
            r3.a(r15, r0)
        Lbb:
            int r1 = r1 + 1
            goto L99
        Lbe:
            r12.T = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.n(int, float, int):void");
    }

    public final void o(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.K) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.G = motionEvent.getX(i2);
            this.K = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.L;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f0);
        Scroller scroller = this.n;
        if (scroller != null && !scroller.isFinished()) {
            this.n.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i2;
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.q <= 0 || this.r == null || this.f.size() <= 0 || this.i == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f4 = this.q / width;
        int i3 = 0;
        e eVar = this.f.get(0);
        float f5 = eVar.e;
        int size = this.f.size();
        int i4 = eVar.b;
        int i5 = this.f.get(size - 1).b;
        while (i4 < i5) {
            while (true) {
                i2 = eVar.b;
                if (i4 <= i2 || i3 >= size) {
                    break;
                }
                i3++;
                eVar = this.f.get(i3);
            }
            if (i4 == i2) {
                float f6 = eVar.e;
                float f7 = eVar.d;
                f2 = (f6 + f7) * width;
                f5 = f6 + f7 + f4;
            } else {
                Objects.requireNonNull(this.i);
                f2 = (f5 + 1.0f) * width;
                f5 = 1.0f + f4 + f5;
            }
            int i6 = this.q;
            if (i6 + f2 > scrollX) {
                f3 = f4;
                this.r.setBounds((int) f2, this.s, (int) (i6 + f2 + 0.5f), this.t);
                this.r.draw(canvas);
            } else {
                f3 = f4;
            }
            if (f2 > scrollX + r2) {
                return;
            }
            i4++;
            f4 = f3;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        int action = motionEvent.getAction() & Base64.BASELENGTH;
        if (action == 3 || action == 1) {
            v();
            return false;
        }
        if (action != 0) {
            if (this.B) {
                return true;
            }
            if (this.C) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.I = x;
            this.G = x;
            float y = motionEvent.getY();
            this.J = y;
            this.H = y;
            this.K = motionEvent.getPointerId(0);
            this.C = false;
            this.p = true;
            this.n.computeScrollOffset();
            if (this.g0 != 2 || Math.abs(this.n.getFinalX() - this.n.getCurrX()) <= this.P) {
                f(false);
                this.B = false;
            } else {
                this.n.abortAnimation();
                this.z = false;
                s(this.j);
                this.B = true;
                u(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.K;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f2 = x2 - this.G;
                float fAbs = Math.abs(f2);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.J);
                if (f2 != 0.0f) {
                    float f3 = this.G;
                    if (!((f3 < ((float) this.E) && f2 > 0.0f) || (f3 > ((float) (getWidth() - this.E)) && f2 < 0.0f)) && e(this, false, (int) f2, (int) x2, (int) y2)) {
                        this.G = x2;
                        this.H = y2;
                        this.C = true;
                        return false;
                    }
                }
                int i3 = this.F;
                if (fAbs > i3 && fAbs * 0.5f > fAbs2) {
                    this.B = true;
                    u(true);
                    setScrollState(1);
                    float f4 = this.I;
                    float f5 = this.F;
                    this.G = f2 > 0.0f ? f4 + f5 : f4 - f5;
                    this.H = y2;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i3) {
                    this.C = true;
                }
                if (this.B && r(x2)) {
                    AtomicInteger atomicInteger = ha.a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            o(motionEvent);
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        e eVarJ;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (eVarJ = j(childAt)) != null && eVarJ.b == this.j && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (this.i != null) {
            x(savedState.e, false, true, 0);
            return;
        }
        this.k = savedState.e;
        this.l = savedState.f;
        this.m = savedState.g;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.e = this.j;
        ry6 ry6Var = this.i;
        if (ry6Var != null) {
            Objects.requireNonNull(ry6Var);
            savedState.f = null;
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.q;
            t(i2, i4, i6, i6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean p() throws Resources.NotFoundException {
        ry6 ry6Var = this.i;
        if (ry6Var == null || this.j >= ry6Var.b() - 1) {
            return false;
        }
        setCurrentItem(this.j + 1, true);
        return true;
    }

    public final boolean q(int i2) {
        if (this.f.size() == 0) {
            this.T = false;
            n(0, 0.0f, 0);
            if (this.T) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        e eVarK = k();
        int clientWidth = getClientWidth();
        int i3 = this.q;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = eVarK.b;
        float f3 = ((i2 / f2) - eVarK.e) / (eVarK.d + (i3 / f2));
        this.T = false;
        n(i5, f3, (int) (i4 * f3));
        if (this.T) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean r(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.G - f2;
        this.G = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.u * clientWidth;
        float f5 = this.v * clientWidth;
        boolean z3 = false;
        e eVar = this.f.get(0);
        ArrayList<e> arrayList = this.f;
        e eVar2 = arrayList.get(arrayList.size() - 1);
        if (eVar.b != 0) {
            f4 = eVar.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (eVar2.b != this.i.b() - 1) {
            f5 = eVar2.e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.Q.a.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.R.a.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.G = (scrollX - i2) + this.G;
        scrollTo(i2, getScrollY());
        q(i2);
        return z3;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0075, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02b7 A[PHI: r1 r5 r15
      0x02b7: PHI (r1v12 float) = (r1v10 float), (r1v11 float), (r1v9 float) binds: [B:172:0x02ac, B:169:0x0296, B:163:0x0280] A[DONT_GENERATE, DONT_INLINE]
      0x02b7: PHI (r5v7 int) = (r5v6 int), (r5v5 int), (r5v9 int) binds: [B:172:0x02ac, B:169:0x0296, B:163:0x0280] A[DONT_GENERATE, DONT_INLINE]
      0x02b7: PHI (r15v37 int) = (r15v35 int), (r15v36 int), (r15v39 int) binds: [B:172:0x02ac, B:169:0x0296, B:163:0x0280] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0108 A[PHI: r1 r5 r10
      0x0108: PHI (r1v24 float) = (r1v22 float), (r1v23 float), (r1v15 float) binds: [B:70:0x00fd, B:67:0x00e7, B:61:0x00d1] A[DONT_GENERATE, DONT_INLINE]
      0x0108: PHI (r5v12 int) = (r5v11 int), (r5v10 int), (r5v14 int) binds: [B:70:0x00fd, B:67:0x00e7, B:61:0x00d1] A[DONT_GENERATE, DONT_INLINE]
      0x0108: PHI (r10v24 int) = (r10v13 int), (r10v23 int), (r10v26 int) binds: [B:70:0x00fd, B:67:0x00e7, B:61:0x00d1] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(int r15) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.view.viewpager.FixedViewPager.s(int):void");
    }

    public void setAdapter(ry6 ry6Var) throws Resources.NotFoundException {
        ry6 ry6Var2 = this.i;
        if (ry6Var2 != null) {
            synchronized (ry6Var2) {
                ry6Var2.b = null;
            }
            Objects.requireNonNull(this.i);
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                e eVar = this.f.get(i2);
                this.i.a(this, eVar.b, eVar.a);
            }
            Objects.requireNonNull(this.i);
            this.f.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((f) getChildAt(i3).getLayoutParams()).a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.j = 0;
            scrollTo(0, 0);
        }
        ry6 ry6Var3 = this.i;
        this.i = ry6Var;
        this.e = 0;
        if (ry6Var != null) {
            if (this.o == null) {
                this.o = new k(null);
            }
            ry6 ry6Var4 = this.i;
            k kVar = this.o;
            synchronized (ry6Var4) {
                ry6Var4.b = kVar;
            }
            this.z = false;
            boolean z = this.S;
            this.S = true;
            this.e = this.i.b();
            if (this.k >= 0) {
                Objects.requireNonNull(this.i);
                x(this.k, false, true, 0);
                this.k = -1;
                this.l = null;
                this.m = null;
            } else if (z) {
                requestLayout();
            } else {
                s(this.j);
            }
        }
        h hVar = this.a0;
        if (hVar == null || ry6Var3 == ry6Var) {
            return;
        }
        hVar.a(ry6Var3, ry6Var);
    }

    public void setChildrenDrawingOrderEnabledCompat(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.c0 == null) {
            try {
                this.c0 = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e2) {
                Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", e2);
            }
        }
        try {
            this.c0.invoke(this, Boolean.valueOf(z));
        } catch (Exception e3) {
            Log.e("ViewPager", "Error changing children drawing order", e3);
        }
    }

    public void setCurrentItem(int i2) throws Resources.NotFoundException {
        this.z = false;
        x(i2, !this.S, false, 0);
    }

    public void setOffscreenPageLimit(int i2) throws Resources.NotFoundException {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.A) {
            this.A = i2;
            s(this.j);
        }
    }

    public void setOnAdapterChangeListener(h hVar) {
        this.a0 = hVar;
    }

    @Deprecated
    public void setOnPageChangeListener(i iVar) {
        this.W = iVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.q;
        this.q = i2;
        int width = getWidth();
        t(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.r = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, j jVar) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException, InvocationTargetException {
        boolean z2 = jVar != null;
        boolean z3 = z2 != (this.b0 != null);
        this.b0 = jVar;
        setChildrenDrawingOrderEnabledCompat(z2);
        if (z2) {
            this.d0 = z ? 2 : 1;
        } else {
            this.d0 = 0;
        }
        if (z3) {
            s(this.j);
        }
    }

    public void setRestoredCurItem(int i2) {
        this.k = i2;
    }

    public final void t(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.f.isEmpty()) {
            if (!this.n.isFinished()) {
                this.n.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        e eVarL = l(this.j);
        int iMin = (int) ((eVarL != null ? Math.min(eVarL.e, this.v) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            f(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public final void u(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    public final boolean v() {
        this.K = -1;
        this.B = false;
        this.C = false;
        VelocityTracker velocityTracker = this.L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.L = null;
        }
        xa xaVar = this.Q;
        xaVar.a.onRelease();
        boolean zIsFinished = xaVar.a.isFinished();
        xa xaVar2 = this.R;
        xaVar2.a.onRelease();
        return zIsFinished | xaVar2.a.isFinished();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    public final void w(int i2, boolean z, int i3, boolean z2) throws Resources.NotFoundException {
        int scrollX;
        int iAbs;
        e eVarL = l(i2);
        int iMax = eVarL != null ? (int) (Math.max(this.u, Math.min(eVarL.e, this.v)) * getClientWidth()) : 0;
        if (!z) {
            if (z2) {
                h(i2);
            }
            f(false);
            scrollTo(iMax, 0);
            q(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.n;
            if ((scroller == null || scroller.isFinished()) ? false : true) {
                scrollX = this.p ? this.n.getCurrX() : this.n.getStartX();
                this.n.abortAnimation();
                setScrollingCacheEnabled(false);
            } else {
                scrollX = getScrollX();
            }
            int i4 = scrollX;
            int scrollY = getScrollY();
            int i5 = iMax - i4;
            int i6 = 0 - scrollY;
            if (i5 == 0 && i6 == 0) {
                f(false);
                s(this.j);
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i7 = clientWidth / 2;
                float f2 = clientWidth;
                float f3 = i7;
                float fSin = (((float) Math.sin((float) ((Math.min(1.0f, (Math.abs(i5) * 1.0f) / f2) - 0.5f) * 0.4712389167638204d))) * f3) + f3;
                int iAbs2 = Math.abs(i3);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    Objects.requireNonNull(this.i);
                    iAbs = (int) (((Math.abs(i5) / ((f2 * 1.0f) + this.q)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.p = false;
                this.n.startScroll(i4, scrollY, i5, i6, iMin);
                AtomicInteger atomicInteger = ha.a;
                postInvalidateOnAnimation();
            }
        }
        if (z2) {
            h(i2);
        }
    }

    public void x(int i2, boolean z, boolean z2, int i3) throws Resources.NotFoundException {
        ry6 ry6Var = this.i;
        if (ry6Var == null || ry6Var.b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.j == i2 && this.f.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.i.b()) {
            i2 = this.i.b() - 1;
        }
        int i4 = this.A;
        int i5 = this.j;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < this.f.size(); i6++) {
                this.f.get(i6).c = true;
            }
        }
        boolean z3 = this.j != i2;
        if (!this.S) {
            s(i2);
            w(i2, z, i3, z3);
        } else {
            this.j = i2;
            if (z3) {
                h(i2);
            }
            requestLayout();
        }
    }

    public final void y() {
        if (this.d0 != 0) {
            ArrayList<View> arrayList = this.e0;
            if (arrayList == null) {
                this.e0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.e0.add(getChildAt(i2));
            }
            Collections.sort(this.e0, l0);
        }
    }

    public static class f extends ViewGroup.LayoutParams {
        public boolean a;
        public int b;
        public float c;
        public boolean d;
        public int e;
        public int f;

        public f() {
            super(-1, -1);
            this.c = 0.0f;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.c = 0.0f;
            int[] iArr = FixedViewPager.i0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, FixedViewPager.i0);
            this.b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    public void setCurrentItem(int i2, boolean z) throws Resources.NotFoundException {
        this.z = false;
        x(i2, z, false, 0);
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i2));
    }

    public FixedViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new ArrayList<>();
        this.g = new e();
        this.h = new Rect();
        this.k = -1;
        this.l = null;
        this.m = null;
        this.u = -3.4028235E38f;
        this.v = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.S = true;
        this.f0 = new c();
        this.g0 = 0;
        this.h0 = 0;
        m();
    }
}
