package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.jo;
import defpackage.qf;
import defpackage.sa;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean G;
    public int H;
    public int[] I;
    public View[] J;
    public final SparseIntArray K;
    public final SparseIntArray L;
    public c M;
    public final Rect N;

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int c(int i) {
            return 1;
        }
    }

    public static abstract class c {
        public final SparseIntArray a = new SparseIntArray();
        public final SparseIntArray b = new SparseIntArray();

        public int a(int i, int i2) {
            int iC = c(i);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int iC2 = c(i5);
                i3 += iC2;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = iC2;
                }
            }
            return i3 + iC > i2 ? i4 + 1 : i4;
        }

        public int b(int i, int i2) {
            int iC = c(i);
            if (iC == i2) {
                return 0;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i; i4++) {
                int iC2 = c(i4);
                i3 += iC2;
                if (i3 == i2) {
                    i3 = 0;
                } else if (i3 > i2) {
                    i3 = iC2;
                }
            }
            if (iC + i3 <= i2) {
                return i3;
            }
            return 0;
        }

        public abstract int c(int i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new a();
        this.N = new Rect();
        Q1(RecyclerView.m.S(context, attributeSet, i, i2).b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int A(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.r == 1) {
            return this.H;
        }
        if (xVar.b() < 1) {
            return 0;
        }
        return L1(tVar, xVar, xVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void E1(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        d(null);
        if (this.x) {
            this.x = false;
            L0();
        }
    }

    public final void I1(int i) {
        int i2;
        int[] iArr = this.I;
        int i3 = this.H;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.I = iArr;
    }

    public final void J1() {
        View[] viewArr = this.J;
        if (viewArr == null || viewArr.length != this.H) {
            this.J = new View[this.H];
        }
    }

    public int K1(int i, int i2) {
        if (this.r != 1 || !v1()) {
            int[] iArr = this.I;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.I;
        int i3 = this.H;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public final int L1(RecyclerView.t tVar, RecyclerView.x xVar, int i) {
        if (!xVar.g) {
            return this.M.a(i, this.H);
        }
        int iC = tVar.c(i);
        if (iC != -1) {
            return this.M.a(iC, this.H);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int M0(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        R1();
        J1();
        if (this.r == 1) {
            return 0;
        }
        return C1(i, tVar, xVar);
    }

    public final int M1(RecyclerView.t tVar, RecyclerView.x xVar, int i) {
        if (!xVar.g) {
            return this.M.b(i, this.H);
        }
        int i2 = this.L.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iC = tVar.c(i);
        if (iC != -1) {
            return this.M.b(iC, this.H);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    public final int N1(RecyclerView.t tVar, RecyclerView.x xVar, int i) {
        if (!xVar.g) {
            return this.M.c(i);
        }
        int i2 = this.K.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iC = tVar.c(i);
        if (iC != -1) {
            return this.M.c(iC);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int O0(int i, RecyclerView.t tVar, RecyclerView.x xVar) {
        R1();
        J1();
        if (this.r == 0) {
            return 0;
        }
        return C1(i, tVar, xVar);
    }

    public final void O1(View view, int i, boolean z) {
        int iZ;
        int iZ2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.b;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i3 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int iK1 = K1(bVar.e, bVar.f);
        if (this.r == 1) {
            iZ2 = RecyclerView.m.z(iK1, i, i3, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            iZ = RecyclerView.m.z(this.t.l(), this.o, i2, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int iZ3 = RecyclerView.m.z(iK1, i, i2, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int iZ4 = RecyclerView.m.z(this.t.l(), this.n, i3, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            iZ = iZ3;
            iZ2 = iZ4;
        }
        P1(view, iZ2, iZ, z);
    }

    public final void P1(View view, int i, int i2, boolean z) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        if (z ? W0(view, i, i2, nVar) : U0(view, i, i2, nVar)) {
            view.measure(i, i2);
        }
    }

    public void Q1(int i) {
        if (i == this.H) {
            return;
        }
        this.G = true;
        if (i < 1) {
            throw new IllegalArgumentException(jo.g("Span count should be at least 1. Provided ", i));
        }
        this.H = i;
        this.M.a.clear();
        L0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void R0(Rect rect, int i, int i2) {
        int iH;
        int iH2;
        if (this.I == null) {
            super.R0(rect, i, i2);
        }
        int iP = P() + O();
        int iN = N() + Q();
        if (this.r == 1) {
            iH2 = RecyclerView.m.h(i2, rect.height() + iN, L());
            int[] iArr = this.I;
            iH = RecyclerView.m.h(i, iArr[iArr.length - 1] + iP, M());
        } else {
            iH = RecyclerView.m.h(i, rect.width() + iP, M());
            int[] iArr2 = this.I;
            iH2 = RecyclerView.m.h(i2, iArr2[iArr2.length - 1] + iN, L());
        }
        this.b.setMeasuredDimension(iH, iH2);
    }

    public final void R1() {
        int iN;
        int iQ;
        if (this.r == 1) {
            iN = this.p - P();
            iQ = O();
        } else {
            iN = this.q - N();
            iQ = Q();
        }
        I1(iN - iQ);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public int T(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (this.r == 0) {
            return this.H;
        }
        if (xVar.b() < 1) {
            return 0;
        }
        return L1(tVar, xVar, xVar.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public boolean Z0() {
        return this.B == null && !this.G;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void b1(RecyclerView.x xVar, LinearLayoutManager.c cVar, RecyclerView.m.c cVar2) {
        int iC = this.H;
        for (int i = 0; i < this.H && cVar.b(xVar) && iC > 0; i++) {
            int i2 = cVar.d;
            ((qf.b) cVar2).a(i2, Math.max(0, cVar.g));
            iC -= this.M.c(i2);
            cVar.d += cVar.e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean g(RecyclerView.n nVar) {
        return nVar instanceof b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ca, code lost:
    
        if (r13 == (r2 > r15)) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f0  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View i0(android.view.View r23, int r24, androidx.recyclerview.widget.RecyclerView.t r25, androidx.recyclerview.widget.RecyclerView.x r26) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.i0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$t, androidx.recyclerview.widget.RecyclerView$x):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int l(RecyclerView.x xVar) {
        return d1(xVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int m(RecyclerView.x xVar) {
        return e1(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void n0(RecyclerView.t tVar, RecyclerView.x xVar, View view, sa saVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            m0(view, saVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iL1 = L1(tVar, xVar, bVar.a());
        if (this.r == 0) {
            saVar.t(sa.c.a(bVar.e, bVar.f, iL1, 1, false, false));
        } else {
            saVar.t(sa.c.a(iL1, 1, bVar.e, bVar.f, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int o(RecyclerView.x xVar) {
        return d1(xVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int p(RecyclerView.x xVar) {
        return e1(xVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void p0(RecyclerView recyclerView, int i, int i2) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void q0(RecyclerView recyclerView) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
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
            if (iR >= 0 && iR < i3 && M1(tVar, xVar, iR) == 0) {
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

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void r0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void s0(RecyclerView recyclerView, int i, int i2) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n u() {
        return this.r == 0 ? new b(-2, -1) : new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.M.a.clear();
        this.M.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n v(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void v0(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (xVar.g) {
            int iY = y();
            for (int i = 0; i < iY; i++) {
                b bVar = (b) x(i).getLayoutParams();
                int iA = bVar.a();
                this.K.put(iA, bVar.f);
                this.L.put(iA, bVar.e);
            }
        }
        super.v0(tVar, xVar);
        this.K.clear();
        this.L.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public RecyclerView.n w(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void w0(RecyclerView.x xVar) {
        this.B = null;
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.C.d();
        this.G = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0252  */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v27 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void w1(androidx.recyclerview.widget.RecyclerView.t r18, androidx.recyclerview.widget.RecyclerView.x r19, androidx.recyclerview.widget.LinearLayoutManager.c r20, androidx.recyclerview.widget.LinearLayoutManager.b r21) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.w1(androidx.recyclerview.widget.RecyclerView$t, androidx.recyclerview.widget.RecyclerView$x, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.LinearLayoutManager$b):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void x1(RecyclerView.t tVar, RecyclerView.x xVar, LinearLayoutManager.a aVar, int i) {
        R1();
        if (xVar.b() > 0 && !xVar.g) {
            boolean z = i == 1;
            int iM1 = M1(tVar, xVar, aVar.b);
            if (z) {
                while (iM1 > 0) {
                    int i2 = aVar.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    aVar.b = i3;
                    iM1 = M1(tVar, xVar, i3);
                }
            } else {
                int iB = xVar.b() - 1;
                int i4 = aVar.b;
                while (i4 < iB) {
                    int i5 = i4 + 1;
                    int iM12 = M1(tVar, xVar, i5);
                    if (iM12 <= iM1) {
                        break;
                    }
                    i4 = i5;
                    iM1 = iM12;
                }
                aVar.b = i4;
            }
        }
        J1();
    }

    public static class b extends RecyclerView.n {
        public int e;
        public int f;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.e = -1;
            this.f = 0;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.e = -1;
            this.f = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.e = -1;
            this.f = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.e = -1;
            this.f = 0;
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(i2, z);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new a();
        this.N = new Rect();
        Q1(i);
    }

    public GridLayoutManager(Context context, int i) {
        super(1, false);
        this.G = false;
        this.H = -1;
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new a();
        this.N = new Rect();
        Q1(i);
    }
}
