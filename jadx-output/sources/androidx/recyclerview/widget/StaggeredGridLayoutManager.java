package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.d0;
import defpackage.jo;
import defpackage.qf;
import defpackage.rf;
import defpackage.sa;
import defpackage.sf;
import defpackage.wf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.m implements RecyclerView.w.b {
    public BitSet A;
    public int B;
    public int C;
    public LazySpanLookup D;
    public int E;
    public boolean F;
    public boolean G;
    public SavedState H;
    public int I;
    public final Rect J;
    public final b K;
    public boolean L;
    public int[] M;
    public final Runnable N;
    public int r;
    public d[] s;
    public wf t;
    public wf u;
    public int v;
    public int w;
    public final rf x;
    public boolean y;
    public boolean z;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int e;
        public int f;
        public int g;
        public int[] h;
        public int i;
        public int[] j;
        public List<LazySpanLookup.FullSpanItem> k;
        public boolean l;
        public boolean m;
        public boolean n;

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

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            if (this.g > 0) {
                parcel.writeIntArray(this.h);
            }
            parcel.writeInt(this.i);
            if (this.i > 0) {
                parcel.writeIntArray(this.j);
            }
            parcel.writeInt(this.l ? 1 : 0);
            parcel.writeInt(this.m ? 1 : 0);
            parcel.writeInt(this.n ? 1 : 0);
            parcel.writeList(this.k);
        }

        public SavedState(Parcel parcel) {
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            int i = parcel.readInt();
            this.g = i;
            if (i > 0) {
                int[] iArr = new int[i];
                this.h = iArr;
                parcel.readIntArray(iArr);
            }
            int i2 = parcel.readInt();
            this.i = i2;
            if (i2 > 0) {
                int[] iArr2 = new int[i2];
                this.j = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.l = parcel.readInt() == 1;
            this.m = parcel.readInt() == 1;
            this.n = parcel.readInt() == 1;
            this.k = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.g = savedState.g;
            this.e = savedState.e;
            this.f = savedState.f;
            this.h = savedState.h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.l = savedState.l;
            this.m = savedState.m;
            this.n = savedState.n;
            this.k = savedState.k;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.b1();
        }
    }

    public class b {
        public int a;
        public int b;
        public boolean c;
        public boolean d;
        public boolean e;
        public int[] f;

        public b() {
            b();
        }

        public void a() {
            this.b = this.c ? StaggeredGridLayoutManager.this.t.g() : StaggeredGridLayoutManager.this.t.k();
        }

        public void b() {
            this.a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    public static class c extends RecyclerView.n {
        public d e;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(int i, int i2) {
            super(i, i2);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public class d {
        public ArrayList<View> a = new ArrayList<>();
        public int b = Integer.MIN_VALUE;
        public int c = Integer.MIN_VALUE;
        public int d = 0;
        public final int e;

        public d(int i) {
            this.e = i;
        }

        public void a(View view) {
            c cVarL = l(view);
            cVarL.e = this;
            this.a.add(view);
            this.c = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.b = Integer.MIN_VALUE;
            }
            if (cVarL.c() || cVarL.b()) {
                this.d = StaggeredGridLayoutManager.this.t.c(view) + this.d;
            }
        }

        public void b() {
            View view = this.a.get(r0.size() - 1);
            c cVarL = l(view);
            this.c = StaggeredGridLayoutManager.this.t.b(view);
            Objects.requireNonNull(cVarL);
        }

        public void c() {
            View view = this.a.get(0);
            c cVarL = l(view);
            this.b = StaggeredGridLayoutManager.this.t.e(view);
            Objects.requireNonNull(cVarL);
        }

        public void d() {
            this.a.clear();
            this.b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
            this.d = 0;
        }

        public int e() {
            return StaggeredGridLayoutManager.this.y ? h(this.a.size() - 1, -1, true) : h(0, this.a.size(), true);
        }

        public int f() {
            return StaggeredGridLayoutManager.this.y ? h(0, this.a.size(), true) : h(this.a.size() - 1, -1, true);
        }

        public int g(int i, int i2, boolean z, boolean z2, boolean z3) {
            int iK = StaggeredGridLayoutManager.this.t.k();
            int iG = StaggeredGridLayoutManager.this.t.g();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.a.get(i);
                int iE = StaggeredGridLayoutManager.this.t.e(view);
                int iB = StaggeredGridLayoutManager.this.t.b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? iE >= iG : iE > iG;
                if (!z3 ? iB > iK : iB >= iK) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (iE >= iK && iB <= iG) {
                            return StaggeredGridLayoutManager.this.R(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.R(view);
                        }
                        if (iE < iK || iB > iG) {
                            return StaggeredGridLayoutManager.this.R(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        public int h(int i, int i2, boolean z) {
            return g(i, i2, false, false, z);
        }

        public int i(int i, int i2, boolean z) {
            return g(i, i2, z, true, false);
        }

        public int j(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            b();
            return this.c;
        }

        public View k(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.a.size() - 1;
                while (size >= 0) {
                    View view2 = this.a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.y && staggeredGridLayoutManager.R(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.y && staggeredGridLayoutManager2.R(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.y && staggeredGridLayoutManager3.R(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.y && staggeredGridLayoutManager4.R(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        public c l(View view) {
            return (c) view.getLayoutParams();
        }

        public int m(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            c();
            return this.b;
        }

        public void n() {
            int size = this.a.size();
            View viewRemove = this.a.remove(size - 1);
            c cVarL = l(viewRemove);
            cVarL.e = null;
            if (cVarL.c() || cVarL.b()) {
                this.d -= StaggeredGridLayoutManager.this.t.c(viewRemove);
            }
            if (size == 1) {
                this.b = Integer.MIN_VALUE;
            }
            this.c = Integer.MIN_VALUE;
        }

        public void o() {
            View viewRemove = this.a.remove(0);
            c cVarL = l(viewRemove);
            cVarL.e = null;
            if (this.a.size() == 0) {
                this.c = Integer.MIN_VALUE;
            }
            if (cVarL.c() || cVarL.b()) {
                this.d -= StaggeredGridLayoutManager.this.t.c(viewRemove);
            }
            this.b = Integer.MIN_VALUE;
        }

        public void p(View view) {
            c cVarL = l(view);
            cVarL.e = this;
            this.a.add(0, view);
            this.b = Integer.MIN_VALUE;
            if (this.a.size() == 1) {
                this.c = Integer.MIN_VALUE;
            }
            if (cVarL.c() || cVarL.b()) {
                this.d = StaggeredGridLayoutManager.this.t.c(view) + this.d;
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.r = -1;
        this.y = false;
        this.z = false;
        this.B = -1;
        this.C = Integer.MIN_VALUE;
        this.D = new LazySpanLookup();
        this.E = 2;
        this.J = new Rect();
        this.K = new b();
        this.L = true;
        this.N = new a();
        RecyclerView.m.d dVarS = RecyclerView.m.S(context, attributeSet, i, i2);
        int i3 = dVarS.a;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        d(null);
        if (i3 != this.v) {
            this.v = i3;
            wf wfVar = this.t;
            this.t = this.u;
            this.u = wfVar;
            L0();
        }
        B1(dVarS.b);
        boolean z = dVarS.c;
        d(null);
        SavedState savedState = this.H;
        if (savedState != null && savedState.l != z) {
            savedState.l = z;
        }
        this.y = z;
        L0();
        this.x = new rf();
        this.t = wf.a(this, this.v);
        this.u = wf.a(this, 1 - this.v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int A(RecyclerView.t tVar, RecyclerView.x xVar) {
        return this.v == 1 ? this.r : super.A(tVar, xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void A0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.H = (SavedState) parcelable;
            L0();
        }
    }

    public final void A1(int i) {
        rf rfVar = this.x;
        rfVar.e = i;
        rfVar.d = this.z != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public Parcelable B0() {
        int iM;
        int iK;
        int[] iArr;
        SavedState savedState = this.H;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.l = this.y;
        savedState2.m = this.F;
        savedState2.n = this.G;
        LazySpanLookup lazySpanLookup = this.D;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.a) == null) {
            savedState2.i = 0;
        } else {
            savedState2.j = iArr;
            savedState2.i = iArr.length;
            savedState2.k = lazySpanLookup.b;
        }
        if (y() > 0) {
            savedState2.e = this.F ? l1() : k1();
            View viewG1 = this.z ? g1(true) : h1(true);
            savedState2.f = viewG1 != null ? R(viewG1) : -1;
            int i = this.r;
            savedState2.g = i;
            savedState2.h = new int[i];
            for (int i2 = 0; i2 < this.r; i2++) {
                if (this.F) {
                    iM = this.s[i2].j(Integer.MIN_VALUE);
                    if (iM != Integer.MIN_VALUE) {
                        iK = this.t.g();
                        iM -= iK;
                    }
                } else {
                    iM = this.s[i2].m(Integer.MIN_VALUE);
                    if (iM != Integer.MIN_VALUE) {
                        iK = this.t.k();
                        iM -= iK;
                    }
                }
                savedState2.h[i2] = iM;
            }
        } else {
            savedState2.e = -1;
            savedState2.f = -1;
            savedState2.g = 0;
        }
        return savedState2;
    }

    public void B1(int i) {
        d(null);
        if (i != this.r) {
            this.D.a();
            L0();
            this.r = i;
            this.A = new BitSet(this.r);
            this.s = new d[this.r];
            for (int i2 = 0; i2 < this.r; i2++) {
                this.s[i2] = new d(i2);
            }
            L0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void C0(int i) {
        if (i == 0) {
            b1();
        }
    }

    public final void C1(int i, int i2) {
        for (int i3 = 0; i3 < this.r; i3++) {
            if (!this.s[i3].a.isEmpty()) {
                E1(this.s[i3], i, i2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D1(int r5, androidx.recyclerview.widget.RecyclerView.x r6) {
        /*
            r4 = this;
            rf r0 = r4.x
            r1 = 0
            r0.b = r1
            r0.c = r5
            androidx.recyclerview.widget.RecyclerView$w r0 = r4.g
            r2 = 1
            if (r0 == 0) goto L12
            boolean r0 = r0.e
            if (r0 == 0) goto L12
            r0 = 1
            goto L13
        L12:
            r0 = 0
        L13:
            if (r0 == 0) goto L33
            int r6 = r6.a
            r0 = -1
            if (r6 == r0) goto L33
            boolean r0 = r4.z
            if (r6 >= r5) goto L20
            r5 = 1
            goto L21
        L20:
            r5 = 0
        L21:
            if (r0 != r5) goto L2a
            wf r5 = r4.t
            int r5 = r5.l()
            goto L34
        L2a:
            wf r5 = r4.t
            int r5 = r5.l()
            r6 = r5
            r5 = 0
            goto L35
        L33:
            r5 = 0
        L34:
            r6 = 0
        L35:
            androidx.recyclerview.widget.RecyclerView r0 = r4.b
            if (r0 == 0) goto L3f
            boolean r0 = r0.k
            if (r0 == 0) goto L3f
            r0 = 1
            goto L40
        L3f:
            r0 = 0
        L40:
            if (r0 == 0) goto L59
            rf r0 = r4.x
            wf r3 = r4.t
            int r3 = r3.k()
            int r3 = r3 - r6
            r0.f = r3
            rf r6 = r4.x
            wf r0 = r4.t
            int r0 = r0.g()
            int r0 = r0 + r5
            r6.g = r0
            goto L69
        L59:
            rf r0 = r4.x
            wf r3 = r4.t
            int r3 = r3.f()
            int r3 = r3 + r5
            r0.g = r3
            rf r5 = r4.x
            int r6 = -r6
            r5.f = r6
        L69:
            rf r5 = r4.x
            r5.h = r1
            r5.a = r2
            wf r6 = r4.t
            int r6 = r6.i()
            if (r6 != 0) goto L80
            wf r6 = r4.t
            int r6 = r6.f()
            if (r6 != 0) goto L80
            r1 = 1
        L80:
            r5.i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.D1(int, androidx.recyclerview.widget.RecyclerView$x):void");
    }

    public final void E1(d dVar, int i, int i2) {
        int i3 = dVar.d;
        if (i == -1) {
            int i4 = dVar.b;
            if (i4 == Integer.MIN_VALUE) {
                dVar.c();
                i4 = dVar.b;
            }
            if (i4 + i3 <= i2) {
                this.A.set(dVar.e, false);
                return;
            }
            return;
        }
        int i5 = dVar.c;
        if (i5 == Integer.MIN_VALUE) {
            dVar.b();
            i5 = dVar.c;
        }
        if (i5 - i3 >= i2) {
            this.A.set(dVar.e, false);
        }
    }

    public final int F1(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int M0(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        return z1(i, tVar, xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void N0(int i) {
        SavedState savedState = this.H;
        if (savedState != null && savedState.e != i) {
            savedState.h = null;
            savedState.g = 0;
            savedState.e = -1;
            savedState.f = -1;
        }
        this.B = i;
        this.C = Integer.MIN_VALUE;
        L0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int O0(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        return z1(i, tVar, xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void R0(Rect rect, int i, int i2) {
        int iH;
        int iH2;
        int iP = P() + O();
        int iN = N() + Q();
        if (this.v == 1) {
            iH2 = RecyclerView.m.h(i2, rect.height() + iN, L());
            iH = RecyclerView.m.h(i, (this.w * this.r) + iP, M());
        } else {
            iH = RecyclerView.m.h(i, rect.width() + iP, M());
            iH2 = RecyclerView.m.h(i2, (this.w * this.r) + iN, L());
        }
        this.b.setMeasuredDimension(iH, iH2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int T(RecyclerView.t tVar, RecyclerView.x xVar) {
        return this.v == 0 ? this.r : super.T(tVar, xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean W() {
        return this.E != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void X0(RecyclerView recyclerView, RecyclerView.x xVar, int i) {
        sf sfVar = new sf(recyclerView.getContext());
        sfVar.a = i;
        Y0(sfVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean Z0() {
        return this.H == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.w.b
    public PointF a(int i) {
        int iA1 = a1(i);
        PointF pointF = new PointF();
        if (iA1 == 0) {
            return null;
        }
        if (this.v == 0) {
            pointF.x = iA1;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iA1;
        }
        return pointF;
    }

    public final int a1(int i) {
        if (y() == 0) {
            return this.z ? 1 : -1;
        }
        return (i < k1()) != this.z ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void b0(int i) {
        super.b0(i);
        for (int i2 = 0; i2 < this.r; i2++) {
            d dVar = this.s[i2];
            int i3 = dVar.b;
            if (i3 != Integer.MIN_VALUE) {
                dVar.b = i3 + i;
            }
            int i4 = dVar.c;
            if (i4 != Integer.MIN_VALUE) {
                dVar.c = i4 + i;
            }
        }
    }

    public boolean b1() {
        int iK1;
        if (y() != 0 && this.E != 0 && this.i) {
            if (this.z) {
                iK1 = l1();
                k1();
            } else {
                iK1 = k1();
                l1();
            }
            if (iK1 == 0 && p1() != null) {
                this.D.a();
                this.h = true;
                L0();
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void c0(int i) {
        super.c0(i);
        for (int i2 = 0; i2 < this.r; i2++) {
            d dVar = this.s[i2];
            int i3 = dVar.b;
            if (i3 != Integer.MIN_VALUE) {
                dVar.b = i3 + i;
            }
            int i4 = dVar.c;
            if (i4 != Integer.MIN_VALUE) {
                dVar.c = i4 + i;
            }
        }
    }

    public final int c1(RecyclerView.x xVar) {
        if (y() == 0) {
            return 0;
        }
        return d0.h.n(xVar, this.t, h1(!this.L), g1(!this.L), this, this.L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void d(String str) {
        RecyclerView recyclerView;
        if (this.H != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.i(str);
    }

    public final int d1(RecyclerView.x xVar) {
        if (y() == 0) {
            return 0;
        }
        return d0.h.o(xVar, this.t, h1(!this.L), g1(!this.L), this, this.L, this.z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean e() {
        return this.v == 0;
    }

    public final int e1(RecyclerView.x xVar) {
        if (y() == 0) {
            return 0;
        }
        return d0.h.p(xVar, this.t, h1(!this.L), g1(!this.L), this, this.L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean f() {
        return this.v == 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean, int] */
    public final int f1(RecyclerView.t tVar, rf rfVar, RecyclerView.x xVar) {
        int i;
        d dVar;
        ?? r2;
        int iC;
        int iC2;
        int iK;
        int iC3;
        int i2;
        int i3;
        int i4;
        boolean z = false;
        this.A.set(0, this.r, true);
        if (this.x.i) {
            i = rfVar.e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i = rfVar.e == 1 ? rfVar.g + rfVar.b : rfVar.f - rfVar.b;
        }
        C1(rfVar.e, i);
        int iG = this.z ? this.t.g() : this.t.k();
        boolean z2 = false;
        while (true) {
            int i5 = rfVar.c;
            if (!(i5 >= 0 && i5 < xVar.b()) || (!this.x.i && this.A.isEmpty())) {
                break;
            }
            View view = tVar.j(rfVar.c, z, Long.MAX_VALUE).itemView;
            rfVar.c += rfVar.d;
            c cVar = (c) view.getLayoutParams();
            int iA = cVar.a();
            int[] iArr = this.D.a;
            int i6 = (iArr == null || iA >= iArr.length) ? -1 : iArr[iA];
            if (i6 == -1) {
                if (t1(rfVar.e)) {
                    i3 = this.r - 1;
                    i2 = -1;
                    i4 = -1;
                } else {
                    i2 = this.r;
                    i3 = 0;
                    i4 = 1;
                }
                d dVar2 = null;
                if (rfVar.e == 1) {
                    int iK2 = this.t.k();
                    int i7 = Integer.MAX_VALUE;
                    while (i3 != i2) {
                        d dVar3 = this.s[i3];
                        int iJ = dVar3.j(iK2);
                        if (iJ < i7) {
                            dVar2 = dVar3;
                            i7 = iJ;
                        }
                        i3 += i4;
                    }
                } else {
                    int iG2 = this.t.g();
                    int i8 = Integer.MIN_VALUE;
                    while (i3 != i2) {
                        d dVar4 = this.s[i3];
                        int iM = dVar4.m(iG2);
                        if (iM > i8) {
                            dVar2 = dVar4;
                            i8 = iM;
                        }
                        i3 += i4;
                    }
                }
                dVar = dVar2;
                LazySpanLookup lazySpanLookup = this.D;
                lazySpanLookup.b(iA);
                lazySpanLookup.a[iA] = dVar.e;
            } else {
                dVar = this.s[i6];
            }
            d dVar5 = dVar;
            cVar.e = dVar5;
            if (rfVar.e == 1) {
                r2 = 0;
                c(view, -1, false);
            } else {
                r2 = 0;
                c(view, 0, false);
            }
            if (this.v == 1) {
                r1(view, RecyclerView.m.z(this.w, this.n, r2, ((ViewGroup.MarginLayoutParams) cVar).width, r2), RecyclerView.m.z(this.q, this.o, N() + Q(), ((ViewGroup.MarginLayoutParams) cVar).height, true), r2);
            } else {
                r1(view, RecyclerView.m.z(this.p, this.n, P() + O(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.m.z(this.w, this.o, 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), false);
            }
            if (rfVar.e == 1) {
                int iJ2 = dVar5.j(iG);
                iC2 = iJ2;
                iC = this.t.c(view) + iJ2;
            } else {
                int iM2 = dVar5.m(iG);
                iC = iM2;
                iC2 = iM2 - this.t.c(view);
            }
            if (rfVar.e == 1) {
                cVar.e.a(view);
            } else {
                cVar.e.p(view);
            }
            if (q1() && this.v == 1) {
                iC3 = this.u.g() - (((this.r - 1) - dVar5.e) * this.w);
                iK = iC3 - this.u.c(view);
            } else {
                iK = this.u.k() + (dVar5.e * this.w);
                iC3 = this.u.c(view) + iK;
            }
            int i9 = iC3;
            int i10 = iK;
            if (this.v == 1) {
                a0(view, i10, iC2, i9, iC);
            } else {
                a0(view, iC2, i10, iC, i9);
            }
            E1(dVar5, this.x.e, i);
            v1(tVar, this.x);
            if (this.x.h && view.hasFocusable()) {
                this.A.set(dVar5.e, false);
            }
            z2 = true;
            z = false;
        }
        if (!z2) {
            v1(tVar, this.x);
        }
        int iK3 = this.x.e == -1 ? this.t.k() - n1(this.t.k()) : m1(this.t.g()) - this.t.g();
        if (iK3 > 0) {
            return Math.min(rfVar.b, iK3);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean g(RecyclerView.n nVar) {
        return nVar instanceof c;
    }

    public View g1(boolean z) {
        int iK = this.t.k();
        int iG = this.t.g();
        View view = null;
        for (int iY = y() - 1; iY >= 0; iY--) {
            View viewX = x(iY);
            int iE = this.t.e(viewX);
            int iB = this.t.b(viewX);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z) {
                    return viewX;
                }
                if (view == null) {
                    view = viewX;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void h0(RecyclerView recyclerView, RecyclerView.t tVar) {
        g0();
        Runnable runnable = this.N;
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(runnable);
        }
        for (int i = 0; i < this.r; i++) {
            this.s[i].d();
        }
        recyclerView.requestLayout();
    }

    public View h1(boolean z) {
        int iK = this.t.k();
        int iG = this.t.g();
        int iY = y();
        View view = null;
        for (int i = 0; i < iY; i++) {
            View viewX = x(i);
            int iE = this.t.e(viewX);
            if (this.t.b(viewX) > iK && iE < iG) {
                if (iE >= iK || !z) {
                    return viewX;
                }
                if (view == null) {
                    view = viewX;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void i(int i, int i2, RecyclerView.x xVar, RecyclerView.m.c cVar) {
        int iJ;
        int iM;
        if (this.v != 0) {
            i = i2;
        }
        if (y() == 0 || i == 0) {
            return;
        }
        u1(i, xVar);
        int[] iArr = this.M;
        if (iArr == null || iArr.length < this.r) {
            this.M = new int[this.r];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.r; i4++) {
            rf rfVar = this.x;
            if (rfVar.d == -1) {
                iJ = rfVar.f;
                iM = this.s[i4].m(iJ);
            } else {
                iJ = this.s[i4].j(rfVar.g);
                iM = this.x.g;
            }
            int i5 = iJ - iM;
            if (i5 >= 0) {
                this.M[i3] = i5;
                i3++;
            }
        }
        Arrays.sort(this.M, 0, i3);
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = this.x.c;
            if (!(i7 >= 0 && i7 < xVar.b())) {
                return;
            }
            ((qf.b) cVar).a(this.x.c, this.M[i6]);
            rf rfVar2 = this.x;
            rfVar2.c += rfVar2.d;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005c  */
    @Override // androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View i0(android.view.View r9, int r10, androidx.recyclerview.widget.RecyclerView.t r11, androidx.recyclerview.widget.RecyclerView.x r12) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.i0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$t, androidx.recyclerview.widget.RecyclerView$x):android.view.View");
    }

    public final void i1(RecyclerView.t tVar, RecyclerView.x xVar, boolean z) {
        int iG;
        int iM1 = m1(Integer.MIN_VALUE);
        if (iM1 != Integer.MIN_VALUE && (iG = this.t.g() - iM1) > 0) {
            int i = iG - (-z1(-iG, tVar, xVar));
            if (!z || i <= 0) {
                return;
            }
            this.t.p(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j0(AccessibilityEvent accessibilityEvent) {
        RecyclerView.t tVar = this.b.f;
        k0(accessibilityEvent);
        if (y() > 0) {
            View viewH1 = h1(false);
            View viewG1 = g1(false);
            if (viewH1 == null || viewG1 == null) {
                return;
            }
            int iR = R(viewH1);
            int iR2 = R(viewG1);
            if (iR < iR2) {
                accessibilityEvent.setFromIndex(iR);
                accessibilityEvent.setToIndex(iR2);
            } else {
                accessibilityEvent.setFromIndex(iR2);
                accessibilityEvent.setToIndex(iR);
            }
        }
    }

    public final void j1(RecyclerView.t tVar, RecyclerView.x xVar, boolean z) {
        int iK;
        int iN1 = n1(Integer.MAX_VALUE);
        if (iN1 != Integer.MAX_VALUE && (iK = iN1 - this.t.k()) > 0) {
            int iZ1 = iK - z1(iK, tVar, xVar);
            if (!z || iZ1 <= 0) {
                return;
            }
            this.t.p(-iZ1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int k(RecyclerView.x xVar) {
        return c1(xVar);
    }

    public int k1() {
        if (y() == 0) {
            return 0;
        }
        return R(x(0));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int l(RecyclerView.x xVar) {
        return d1(xVar);
    }

    public int l1() {
        int iY = y();
        if (iY == 0) {
            return 0;
        }
        return R(x(iY - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int m(RecyclerView.x xVar) {
        return e1(xVar);
    }

    public final int m1(int i) {
        int iJ = this.s[0].j(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int iJ2 = this.s[i2].j(i);
            if (iJ2 > iJ) {
                iJ = iJ2;
            }
        }
        return iJ;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int n(RecyclerView.x xVar) {
        return c1(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void n0(RecyclerView.t tVar, RecyclerView.x xVar, View view, sa saVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof c)) {
            m0(view, saVar);
            return;
        }
        c cVar = (c) layoutParams;
        if (this.v == 0) {
            d dVar = cVar.e;
            saVar.t(sa.c.a(dVar == null ? -1 : dVar.e, 1, -1, -1, false, false));
        } else {
            d dVar2 = cVar.e;
            saVar.t(sa.c.a(-1, -1, dVar2 == null ? -1 : dVar2.e, 1, false, false));
        }
    }

    public final int n1(int i) {
        int iM = this.s[0].m(i);
        for (int i2 = 1; i2 < this.r; i2++) {
            int iM2 = this.s[i2].m(i);
            if (iM2 < iM) {
                iM = iM2;
            }
        }
        return iM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int o(RecyclerView.x xVar) {
        return d1(xVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o1(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.z
            if (r0 == 0) goto L9
            int r0 = r6.l1()
            goto Ld
        L9:
            int r0 = r6.k1()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.D
            r4.d(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.D
            r9.f(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.D
            r7.e(r8, r4)
            goto L41
        L36:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.D
            r9.f(r7, r8)
            goto L41
        L3c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.D
            r9.e(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.z
            if (r7 == 0) goto L4d
            int r7 = r6.k1()
            goto L51
        L4d:
            int r7 = r6.l1()
        L51:
            if (r3 > r7) goto L56
            r6.L0()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.o1(int, int, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int p(RecyclerView.x xVar) {
        return e1(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void p0(RecyclerView recyclerView, int i, int i2) {
        o1(i, i2, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View p1() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.p1():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void q0(RecyclerView recyclerView) {
        this.D.a();
        L0();
    }

    public boolean q1() {
        return K() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void r0(RecyclerView recyclerView, int i, int i2, int i3) {
        o1(i, i2, 8);
    }

    public final void r1(View view, int i, int i2, boolean z) {
        Rect rect = this.J;
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.L(view));
        }
        c cVar = (c) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect2 = this.J;
        int iF1 = F1(i, i3 + rect2.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect2.right);
        int i4 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect3 = this.J;
        int iF12 = F1(i2, i4 + rect3.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect3.bottom);
        if (z ? W0(view, iF1, iF12, cVar) : U0(view, iF1, iF12, cVar)) {
            view.measure(iF1, iF12);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void s0(RecyclerView recyclerView, int i, int i2) {
        o1(i, i2, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x041a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s1(androidx.recyclerview.widget.RecyclerView.t r12, androidx.recyclerview.widget.RecyclerView.x r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 1081
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.s1(androidx.recyclerview.widget.RecyclerView$t, androidx.recyclerview.widget.RecyclerView$x, boolean):void");
    }

    public final boolean t1(int i) {
        if (this.v == 0) {
            return (i == -1) != this.z;
        }
        return ((i == -1) == this.z) == q1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n u() {
        return this.v == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u0(RecyclerView recyclerView, int i, int i2, Object obj) {
        o1(i, i2, 4);
    }

    public void u1(int i, RecyclerView.x xVar) {
        int iK1;
        int i2;
        if (i > 0) {
            iK1 = l1();
            i2 = 1;
        } else {
            iK1 = k1();
            i2 = -1;
        }
        this.x.a = true;
        D1(iK1, xVar);
        A1(i2);
        rf rfVar = this.x;
        rfVar.c = iK1 + rfVar.d;
        rfVar.b = Math.abs(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n v(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void v0(RecyclerView.t tVar, RecyclerView.x xVar) {
        s1(tVar, xVar, true);
    }

    public final void v1(RecyclerView.t tVar, rf rfVar) {
        if (!rfVar.a || rfVar.i) {
            return;
        }
        if (rfVar.b == 0) {
            if (rfVar.e == -1) {
                w1(tVar, rfVar.g);
                return;
            } else {
                x1(tVar, rfVar.f);
                return;
            }
        }
        int i = 1;
        if (rfVar.e == -1) {
            int i2 = rfVar.f;
            int iM = this.s[0].m(i2);
            while (i < this.r) {
                int iM2 = this.s[i].m(i2);
                if (iM2 > iM) {
                    iM = iM2;
                }
                i++;
            }
            int i3 = i2 - iM;
            w1(tVar, i3 < 0 ? rfVar.g : rfVar.g - Math.min(i3, rfVar.b));
            return;
        }
        int i4 = rfVar.g;
        int iJ = this.s[0].j(i4);
        while (i < this.r) {
            int iJ2 = this.s[i].j(i4);
            if (iJ2 < iJ) {
                iJ = iJ2;
            }
            i++;
        }
        int i5 = iJ - rfVar.g;
        x1(tVar, i5 < 0 ? rfVar.f : Math.min(i5, rfVar.b) + rfVar.f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n w(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void w0(RecyclerView.x xVar) {
        this.B = -1;
        this.C = Integer.MIN_VALUE;
        this.H = null;
        this.K.b();
    }

    public final void w1(RecyclerView.t tVar, int i) {
        for (int iY = y() - 1; iY >= 0; iY--) {
            View viewX = x(iY);
            if (this.t.e(viewX) < i || this.t.o(viewX) < i) {
                return;
            }
            c cVar = (c) viewX.getLayoutParams();
            Objects.requireNonNull(cVar);
            if (cVar.e.a.size() == 1) {
                return;
            }
            cVar.e.n();
            H0(viewX, tVar);
        }
    }

    public final void x1(RecyclerView.t tVar, int i) {
        while (y() > 0) {
            View viewX = x(0);
            if (this.t.b(viewX) > i || this.t.n(viewX) > i) {
                return;
            }
            c cVar = (c) viewX.getLayoutParams();
            Objects.requireNonNull(cVar);
            if (cVar.e.a.size() == 1) {
                return;
            }
            cVar.e.o();
            H0(viewX, tVar);
        }
    }

    public final void y1() {
        if (this.v == 1 || !q1()) {
            this.z = this.y;
        } else {
            this.z = !this.y;
        }
    }

    public int z1(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (y() == 0 || i == 0) {
            return 0;
        }
        u1(i, xVar);
        int iF1 = f1(tVar, this.x, xVar);
        if (this.x.b >= iF1) {
            i = i < 0 ? -iF1 : iF1;
        }
        this.t.p(-i);
        this.F = this.z;
        rf rfVar = this.x;
        rfVar.b = 0;
        v1(tVar, rfVar);
        return i;
    }

    public static class LazySpanLookup {
        public int[] a;
        public List<FullSpanItem> b;

        public void a() {
            int[] iArr = this.a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        public void b(int i) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public FullSpanItem c(int i) {
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                if (fullSpanItem.e == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int d(int r5) {
            /*
                r4 = this;
                int[] r0 = r4.a
                r1 = -1
                if (r0 != 0) goto L6
                return r1
            L6:
                int r0 = r0.length
                if (r5 < r0) goto La
                return r1
            La:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                if (r0 != 0) goto L10
            Le:
                r0 = -1
                goto L46
            L10:
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = r4.c(r5)
                if (r0 == 0) goto L1b
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r2 = r4.b
                r2.remove(r0)
            L1b:
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                int r0 = r0.size()
                r2 = 0
            L22:
                if (r2 >= r0) goto L34
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r4.b
                java.lang.Object r3 = r3.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r3
                int r3 = r3.e
                if (r3 < r5) goto L31
                goto L35
            L31:
                int r2 = r2 + 1
                goto L22
            L34:
                r2 = -1
            L35:
                if (r2 == r1) goto Le
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r0 = r4.b
                java.lang.Object r0 = r0.get(r2)
                androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem) r0
                java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> r3 = r4.b
                r3.remove(r2)
                int r0 = r0.e
            L46:
                if (r0 != r1) goto L52
                int[] r0 = r4.a
                int r2 = r0.length
                java.util.Arrays.fill(r0, r5, r2, r1)
                int[] r5 = r4.a
                int r5 = r5.length
                return r5
            L52:
                int[] r2 = r4.a
                int r0 = r0 + 1
                java.util.Arrays.fill(r2, r5, r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.d(int):int");
        }

        public void e(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            b(i3);
            int[] iArr2 = this.a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.a, i, i3, -1);
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                int i4 = fullSpanItem.e;
                if (i4 >= i) {
                    fullSpanItem.e = i4 + i2;
                }
            }
        }

        public void f(int i, int i2) {
            int[] iArr = this.a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            b(i3);
            int[] iArr2 = this.a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            List<FullSpanItem> list = this.b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.b.get(size);
                int i4 = fullSpanItem.e;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.b.remove(size);
                    } else {
                        fullSpanItem.e = i4 - i2;
                    }
                }
            }
        }

        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();
            public int e;
            public int f;
            public int[] g;
            public boolean h;

            public static class a implements Parcelable.Creator<FullSpanItem> {
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            public FullSpanItem(Parcel parcel) {
                this.e = parcel.readInt();
                this.f = parcel.readInt();
                this.h = parcel.readInt() == 1;
                int i = parcel.readInt();
                if (i > 0) {
                    int[] iArr = new int[i];
                    this.g = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                StringBuilder sbZ = jo.z("FullSpanItem{mPosition=");
                sbZ.append(this.e);
                sbZ.append(", mGapDir=");
                sbZ.append(this.f);
                sbZ.append(", mHasUnwantedGapAfter=");
                sbZ.append(this.h);
                sbZ.append(", mGapPerSpan=");
                sbZ.append(Arrays.toString(this.g));
                sbZ.append('}');
                return sbZ.toString();
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.e);
                parcel.writeInt(this.f);
                parcel.writeInt(this.h ? 1 : 0);
                int[] iArr = this.g;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.g);
                }
            }

            public FullSpanItem() {
            }
        }
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.r = -1;
        this.y = false;
        this.z = false;
        this.B = -1;
        this.C = Integer.MIN_VALUE;
        this.D = new LazySpanLookup();
        this.E = 2;
        this.J = new Rect();
        this.K = new b();
        this.L = true;
        this.N = new a();
        this.v = i2;
        B1(i);
        this.x = new rf();
        this.t = wf.a(this, this.v);
        this.u = wf.a(this, 1 - this.v);
    }
}
