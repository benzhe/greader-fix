package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.d0;
import defpackage.ea5;
import defpackage.ha;
import defpackage.jb;
import defpackage.jo;
import defpackage.l65;
import defpackage.la5;
import defpackage.m65;
import defpackage.n65;
import defpackage.pa5;
import defpackage.sa;
import defpackage.u75;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c<V> {
    public static final int V = R$style.Widget_Design_BottomSheet_Modal;
    public boolean A;
    public boolean B;
    public boolean C;
    public int D;
    public jb E;
    public boolean F;
    public int G;
    public boolean H;
    public int I;
    public int J;
    public int K;
    public WeakReference<V> L;
    public WeakReference<View> M;
    public final ArrayList<c> N;
    public VelocityTracker O;
    public int P;
    public int Q;
    public boolean R;
    public Map<View, Integer> S;
    public int T;
    public final jb.c U;
    public int a;
    public boolean b;
    public float c;
    public int d;
    public boolean e;
    public int f;
    public int g;
    public boolean h;
    public la5 i;
    public int j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public pa5 q;
    public boolean r;
    public BottomSheetBehavior<V>.d s;
    public ValueAnimator t;
    public int u;
    public int v;
    public int w;
    public float x;
    public int y;
    public float z;

    public class a implements Runnable {
        public final /* synthetic */ View e;
        public final /* synthetic */ int f;

        public a(View view, int i) {
            this.e = view;
            this.f = i;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            BottomSheetBehavior.this.O(this.e, this.f);
        }
    }

    public class b extends jb.c {
        public b() {
        }

        @Override // jb.c
        public int a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // jb.c
        public int b(View view, int i, int i2) {
            int I = BottomSheetBehavior.this.I();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return d0.h.l(i, I, bottomSheetBehavior.A ? bottomSheetBehavior.K : bottomSheetBehavior.y);
        }

        @Override // jb.c
        public int d(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.A ? bottomSheetBehavior.K : bottomSheetBehavior.y;
        }

        @Override // jb.c
        public void i(int i) throws Resources.NotFoundException {
            if (i == 1) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.C) {
                    bottomSheetBehavior.N(1);
                }
            }
        }

        @Override // jb.c
        public void j(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.F(i2);
        }

        @Override // jb.c
        public void k(View view, float f, float f2) throws Resources.NotFoundException {
            int i;
            int i2 = 4;
            if (f2 < 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.b) {
                    i = bottomSheetBehavior.v;
                } else {
                    int top = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                    int i3 = bottomSheetBehavior2.w;
                    if (top > i3) {
                        i = i3;
                        i2 = 6;
                    } else {
                        i = bottomSheetBehavior2.u;
                    }
                }
                i2 = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                if (bottomSheetBehavior3.A && bottomSheetBehavior3.Q(view, f2)) {
                    if (Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) {
                        int top2 = view.getTop();
                        BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
                        if (!(top2 > (bottomSheetBehavior4.I() + bottomSheetBehavior4.K) / 2)) {
                            BottomSheetBehavior bottomSheetBehavior5 = BottomSheetBehavior.this;
                            if (bottomSheetBehavior5.b) {
                                i = bottomSheetBehavior5.v;
                            } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.u) < Math.abs(view.getTop() - BottomSheetBehavior.this.w)) {
                                i = BottomSheetBehavior.this.u;
                            } else {
                                i = BottomSheetBehavior.this.w;
                                i2 = 6;
                            }
                            i2 = 3;
                        }
                    }
                    i = BottomSheetBehavior.this.K;
                    i2 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top3 = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior6 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior6.b) {
                        int i4 = bottomSheetBehavior6.w;
                        if (top3 < i4) {
                            if (top3 < Math.abs(top3 - bottomSheetBehavior6.y)) {
                                i = BottomSheetBehavior.this.u;
                                i2 = 3;
                            } else {
                                i = BottomSheetBehavior.this.w;
                            }
                        } else if (Math.abs(top3 - i4) < Math.abs(top3 - BottomSheetBehavior.this.y)) {
                            i = BottomSheetBehavior.this.w;
                        } else {
                            i = BottomSheetBehavior.this.y;
                        }
                        i2 = 6;
                    } else if (Math.abs(top3 - bottomSheetBehavior6.v) < Math.abs(top3 - BottomSheetBehavior.this.y)) {
                        i = BottomSheetBehavior.this.v;
                        i2 = 3;
                    } else {
                        i = BottomSheetBehavior.this.y;
                    }
                } else {
                    BottomSheetBehavior bottomSheetBehavior7 = BottomSheetBehavior.this;
                    if (bottomSheetBehavior7.b) {
                        i = bottomSheetBehavior7.y;
                    } else {
                        int top4 = view.getTop();
                        if (Math.abs(top4 - BottomSheetBehavior.this.w) < Math.abs(top4 - BottomSheetBehavior.this.y)) {
                            i = BottomSheetBehavior.this.w;
                            i2 = 6;
                        } else {
                            i = BottomSheetBehavior.this.y;
                        }
                    }
                }
            }
            BottomSheetBehavior.this.R(view, i2, i, true);
        }

        @Override // jb.c
        public boolean l(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.D;
            if (i2 == 1 || bottomSheetBehavior.R) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.P == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.M;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.L;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    public static abstract class c {
        public abstract void a(View view, float f);

        public abstract void b(View view, int i);
    }

    public class d implements Runnable {
        public final View e;
        public boolean f;
        public int g;

        public d(View view, int i) {
            this.e = view;
            this.g = i;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            jb jbVar = BottomSheetBehavior.this.E;
            if (jbVar == null || !jbVar.j(true)) {
                BottomSheetBehavior.this.N(this.g);
            } else {
                View view = this.e;
                AtomicInteger atomicInteger = ha.a;
                view.postOnAnimation(this);
            }
            this.f = false;
        }
    }

    public BottomSheetBehavior() {
        this.a = 0;
        this.b = true;
        this.s = null;
        this.x = 0.5f;
        this.z = -1.0f;
        this.C = true;
        this.D = 4;
        this.N = new ArrayList<>();
        this.T = -1;
        this.U = new b();
    }

    public static <V extends View> BottomSheetBehavior<V> H(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVar = ((CoordinatorLayout.f) layoutParams).a;
        if (cVar instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) cVar;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.D == 1 && actionMasked == 0) {
            return true;
        }
        jb jbVar = this.E;
        if (jbVar != null) {
            jbVar.r(motionEvent);
        }
        if (actionMasked == 0) {
            this.P = -1;
            VelocityTracker velocityTracker = this.O;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.O = null;
            }
        }
        if (this.O == null) {
            this.O = VelocityTracker.obtain();
        }
        this.O.addMovement(motionEvent);
        if (this.E != null && actionMasked == 2 && !this.F) {
            float fAbs = Math.abs(this.Q - motionEvent.getY());
            jb jbVar2 = this.E;
            if (fAbs > jbVar2.b) {
                jbVar2.c(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.F;
    }

    public void B(c cVar) {
        if (this.N.contains(cVar)) {
            return;
        }
        this.N.add(cVar);
    }

    public final void C() {
        int iD = D();
        if (this.b) {
            this.y = Math.max(this.K - iD, this.v);
        } else {
            this.y = this.K - iD;
        }
    }

    public final int D() {
        int i;
        return this.e ? Math.min(Math.max(this.f, this.K - ((this.J * 9) / 16)), this.I) + this.o : (this.k || this.l || (i = this.j) <= 0) ? this.d + this.o : Math.max(this.d, i + this.g);
    }

    public final void E(Context context, AttributeSet attributeSet, boolean z, ColorStateList colorStateList) {
        if (this.h) {
            this.q = pa5.b(context, attributeSet, R$attr.bottomSheetStyle, V, new ea5(0)).a();
            la5 la5Var = new la5(this.q);
            this.i = la5Var;
            la5Var.e.b = new u75(context);
            la5Var.E();
            if (z && colorStateList != null) {
                this.i.t(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.i.setTint(typedValue.data);
        }
    }

    public void F(int i) {
        float f;
        float fI;
        V v = this.L.get();
        if (v == null || this.N.isEmpty()) {
            return;
        }
        int i2 = this.y;
        if (i > i2 || i2 == I()) {
            int i3 = this.y;
            f = i3 - i;
            fI = this.K - i3;
        } else {
            int i4 = this.y;
            f = i4 - i;
            fI = i4 - I();
        }
        float f2 = f / fI;
        for (int i5 = 0; i5 < this.N.size(); i5++) {
            this.N.get(i5).a(v, f2);
        }
    }

    public View G(View view) {
        AtomicInteger atomicInteger = ha.a;
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewG = G(viewGroup.getChildAt(i));
            if (viewG != null) {
                return viewG;
            }
        }
        return null;
    }

    public int I() {
        return this.b ? this.v : this.u;
    }

    public final void J(V v, sa.a aVar, int i) {
        ha.q(v, aVar, null, new n65(this, i));
    }

    public void K(boolean z) {
        if (this.A != z) {
            this.A = z;
            if (!z && this.D == 5) {
                M(4);
            }
            S();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void L(int r4) throws android.content.res.Resources.NotFoundException {
        /*
            r3 = this;
            r0 = 1
            r1 = -1
            r2 = 0
            if (r4 != r1) goto Lc
            boolean r4 = r3.e
            if (r4 != 0) goto L15
            r3.e = r0
            goto L1f
        Lc:
            boolean r1 = r3.e
            if (r1 != 0) goto L17
            int r1 = r3.d
            if (r1 == r4) goto L15
            goto L17
        L15:
            r0 = 0
            goto L1f
        L17:
            r3.e = r2
            int r4 = java.lang.Math.max(r2, r4)
            r3.d = r4
        L1f:
            if (r0 == 0) goto L24
            r3.V(r2)
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.L(int):void");
    }

    public void M(int i) {
        if (i == this.D) {
            return;
        }
        if (this.L != null) {
            P(i);
            return;
        }
        if (i == 4 || i == 3 || i == 6 || (this.A && i == 5)) {
            this.D = i;
        }
    }

    public void N(int i) throws Resources.NotFoundException {
        V v;
        if (this.D == i) {
            return;
        }
        this.D = i;
        WeakReference<V> weakReference = this.L;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            U(true);
        } else if (i == 6 || i == 5 || i == 4) {
            U(false);
        }
        T(i);
        for (int i2 = 0; i2 < this.N.size(); i2++) {
            this.N.get(i2).b(v, i);
        }
        S();
    }

    public void O(View view, int i) throws Resources.NotFoundException {
        int I;
        int i2;
        if (i == 4) {
            I = this.y;
        } else if (i == 6) {
            I = this.w;
            if (this.b && I <= (i2 = this.v)) {
                i = 3;
                I = i2;
            }
        } else if (i == 3) {
            I = I();
        } else {
            if (!this.A || i != 5) {
                throw new IllegalArgumentException(jo.g("Illegal state argument: ", i));
            }
            I = this.K;
        }
        R(view, i, I, false);
    }

    public final void P(int i) throws Resources.NotFoundException {
        V v = this.L.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            AtomicInteger atomicInteger = ha.a;
            if (v.isAttachedToWindow()) {
                v.post(new a(v, i));
                return;
            }
        }
        O(v, i);
    }

    public boolean Q(View view, float f) {
        if (this.B) {
            return true;
        }
        if (view.getTop() < this.y) {
            return false;
        }
        return Math.abs(((f * 0.1f) + ((float) view.getTop())) - ((float) this.y)) / ((float) D()) > 0.5f;
    }

    public void R(View view, int i, int i2, boolean z) throws Resources.NotFoundException {
        jb jbVar = this.E;
        if (!(jbVar != null && (!z ? !jbVar.z(view, view.getLeft(), i2) : !jbVar.x(view.getLeft(), i2)))) {
            N(i);
            return;
        }
        N(2);
        T(i);
        if (this.s == null) {
            this.s = new d(view, i);
        }
        BottomSheetBehavior<V>.d dVar = this.s;
        if (dVar.f) {
            dVar.g = i;
            return;
        }
        dVar.g = i;
        AtomicInteger atomicInteger = ha.a;
        view.postOnAnimation(dVar);
        this.s.f = true;
    }

    public final void S() throws Resources.NotFoundException {
        V v;
        WeakReference<V> weakReference = this.L;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        ha.p(524288, v);
        ha.k(v, 0);
        ha.p(262144, v);
        ha.k(v, 0);
        ha.p(1048576, v);
        ha.k(v, 0);
        int i = this.T;
        if (i != -1) {
            ha.p(i, v);
            ha.k(v, 0);
        }
        if (!this.b && this.D != 6) {
            String string = v.getResources().getString(R$string.bottomsheet_action_expand_halfway);
            n65 n65Var = new n65(this, 6);
            List<sa.a> listI = ha.i(v);
            int i2 = 0;
            int i3 = -1;
            while (true) {
                int[] iArr = ha.f;
                if (i2 >= iArr.length || i3 != -1) {
                    break;
                }
                int i4 = iArr[i2];
                boolean z = true;
                for (int i5 = 0; i5 < listI.size(); i5++) {
                    z &= listI.get(i5).a() != i4;
                }
                if (z) {
                    i3 = i4;
                }
                i2++;
            }
            if (i3 != -1) {
                ha.a(v, new sa.a(null, i3, string, n65Var, null));
            }
            this.T = i3;
        }
        if (this.A && this.D != 5) {
            J(v, sa.a.l, 5);
        }
        int i6 = this.D;
        if (i6 == 3) {
            J(v, sa.a.k, this.b ? 4 : 6);
            return;
        }
        if (i6 == 4) {
            J(v, sa.a.j, this.b ? 3 : 6);
        } else {
            if (i6 != 6) {
                return;
            }
            J(v, sa.a.k, 4);
            J(v, sa.a.j, 3);
        }
    }

    public final void T(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z = i == 3;
        if (this.r != z) {
            this.r = z;
            if (this.i == null || (valueAnimator = this.t) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.t.reverse();
                return;
            }
            float f = z ? 0.0f : 1.0f;
            this.t.setFloatValues(1.0f - f, f);
            this.t.start();
        }
    }

    public final void U(boolean z) {
        WeakReference<V> weakReference = this.L;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.S != null) {
                    return;
                } else {
                    this.S = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.L.get() && z) {
                    this.S.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.S = null;
        }
    }

    public final void V(boolean z) throws Resources.NotFoundException {
        V v;
        if (this.L != null) {
            C();
            if (this.D != 4 || (v = this.L.get()) == null) {
                return;
            }
            if (z) {
                P(this.D);
            } else {
                v.requestLayout();
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void f(CoordinatorLayout.f fVar) {
        this.L = null;
        this.E = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void i() {
        this.L = null;
        this.E = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean j(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        jb jbVar;
        if (!v.isShown() || !this.C) {
            this.F = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.P = -1;
            VelocityTracker velocityTracker = this.O;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.O = null;
            }
        }
        if (this.O == null) {
            this.O = VelocityTracker.obtain();
        }
        this.O.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.Q = (int) motionEvent.getY();
            if (this.D != 2) {
                WeakReference<View> weakReference = this.M;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.u(view, x, this.Q)) {
                    this.P = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.R = true;
                }
            }
            this.F = this.P == -1 && !coordinatorLayout.u(v, x, this.Q);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.R = false;
            this.P = -1;
            if (this.F) {
                this.F = false;
                return false;
            }
        }
        if (!this.F && (jbVar = this.E) != null && jbVar.y(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.M;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.F || this.D == 1 || coordinatorLayout.u(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.E == null || Math.abs(((float) this.Q) - motionEvent.getY()) <= ((float) this.E.b)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v, int i) throws Resources.NotFoundException {
        la5 la5Var;
        AtomicInteger atomicInteger = ha.a;
        if (coordinatorLayout.getFitsSystemWindows() && !v.getFitsSystemWindows()) {
            v.setFitsSystemWindows(true);
        }
        if (this.L == null) {
            this.f = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.design_bottom_sheet_peek_height_min);
            boolean z = (Build.VERSION.SDK_INT < 29 || this.k || this.e) ? false : true;
            if (this.l || this.m || this.n || z) {
                c50.O(v, new m65(this, z));
            }
            this.L = new WeakReference<>(v);
            if (this.h && (la5Var = this.i) != null) {
                v.setBackground(la5Var);
            }
            la5 la5Var2 = this.i;
            if (la5Var2 != null) {
                float elevation = this.z;
                if (elevation == -1.0f) {
                    elevation = v.getElevation();
                }
                la5Var2.s(elevation);
                boolean z2 = this.D == 3;
                this.r = z2;
                this.i.u(z2 ? 0.0f : 1.0f);
            }
            S();
            if (v.getImportantForAccessibility() == 0) {
                v.setImportantForAccessibility(1);
            }
        }
        if (this.E == null) {
            this.E = new jb(coordinatorLayout.getContext(), coordinatorLayout, this.U);
        }
        int top = v.getTop();
        coordinatorLayout.w(v, i);
        this.J = coordinatorLayout.getWidth();
        this.K = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.I = height;
        int i2 = this.K;
        if (i2 - height < this.p) {
            this.I = i2;
        }
        this.v = Math.max(0, i2 - this.I);
        this.w = (int) ((1.0f - this.x) * this.K);
        C();
        int i3 = this.D;
        if (i3 == 3) {
            ha.m(v, I());
        } else if (i3 == 6) {
            ha.m(v, this.w);
        } else if (this.A && i3 == 5) {
            ha.m(v, this.K);
        } else if (i3 == 4) {
            ha.m(v, this.y);
        } else if (i3 == 1 || i3 == 2) {
            ha.m(v, top - v.getTop());
        }
        this.M = new WeakReference<>(G(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean n(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        WeakReference<View> weakReference = this.M;
        return (weakReference == null || view != weakReference.get() || this.D == 3) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void p(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) throws Resources.NotFoundException {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.M;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < I()) {
                iArr[1] = top - I();
                ha.m(v, -iArr[1]);
                N(3);
            } else {
                if (!this.C) {
                    return;
                }
                iArr[1] = i2;
                ha.m(v, -i2);
                N(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.y;
            if (i4 > i5 && !this.A) {
                iArr[1] = top - i5;
                ha.m(v, -iArr[1]);
                N(4);
            } else {
                if (!this.C) {
                    return;
                }
                iArr[1] = i2;
                ha.m(v, -i2);
                N(1);
            }
        }
        F(v.getTop());
        this.G = i2;
        this.H = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void r(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void u(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i = this.a;
        if (i != 0) {
            if (i == -1 || (i & 1) == 1) {
                this.d = savedState.h;
            }
            if (i == -1 || (i & 2) == 2) {
                this.b = savedState.i;
            }
            if (i == -1 || (i & 4) == 4) {
                this.A = savedState.j;
            }
            if (i == -1 || (i & 8) == 8) {
                this.B = savedState.k;
            }
        }
        int i2 = savedState.g;
        if (i2 == 1 || i2 == 2) {
            this.D = 4;
        } else {
            this.D = i2;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable v(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean x(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        this.G = 0;
        this.H = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x005e  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void z(androidx.coordinatorlayout.widget.CoordinatorLayout r2, V r3, android.view.View r4, int r5) throws android.content.res.Resources.NotFoundException {
        /*
            r1 = this;
            int r2 = r3.getTop()
            int r5 = r1.I()
            r0 = 3
            if (r2 != r5) goto Lf
            r1.N(r0)
            return
        Lf:
            java.lang.ref.WeakReference<android.view.View> r2 = r1.M
            if (r2 == 0) goto Ld3
            java.lang.Object r2 = r2.get()
            if (r4 != r2) goto Ld3
            boolean r2 = r1.H
            if (r2 != 0) goto L1f
            goto Ld3
        L1f:
            int r2 = r1.G
            if (r2 <= 0) goto L3a
            boolean r2 = r1.b
            if (r2 == 0) goto L2b
            int r2 = r1.v
            goto Lcd
        L2b:
            int r2 = r3.getTop()
            int r4 = r1.w
            if (r2 <= r4) goto L36
            r2 = r4
            goto Lc8
        L36:
            int r2 = r1.u
            goto Lcd
        L3a:
            boolean r2 = r1.A
            if (r2 == 0) goto L5e
            android.view.VelocityTracker r2 = r1.O
            if (r2 != 0) goto L44
            r2 = 0
            goto L53
        L44:
            r4 = 1000(0x3e8, float:1.401E-42)
            float r5 = r1.c
            r2.computeCurrentVelocity(r4, r5)
            android.view.VelocityTracker r2 = r1.O
            int r4 = r1.P
            float r2 = r2.getYVelocity(r4)
        L53:
            boolean r2 = r1.Q(r3, r2)
            if (r2 == 0) goto L5e
            int r2 = r1.K
            r0 = 5
            goto Lcd
        L5e:
            int r2 = r1.G
            if (r2 != 0) goto Laa
            int r2 = r3.getTop()
            boolean r4 = r1.b
            if (r4 == 0) goto L81
            int r4 = r1.v
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.y
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto L7e
            int r2 = r1.v
            goto Lcd
        L7e:
            int r2 = r1.y
            goto Lcc
        L81:
            int r4 = r1.w
            if (r2 >= r4) goto L95
            int r4 = r1.y
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            if (r2 >= r4) goto L92
            int r2 = r1.u
            goto Lcd
        L92:
            int r2 = r1.w
            goto Lc8
        L95:
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.y
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto La7
            int r2 = r1.w
            goto Lc8
        La7:
            int r2 = r1.y
            goto Lcc
        Laa:
            boolean r2 = r1.b
            if (r2 == 0) goto Lb1
            int r2 = r1.y
            goto Lcc
        Lb1:
            int r2 = r3.getTop()
            int r4 = r1.w
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.y
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lca
            int r2 = r1.w
        Lc8:
            r0 = 6
            goto Lcd
        Lca:
            int r2 = r1.y
        Lcc:
            r0 = 4
        Lcd:
            r4 = 0
            r1.R(r3, r0, r2, r4)
            r1.H = r4
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.z(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public final int g;
        public int h;
        public boolean i;
        public boolean j;
        public boolean k;

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
                return new SavedState(parcel, (ClassLoader) null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.k = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeInt(this.k ? 1 : 0);
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.g = bottomSheetBehavior.D;
            this.h = bottomSheetBehavior.d;
            this.i = bottomSheetBehavior.b;
            this.j = bottomSheetBehavior.A;
            this.k = bottomSheetBehavior.B;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        int i;
        super(context, attributeSet);
        this.a = 0;
        this.b = true;
        this.s = null;
        this.x = 0.5f;
        this.z = -1.0f;
        this.C = true;
        this.D = 4;
        this.N = new ArrayList<>();
        this.T = -1;
        this.U = new b();
        this.g = context.getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        this.h = typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_shapeAppearance);
        int i2 = R$styleable.BottomSheetBehavior_Layout_backgroundTint;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i2);
        if (zHasValue) {
            E(context, attributeSet, zHasValue, c50.a0(context, typedArrayObtainStyledAttributes, i2));
        } else {
            E(context, attributeSet, zHasValue, null);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.t = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.t.addUpdateListener(new l65(this));
        this.z = typedArrayObtainStyledAttributes.getDimension(R$styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        int i3 = R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i3);
        if (typedValuePeekValue != null && (i = typedValuePeekValue.data) == -1) {
            L(i);
        } else {
            L(typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, -1));
        }
        K(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        this.k = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.b != z) {
            this.b = z;
            if (this.L != null) {
                C();
            }
            N((this.b && this.D == 6) ? 3 : this.D);
            S();
        }
        this.B = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        this.C = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_draggable, true);
        this.a = typedArrayObtainStyledAttributes.getInt(R$styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(R$styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.x = f;
            if (this.L != null) {
                this.w = (int) ((1.0f - f) * this.K);
            }
            int i4 = R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i4);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i5 = typedValuePeekValue2.data;
                if (i5 >= 0) {
                    this.u = i5;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(i4, 0);
                if (dimensionPixelOffset >= 0) {
                    this.u = dimensionPixelOffset;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
            this.m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
            this.n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
            typedArrayObtainStyledAttributes.recycle();
            this.c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
