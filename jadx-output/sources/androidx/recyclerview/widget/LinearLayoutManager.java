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
import defpackage.sf;
import defpackage.wf;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.m implements RecyclerView.w.b {
    public int A;
    public SavedState B;
    public final a C;
    public final b D;
    public int E;
    public int[] F;
    public int r;
    public c s;
    public wf t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public int z;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int e;
        public int f;
        public boolean g;

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

        public boolean a() {
            return this.e >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.e = savedState.e;
            this.f = savedState.f;
            this.g = savedState.g;
        }
    }

    public static class a {
        public wf a;
        public int b;
        public int c;
        public boolean d;
        public boolean e;

        public a() {
            d();
        }

        public void a() {
            this.c = this.d ? this.a.g() : this.a.k();
        }

        public void b(View view, int i) {
            if (this.d) {
                this.c = this.a.m() + this.a.b(view);
            } else {
                this.c = this.a.e(view);
            }
            this.b = i;
        }

        public void c(View view, int i) {
            int iM = this.a.m();
            if (iM >= 0) {
                b(view, i);
                return;
            }
            this.b = i;
            if (!this.d) {
                int iE = this.a.e(view);
                int iK = iE - this.a.k();
                this.c = iE;
                if (iK > 0) {
                    int iG = (this.a.g() - Math.min(0, (this.a.g() - iM) - this.a.b(view))) - (this.a.c(view) + iE);
                    if (iG < 0) {
                        this.c -= Math.min(iK, -iG);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG2 = (this.a.g() - iM) - this.a.b(view);
            this.c = this.a.g() - iG2;
            if (iG2 > 0) {
                int iC = this.c - this.a.c(view);
                int iK2 = this.a.k();
                int iMin = iC - (Math.min(this.a.e(view) - iK2, 0) + iK2);
                if (iMin < 0) {
                    this.c = Math.min(iG2, -iMin) + this.c;
                }
            }
        }

        public void d() {
            this.b = -1;
            this.c = Integer.MIN_VALUE;
            this.d = false;
            this.e = false;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("AnchorInfo{mPosition=");
            sbZ.append(this.b);
            sbZ.append(", mCoordinate=");
            sbZ.append(this.c);
            sbZ.append(", mLayoutFromEnd=");
            sbZ.append(this.d);
            sbZ.append(", mValid=");
            sbZ.append(this.e);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static class b {
        public int a;
        public boolean b;
        public boolean c;
        public boolean d;
    }

    public static class c {
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int j;
        public boolean l;
        public boolean a = true;
        public int h = 0;
        public int i = 0;
        public List<RecyclerView.a0> k = null;

        public void a(View view) {
            int iA;
            int size = this.k.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.k.get(i2).itemView;
                RecyclerView.n nVar = (RecyclerView.n) view3.getLayoutParams();
                if (view3 != view && !nVar.c() && (iA = (nVar.a() - this.d) * this.e) >= 0 && iA < i) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    } else {
                        i = iA;
                    }
                }
            }
            if (view2 == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.n) view2.getLayoutParams()).a();
            }
        }

        public boolean b(RecyclerView.x xVar) {
            int i = this.d;
            return i >= 0 && i < xVar.b();
        }

        public View c(RecyclerView.t tVar) {
            List<RecyclerView.a0> list = this.k;
            if (list == null) {
                View view = tVar.j(this.d, false, Long.MAX_VALUE).itemView;
                this.d += this.e;
                return view;
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view2 = this.k.get(i).itemView;
                RecyclerView.n nVar = (RecyclerView.n) view2.getLayoutParams();
                if (!nVar.c() && this.d == nVar.a()) {
                    a(view2);
                    return view2;
                }
            }
            return null;
        }
    }

    public LinearLayoutManager(Context context) {
        this(1, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void A0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.B = (SavedState) parcelable;
            L0();
        }
    }

    public boolean A1() {
        return this.t.i() == 0 && this.t.f() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public Parcelable B0() {
        SavedState savedState = this.B;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (y() > 0) {
            g1();
            boolean z = this.u ^ this.w;
            savedState2.g = z;
            if (z) {
                View viewT1 = t1();
                savedState2.f = this.t.g() - this.t.b(viewT1);
                savedState2.e = R(viewT1);
            } else {
                View viewU1 = u1();
                savedState2.e = R(viewU1);
                savedState2.f = this.t.e(viewU1) - this.t.k();
            }
        } else {
            savedState2.e = -1;
        }
        return savedState2;
    }

    public final void B1() {
        if (this.r == 1 || !v1()) {
            this.w = this.v;
        } else {
            this.w = !this.v;
        }
    }

    public int C1(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (y() == 0 || i == 0) {
            return 0;
        }
        g1();
        this.s.a = true;
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        F1(i2, iAbs, true, xVar);
        c cVar = this.s;
        int iH1 = h1(tVar, cVar, xVar, false) + cVar.g;
        if (iH1 < 0) {
            return 0;
        }
        if (iAbs > iH1) {
            i = i2 * iH1;
        }
        this.t.p(-i);
        this.s.j = i;
        return i;
    }

    public void D1(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(jo.g("invalid orientation:", i));
        }
        d(null);
        if (i != this.r || this.t == null) {
            wf wfVarA = wf.a(this, i);
            this.t = wfVarA;
            this.C.a = wfVarA;
            this.r = i;
            L0();
        }
    }

    public void E1(boolean z) {
        d(null);
        if (this.x == z) {
            return;
        }
        this.x = z;
        L0();
    }

    public final void F1(int i, int i2, boolean z, RecyclerView.x xVar) {
        int iK;
        this.s.l = A1();
        this.s.f = i;
        int[] iArr = this.F;
        iArr[0] = 0;
        iArr[1] = 0;
        a1(xVar, iArr);
        int iMax = Math.max(0, this.F[0]);
        int iMax2 = Math.max(0, this.F[1]);
        boolean z2 = i == 1;
        c cVar = this.s;
        int i3 = z2 ? iMax2 : iMax;
        cVar.h = i3;
        if (!z2) {
            iMax = iMax2;
        }
        cVar.i = iMax;
        if (z2) {
            cVar.h = this.t.h() + i3;
            View viewT1 = t1();
            c cVar2 = this.s;
            cVar2.e = this.w ? -1 : 1;
            int iR = R(viewT1);
            c cVar3 = this.s;
            cVar2.d = iR + cVar3.e;
            cVar3.b = this.t.b(viewT1);
            iK = this.t.b(viewT1) - this.t.g();
        } else {
            View viewU1 = u1();
            c cVar4 = this.s;
            cVar4.h = this.t.k() + cVar4.h;
            c cVar5 = this.s;
            cVar5.e = this.w ? 1 : -1;
            int iR2 = R(viewU1);
            c cVar6 = this.s;
            cVar5.d = iR2 + cVar6.e;
            cVar6.b = this.t.e(viewU1);
            iK = (-this.t.e(viewU1)) + this.t.k();
        }
        c cVar7 = this.s;
        cVar7.c = i2;
        if (z) {
            cVar7.c = i2 - iK;
        }
        cVar7.g = iK;
    }

    public final void G1(int i, int i2) {
        this.s.c = this.t.g() - i2;
        c cVar = this.s;
        cVar.e = this.w ? -1 : 1;
        cVar.d = i;
        cVar.f = 1;
        cVar.b = i2;
        cVar.g = Integer.MIN_VALUE;
    }

    public final void H1(int i, int i2) {
        this.s.c = i2 - this.t.k();
        c cVar = this.s;
        cVar.d = i;
        cVar.e = this.w ? 1 : -1;
        cVar.f = -1;
        cVar.b = i2;
        cVar.g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int M0(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.r == 1) {
            return 0;
        }
        return C1(i, tVar, xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void N0(int i) {
        this.z = i;
        this.A = Integer.MIN_VALUE;
        SavedState savedState = this.B;
        if (savedState != null) {
            savedState.e = -1;
        }
        L0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int O0(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.r == 0) {
            return 0;
        }
        return C1(i, tVar, xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean V0() {
        boolean z;
        if (this.o != 1073741824 && this.n != 1073741824) {
            int iY = y();
            int i = 0;
            while (true) {
                if (i >= iY) {
                    z = false;
                    break;
                }
                ViewGroup.LayoutParams layoutParams = x(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    z = true;
                    break;
                }
                i++;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean W() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void X0(RecyclerView recyclerView, RecyclerView.x xVar, int i) {
        sf sfVar = new sf(recyclerView.getContext());
        sfVar.a = i;
        Y0(sfVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean Z0() {
        return this.B == null && this.u == this.x;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.w.b
    public PointF a(int i) {
        if (y() == 0) {
            return null;
        }
        int i2 = (i < R(x(0))) != this.w ? -1 : 1;
        return this.r == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    public void a1(RecyclerView.x xVar, int[] iArr) {
        int i;
        int iL = xVar.a != -1 ? this.t.l() : 0;
        if (this.s.f == -1) {
            i = 0;
        } else {
            i = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i;
    }

    public void b1(RecyclerView.x xVar, c cVar, RecyclerView.m.c cVar2) {
        int i = cVar.d;
        if (i < 0 || i >= xVar.b()) {
            return;
        }
        ((qf.b) cVar2).a(i, Math.max(0, cVar.g));
    }

    public final int c1(RecyclerView.x xVar) {
        if (y() == 0) {
            return 0;
        }
        g1();
        return d0.h.n(xVar, this.t, k1(!this.y, true), j1(!this.y, true), this, this.y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void d(String str) {
        RecyclerView recyclerView;
        if (this.B != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.i(str);
    }

    public final int d1(RecyclerView.x xVar) {
        if (y() == 0) {
            return 0;
        }
        g1();
        return d0.h.o(xVar, this.t, k1(!this.y, true), j1(!this.y, true), this, this.y, this.w);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean e() {
        return this.r == 0;
    }

    public final int e1(RecyclerView.x xVar) {
        if (y() == 0) {
            return 0;
        }
        g1();
        return d0.h.p(xVar, this.t, k1(!this.y, true), j1(!this.y, true), this, this.y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean f() {
        return this.r == 1;
    }

    public int f1(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.r == 1) ? 1 : Integer.MIN_VALUE : this.r == 0 ? 1 : Integer.MIN_VALUE : this.r == 1 ? -1 : Integer.MIN_VALUE : this.r == 0 ? -1 : Integer.MIN_VALUE : (this.r != 1 && v1()) ? -1 : 1 : (this.r != 1 && v1()) ? 1 : -1;
    }

    public void g1() {
        if (this.s == null) {
            this.s = new c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void h0(RecyclerView recyclerView, RecyclerView.t tVar) {
        g0();
    }

    public int h1(RecyclerView.t tVar, c cVar, RecyclerView.x xVar, boolean z) {
        int i = cVar.c;
        int i2 = cVar.g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                cVar.g = i2 + i;
            }
            y1(tVar, cVar);
        }
        int i3 = cVar.c + cVar.h;
        b bVar = this.D;
        while (true) {
            if ((!cVar.l && i3 <= 0) || !cVar.b(xVar)) {
                break;
            }
            bVar.a = 0;
            bVar.b = false;
            bVar.c = false;
            bVar.d = false;
            w1(tVar, xVar, cVar, bVar);
            if (!bVar.b) {
                int i4 = cVar.b;
                int i5 = bVar.a;
                cVar.b = (cVar.f * i5) + i4;
                if (!bVar.c || cVar.k != null || !xVar.g) {
                    cVar.c -= i5;
                    i3 -= i5;
                }
                int i6 = cVar.g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + i5;
                    cVar.g = i7;
                    int i8 = cVar.c;
                    if (i8 < 0) {
                        cVar.g = i7 + i8;
                    }
                    y1(tVar, cVar);
                }
                if (z && bVar.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cVar.c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void i(int i, int i2, RecyclerView.x xVar, RecyclerView.m.c cVar) {
        if (this.r != 0) {
            i = i2;
        }
        if (y() == 0 || i == 0) {
            return;
        }
        g1();
        F1(i > 0 ? 1 : -1, Math.abs(i), true, xVar);
        b1(xVar, this.s, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View i0(View view, int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        int iF1;
        B1();
        if (y() == 0 || (iF1 = f1(i)) == Integer.MIN_VALUE) {
            return null;
        }
        g1();
        F1(iF1, (int) (this.t.l() * 0.33333334f), false, xVar);
        c cVar = this.s;
        cVar.g = Integer.MIN_VALUE;
        cVar.a = false;
        h1(tVar, cVar, xVar, true);
        View viewO1 = iF1 == -1 ? this.w ? o1(y() - 1, -1) : o1(0, y()) : this.w ? o1(0, y()) : o1(y() - 1, -1);
        View viewU1 = iF1 == -1 ? u1() : t1();
        if (!viewU1.hasFocusable()) {
            return viewO1;
        }
        if (viewO1 == null) {
            return null;
        }
        return viewU1;
    }

    public final View i1(RecyclerView.t tVar, RecyclerView.x xVar) {
        return q1(tVar, xVar, 0, y(), xVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j(int i, RecyclerView.m.c cVar) {
        boolean z;
        int i2;
        SavedState savedState = this.B;
        if (savedState == null || !savedState.a()) {
            B1();
            z = this.w;
            i2 = this.z;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.B;
            z = savedState2.g;
            i2 = savedState2.e;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.E && i2 >= 0 && i2 < i; i4++) {
            ((qf.b) cVar).a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j0(AccessibilityEvent accessibilityEvent) {
        RecyclerView.t tVar = this.b.f;
        k0(accessibilityEvent);
        if (y() > 0) {
            accessibilityEvent.setFromIndex(l1());
            accessibilityEvent.setToIndex(n1());
        }
    }

    public View j1(boolean z, boolean z2) {
        return this.w ? p1(0, y(), z, z2) : p1(y() - 1, -1, z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int k(RecyclerView.x xVar) {
        return c1(xVar);
    }

    public View k1(boolean z, boolean z2) {
        return this.w ? p1(y() - 1, -1, z, z2) : p1(0, y(), z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int l(RecyclerView.x xVar) {
        return d1(xVar);
    }

    public int l1() {
        View viewP1 = p1(0, y(), false, true);
        if (viewP1 == null) {
            return -1;
        }
        return R(viewP1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int m(RecyclerView.x xVar) {
        return e1(xVar);
    }

    public final View m1(RecyclerView.t tVar, RecyclerView.x xVar) {
        return q1(tVar, xVar, y() - 1, -1, xVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int n(RecyclerView.x xVar) {
        return c1(xVar);
    }

    public int n1() {
        View viewP1 = p1(y() - 1, -1, false, true);
        if (viewP1 == null) {
            return -1;
        }
        return R(viewP1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int o(RecyclerView.x xVar) {
        return d1(xVar);
    }

    public View o1(int i, int i2) {
        int i3;
        int i4;
        g1();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return x(i);
        }
        if (this.t.e(x(i)) < this.t.k()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.r == 0 ? this.e.a(i, i2, i3, i4) : this.f.a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int p(RecyclerView.x xVar) {
        return e1(xVar);
    }

    public View p1(int i, int i2, boolean z, boolean z2) {
        g1();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        return this.r == 0 ? this.e.a(i, i2, i3, i4) : this.f.a(i, i2, i3, i4);
    }

    public View q1(RecyclerView.t tVar, RecyclerView.x xVar, int i, int i2, int i3) {
        g1();
        int iK = this.t.k();
        int iG = this.t.g();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View viewX = x(i);
            int iR = R(viewX);
            if (iR >= 0 && iR < i3) {
                if (((RecyclerView.n) viewX.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = viewX;
                    }
                } else {
                    if (this.t.e(viewX) < iG && this.t.b(viewX) >= iK) {
                        return viewX;
                    }
                    if (view == null) {
                        view = viewX;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    public final int r1(int i, RecyclerView.t tVar, RecyclerView.x xVar, boolean z) {
        int iG;
        int iG2 = this.t.g() - i;
        if (iG2 <= 0) {
            return 0;
        }
        int i2 = -C1(-iG2, tVar, xVar);
        int i3 = i + i2;
        if (!z || (iG = this.t.g() - i3) <= 0) {
            return i2;
        }
        this.t.p(iG);
        return iG + i2;
    }

    public final int s1(int i, RecyclerView.t tVar, RecyclerView.x xVar, boolean z) {
        int iK;
        int iK2 = i - this.t.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i2 = -C1(iK2, tVar, xVar);
        int i3 = i + i2;
        if (!z || (iK = i3 - this.t.k()) <= 0) {
            return i2;
        }
        this.t.p(-iK);
        return i2 - iK;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public View t(int i) {
        int iY = y();
        if (iY == 0) {
            return null;
        }
        int iR = i - R(x(0));
        if (iR >= 0 && iR < iY) {
            View viewX = x(iR);
            if (R(viewX) == i) {
                return viewX;
            }
        }
        return super.t(i);
    }

    public final View t1() {
        return x(this.w ? 0 : y() - 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n u() {
        return new RecyclerView.n(-2, -2);
    }

    public final View u1() {
        return x(this.w ? y() - 1 : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01b8  */
    @Override // androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void v0(androidx.recyclerview.widget.RecyclerView.t r17, androidx.recyclerview.widget.RecyclerView.x r18) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.v0(androidx.recyclerview.widget.RecyclerView$t, androidx.recyclerview.widget.RecyclerView$x):void");
    }

    public boolean v1() {
        return K() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void w0(RecyclerView.x xVar) {
        this.B = null;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.C.d();
    }

    public void w1(RecyclerView.t tVar, RecyclerView.x xVar, c cVar, b bVar) {
        int i;
        int i2;
        int i3;
        int iO;
        int iD;
        View viewC = cVar.c(tVar);
        if (viewC == null) {
            bVar.b = true;
            return;
        }
        RecyclerView.n nVar = (RecyclerView.n) viewC.getLayoutParams();
        if (cVar.k == null) {
            if (this.w == (cVar.f == -1)) {
                c(viewC, -1, false);
            } else {
                c(viewC, 0, false);
            }
        } else {
            if (this.w == (cVar.f == -1)) {
                c(viewC, -1, true);
            } else {
                c(viewC, 0, true);
            }
        }
        RecyclerView.n nVar2 = (RecyclerView.n) viewC.getLayoutParams();
        Rect rectL = this.b.L(viewC);
        int i4 = rectL.left + rectL.right + 0;
        int i5 = rectL.top + rectL.bottom + 0;
        int iZ = RecyclerView.m.z(this.p, this.n, P() + O() + ((ViewGroup.MarginLayoutParams) nVar2).leftMargin + ((ViewGroup.MarginLayoutParams) nVar2).rightMargin + i4, ((ViewGroup.MarginLayoutParams) nVar2).width, e());
        int iZ2 = RecyclerView.m.z(this.q, this.o, N() + Q() + ((ViewGroup.MarginLayoutParams) nVar2).topMargin + ((ViewGroup.MarginLayoutParams) nVar2).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) nVar2).height, f());
        if (U0(viewC, iZ, iZ2, nVar2)) {
            viewC.measure(iZ, iZ2);
        }
        bVar.a = this.t.c(viewC);
        if (this.r == 1) {
            if (v1()) {
                iD = this.p - P();
                iO = iD - this.t.d(viewC);
            } else {
                iO = O();
                iD = this.t.d(viewC) + iO;
            }
            if (cVar.f == -1) {
                int i6 = cVar.b;
                i3 = i6;
                i2 = iD;
                i = i6 - bVar.a;
            } else {
                int i7 = cVar.b;
                i = i7;
                i2 = iD;
                i3 = bVar.a + i7;
            }
        } else {
            int iQ = Q();
            int iD2 = this.t.d(viewC) + iQ;
            if (cVar.f == -1) {
                int i8 = cVar.b;
                i2 = i8;
                i = iQ;
                i3 = iD2;
                iO = i8 - bVar.a;
            } else {
                int i9 = cVar.b;
                i = iQ;
                i2 = bVar.a + i9;
                i3 = iD2;
                iO = i9;
            }
        }
        a0(viewC, iO, i, i2, i3);
        if (nVar.c() || nVar.b()) {
            bVar.c = true;
        }
        bVar.d = viewC.hasFocusable();
    }

    public void x1(RecyclerView.t tVar, RecyclerView.x xVar, a aVar, int i) {
    }

    public final void y1(RecyclerView.t tVar, c cVar) {
        if (!cVar.a || cVar.l) {
            return;
        }
        int i = cVar.g;
        int i2 = cVar.i;
        if (cVar.f == -1) {
            int iY = y();
            if (i < 0) {
                return;
            }
            int iF = (this.t.f() - i) + i2;
            if (this.w) {
                for (int i3 = 0; i3 < iY; i3++) {
                    View viewX = x(i3);
                    if (this.t.e(viewX) < iF || this.t.o(viewX) < iF) {
                        z1(tVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = iY - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View viewX2 = x(i5);
                if (this.t.e(viewX2) < iF || this.t.o(viewX2) < iF) {
                    z1(tVar, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int iY2 = y();
        if (!this.w) {
            for (int i7 = 0; i7 < iY2; i7++) {
                View viewX3 = x(i7);
                if (this.t.b(viewX3) > i6 || this.t.n(viewX3) > i6) {
                    z1(tVar, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = iY2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View viewX4 = x(i9);
            if (this.t.b(viewX4) > i6 || this.t.n(viewX4) > i6) {
                z1(tVar, i8, i9);
                return;
            }
        }
    }

    public final void z1(RecyclerView.t tVar, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                I0(i, tVar);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                I0(i3, tVar);
            }
        }
    }

    public LinearLayoutManager(int i, boolean z) {
        this.r = 1;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = true;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = null;
        this.C = new a();
        this.D = new b();
        this.E = 2;
        this.F = new int[2];
        D1(i);
        d(null);
        if (z == this.v) {
            return;
        }
        this.v = z;
        L0();
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.r = 1;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = true;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.B = null;
        this.C = new a();
        this.D = new b();
        this.E = 2;
        this.F = new int[2];
        RecyclerView.m.d dVarS = RecyclerView.m.S(context, attributeSet, i, i2);
        D1(dVarS.a);
        boolean z = dVarS.c;
        d(null);
        if (z != this.v) {
            this.v = z;
            L0();
        }
        E1(dVarS.d);
    }
}
