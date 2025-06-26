package androidx.gridlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.LogPrinter;
import android.util.Pair;
import android.util.Printer;
import android.view.View;
import android.view.ViewGroup;
import androidx.gridlayout.R$dimen;
import androidx.gridlayout.R$styleable;
import androidx.legacy.widget.Space;
import defpackage.ha;
import defpackage.jo;
import defpackage.rc;
import defpackage.sc;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class GridLayout extends ViewGroup {
    public static final h A;
    public static final h B;
    public static final h C;
    public static final h D;
    public static final h E;
    public static final h F;
    public static final h G;
    public static final Printer m = new LogPrinter(3, GridLayout.class.getName());
    public static final Printer n = new a();
    public static final int o = R$styleable.GridLayout_orientation;
    public static final int p = R$styleable.GridLayout_rowCount;
    public static final int q = R$styleable.GridLayout_columnCount;
    public static final int r = R$styleable.GridLayout_useDefaultMargins;
    public static final int s = R$styleable.GridLayout_alignmentMode;
    public static final int t = R$styleable.GridLayout_rowOrderPreserved;
    public static final int u = R$styleable.GridLayout_columnOrderPreserved;
    public static final h v = new b();
    public static final h w;
    public static final h x;
    public static final h y;
    public static final h z;
    public final k e;
    public final k f;
    public int g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public Printer l;

    public static class a implements Printer {
        @Override // android.util.Printer
        public void println(String str) {
        }
    }

    public static class b extends h {
        @Override // androidx.gridlayout.widget.GridLayout.h
        public int a(View view, int i, int i2) {
            return Integer.MIN_VALUE;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public String c() {
            return "UNDEFINED";
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int d(View view, int i) {
            return Integer.MIN_VALUE;
        }
    }

    public static class c extends h {
        @Override // androidx.gridlayout.widget.GridLayout.h
        public int a(View view, int i, int i2) {
            return 0;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public String c() {
            return "LEADING";
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int d(View view, int i) {
            return 0;
        }
    }

    public static class d extends h {
        @Override // androidx.gridlayout.widget.GridLayout.h
        public int a(View view, int i, int i2) {
            return i;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public String c() {
            return "TRAILING";
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int d(View view, int i) {
            return i;
        }
    }

    public static class e extends h {
        @Override // androidx.gridlayout.widget.GridLayout.h
        public int a(View view, int i, int i2) {
            return i >> 1;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public String c() {
            return "CENTER";
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int d(View view, int i) {
            return i >> 1;
        }
    }

    public static class f extends h {

        public class a extends l {
            public int d;

            public a(f fVar) {
            }

            @Override // androidx.gridlayout.widget.GridLayout.l
            public int a(GridLayout gridLayout, View view, h hVar, int i, boolean z) {
                return Math.max(0, this.a - hVar.a(view, i, gridLayout.getLayoutMode()));
            }

            @Override // androidx.gridlayout.widget.GridLayout.l
            public void b(int i, int i2) {
                this.a = Math.max(this.a, i);
                this.b = Math.max(this.b, i2);
                this.d = Math.max(this.d, i + i2);
            }

            @Override // androidx.gridlayout.widget.GridLayout.l
            public void c() {
                super.c();
                this.d = Integer.MIN_VALUE;
            }

            @Override // androidx.gridlayout.widget.GridLayout.l
            public int d(boolean z) {
                return Math.max(super.d(z), this.d);
            }
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int a(View view, int i, int i2) {
            if (view.getVisibility() == 8) {
                return 0;
            }
            int baseline = view.getBaseline();
            if (baseline == -1) {
                return Integer.MIN_VALUE;
            }
            return baseline;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public l b() {
            return new a(this);
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public String c() {
            return "BASELINE";
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int d(View view, int i) {
            return 0;
        }
    }

    public static class g extends h {
        @Override // androidx.gridlayout.widget.GridLayout.h
        public int a(View view, int i, int i2) {
            return Integer.MIN_VALUE;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public String c() {
            return "FILL";
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int d(View view, int i) {
            return 0;
        }

        @Override // androidx.gridlayout.widget.GridLayout.h
        public int e(View view, int i, int i2) {
            return i2;
        }
    }

    public static abstract class h {
        public abstract int a(View view, int i, int i2);

        public l b() {
            return new l();
        }

        public abstract String c();

        public abstract int d(View view, int i);

        public int e(View view, int i, int i2) {
            return i;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Alignment:");
            sbZ.append(c());
            return sbZ.toString();
        }
    }

    public static final class i {
        public final m a;
        public final o b;
        public boolean c = true;

        public i(m mVar, o oVar) {
            this.a = mVar;
            this.b = oVar;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.a);
            sb.append(StringUtils.SPACE);
            sb.append(!this.c ? "+>" : "->");
            sb.append(StringUtils.SPACE);
            sb.append(this.b);
            return sb.toString();
        }
    }

    public static final class j<K, V> extends ArrayList<Pair<K, V>> {
        public final Class<K> e;
        public final Class<V> f;

        public j(Class<K> cls, Class<V> cls2) {
            this.e = cls;
            this.f = cls2;
        }

        public p<K, V> d() {
            int size = size();
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.e, size);
            Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) this.f, size);
            for (int i = 0; i < size; i++) {
                objArr[i] = get(i).first;
                objArr2[i] = get(i).second;
            }
            return new p<>(objArr, objArr2);
        }
    }

    public final class k {
        public final boolean a;
        public p<q, l> d;
        public p<m, o> f;
        public p<m, o> h;
        public int[] j;
        public int[] l;
        public i[] n;
        public int[] p;
        public boolean r;
        public int[] t;
        public int b = Integer.MIN_VALUE;
        public int c = Integer.MIN_VALUE;
        public boolean e = false;
        public boolean g = false;
        public boolean i = false;
        public boolean k = false;
        public boolean m = false;
        public boolean o = false;
        public boolean q = false;
        public boolean s = false;
        public boolean u = true;
        public o v = new o(0);
        public o w = new o(-100000);

        public k(boolean z) {
            this.a = z;
        }

        public final void a(List<i> list, p<m, o> pVar) {
            int i = 0;
            while (true) {
                m[] mVarArr = pVar.b;
                if (i >= mVarArr.length) {
                    return;
                }
                o(list, mVarArr[i], pVar.c[i], false);
                i++;
            }
        }

        public final String b(List<i> list) {
            String str = this.a ? "x" : "y";
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (i iVar : list) {
                if (z) {
                    z = false;
                } else {
                    sb.append(", ");
                }
                m mVar = iVar.a;
                int i = mVar.a;
                int i2 = mVar.b;
                int i3 = iVar.b.a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                if (i < i2) {
                    sb2.append(i2);
                    sb2.append("-");
                    sb2.append(str);
                    sb2.append(i);
                    sb2.append(">=");
                } else {
                    sb2.append(i);
                    sb2.append("-");
                    sb2.append(str);
                    sb2.append(i2);
                    sb2.append("<=");
                    i3 = -i3;
                }
                sb2.append(i3);
                sb.append(sb2.toString());
            }
            return sb.toString();
        }

        public final void c(p<m, o> pVar, boolean z) {
            for (o oVar : pVar.c) {
                oVar.a = Integer.MIN_VALUE;
            }
            l[] lVarArr = j().c;
            for (int i = 0; i < lVarArr.length; i++) {
                int iD = lVarArr[i].d(z);
                o oVarB = pVar.b(i);
                int i2 = oVarB.a;
                if (!z) {
                    iD = -iD;
                }
                oVarB.a = Math.max(i2, iD);
            }
        }

        public final void d(boolean z) {
            int[] iArr = z ? this.j : this.l;
            int childCount = GridLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = GridLayout.this.getChildAt(i);
                if (childAt.getVisibility() != 8) {
                    n nVarG = GridLayout.this.g(childAt);
                    boolean z2 = this.a;
                    m mVar = (z2 ? nVarG.b : nVarG.a).b;
                    int i2 = z ? mVar.a : mVar.b;
                    iArr[i2] = Math.max(iArr[i2], GridLayout.this.i(childAt, z2, z));
                }
            }
        }

        public final p<m, o> e(boolean z) {
            m mVar;
            j jVar = new j(m.class, o.class);
            q[] qVarArr = j().b;
            int length = qVarArr.length;
            for (int i = 0; i < length; i++) {
                if (z) {
                    mVar = qVarArr[i].b;
                } else {
                    m mVar2 = qVarArr[i].b;
                    mVar = new m(mVar2.b, mVar2.a);
                }
                jVar.add(Pair.create(mVar, new o()));
            }
            return jVar.d();
        }

        public i[] f() {
            if (this.n == null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                a(arrayList, i());
                a(arrayList2, g());
                if (this.u) {
                    int i = 0;
                    while (i < h()) {
                        int i2 = i + 1;
                        o(arrayList, new m(i, i2), new o(0), true);
                        i = i2;
                    }
                }
                int iH = h();
                o(arrayList, new m(0, iH), this.v, false);
                o(arrayList2, new m(iH, 0), this.w, false);
                i[] iVarArrV = v(arrayList);
                i[] iVarArrV2 = v(arrayList2);
                Printer printer = GridLayout.m;
                Object[] objArr = (Object[]) Array.newInstance(iVarArrV.getClass().getComponentType(), iVarArrV.length + iVarArrV2.length);
                System.arraycopy(iVarArrV, 0, objArr, 0, iVarArrV.length);
                System.arraycopy(iVarArrV2, 0, objArr, iVarArrV.length, iVarArrV2.length);
                this.n = (i[]) objArr;
            }
            if (!this.o) {
                i();
                g();
                this.o = true;
            }
            return this.n;
        }

        public final p<m, o> g() {
            if (this.h == null) {
                this.h = e(false);
            }
            if (!this.i) {
                c(this.h, false);
                this.i = true;
            }
            return this.h;
        }

        public int h() {
            return Math.max(this.b, l());
        }

        public final p<m, o> i() {
            if (this.f == null) {
                this.f = e(true);
            }
            if (!this.g) {
                c(this.f, true);
                this.g = true;
            }
            return this.f;
        }

        public p<q, l> j() {
            int i;
            if (this.d == null) {
                j jVar = new j(q.class, l.class);
                int childCount = GridLayout.this.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    n nVarG = GridLayout.this.g(GridLayout.this.getChildAt(i2));
                    boolean z = this.a;
                    q qVar = z ? nVarG.b : nVarG.a;
                    jVar.add(Pair.create(qVar, qVar.a(z).b()));
                }
                this.d = jVar.d();
            }
            if (!this.e) {
                for (l lVar : this.d.c) {
                    lVar.c();
                }
                int childCount2 = GridLayout.this.getChildCount();
                for (int i3 = 0; i3 < childCount2; i3++) {
                    View childAt = GridLayout.this.getChildAt(i3);
                    n nVarG2 = GridLayout.this.g(childAt);
                    boolean z2 = this.a;
                    q qVar2 = z2 ? nVarG2.b : nVarG2.a;
                    GridLayout gridLayout = GridLayout.this;
                    Objects.requireNonNull(gridLayout);
                    int iK = childAt.getVisibility() == 8 ? 0 : gridLayout.k(childAt, z2) + (z2 ? childAt.getMeasuredWidth() : childAt.getMeasuredHeight());
                    if (qVar2.d == 0.0f) {
                        i = 0;
                    } else {
                        if (this.t == null) {
                            this.t = new int[GridLayout.this.getChildCount()];
                        }
                        i = this.t[i3];
                    }
                    int i4 = iK + i;
                    l lVarB = this.d.b(i3);
                    GridLayout gridLayout2 = GridLayout.this;
                    lVarB.c = ((qVar2.c == GridLayout.v && qVar2.d == 0.0f) ? 0 : 2) & lVarB.c;
                    int iA = qVar2.a(this.a).a(childAt, i4, gridLayout2.getLayoutMode());
                    lVarB.b(iA, i4 - iA);
                }
                this.e = true;
            }
            return this.d;
        }

        public int[] k() {
            boolean z;
            if (this.p == null) {
                this.p = new int[h() + 1];
            }
            if (!this.q) {
                int[] iArr = this.p;
                float f = 0.0f;
                if (!this.s) {
                    int childCount = GridLayout.this.getChildCount();
                    int i = 0;
                    while (true) {
                        if (i >= childCount) {
                            z = false;
                            break;
                        }
                        View childAt = GridLayout.this.getChildAt(i);
                        if (childAt.getVisibility() != 8) {
                            n nVarG = GridLayout.this.g(childAt);
                            if ((this.a ? nVarG.b : nVarG.a).d != 0.0f) {
                                z = true;
                                break;
                            }
                        }
                        i++;
                    }
                    this.r = z;
                    this.s = true;
                }
                if (this.r) {
                    if (this.t == null) {
                        this.t = new int[GridLayout.this.getChildCount()];
                    }
                    Arrays.fill(this.t, 0);
                    u(f(), iArr, true);
                    int childCount2 = (GridLayout.this.getChildCount() * this.v.a) + 1;
                    if (childCount2 >= 2) {
                        int childCount3 = GridLayout.this.getChildCount();
                        for (int i2 = 0; i2 < childCount3; i2++) {
                            View childAt2 = GridLayout.this.getChildAt(i2);
                            if (childAt2.getVisibility() != 8) {
                                n nVarG2 = GridLayout.this.g(childAt2);
                                f += (this.a ? nVarG2.b : nVarG2.a).d;
                            }
                        }
                        int i3 = -1;
                        int i4 = 0;
                        boolean zU = true;
                        while (i4 < childCount2) {
                            int i5 = (int) ((i4 + childCount2) / 2);
                            q();
                            t(i5, f);
                            zU = u(f(), iArr, false);
                            if (zU) {
                                i4 = i5 + 1;
                                i3 = i5;
                            } else {
                                childCount2 = i5;
                            }
                        }
                        if (i3 > 0 && !zU) {
                            q();
                            t(i3, f);
                            u(f(), iArr, true);
                        }
                    }
                } else {
                    u(f(), iArr, true);
                }
                if (!this.u) {
                    int i6 = iArr[0];
                    int length = iArr.length;
                    for (int i7 = 0; i7 < length; i7++) {
                        iArr[i7] = iArr[i7] - i6;
                    }
                }
                this.q = true;
            }
            return this.p;
        }

        public final int l() {
            if (this.c == Integer.MIN_VALUE) {
                int childCount = GridLayout.this.getChildCount();
                int iMax = -1;
                for (int i = 0; i < childCount; i++) {
                    n nVarG = GridLayout.this.g(GridLayout.this.getChildAt(i));
                    m mVar = (this.a ? nVarG.b : nVarG.a).b;
                    iMax = Math.max(Math.max(Math.max(iMax, mVar.a), mVar.b), mVar.a());
                }
                this.c = Math.max(0, iMax != -1 ? iMax : Integer.MIN_VALUE);
            }
            return this.c;
        }

        public int m(int i) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode == Integer.MIN_VALUE) {
                return n(0, size);
            }
            if (mode == 0) {
                return n(0, 100000);
            }
            if (mode != 1073741824) {
                return 0;
            }
            return n(size, size);
        }

        public final int n(int i, int i2) {
            this.v.a = i;
            this.w.a = -i2;
            this.q = false;
            return k()[h()];
        }

        public final void o(List<i> list, m mVar, o oVar, boolean z) {
            if (mVar.a() == 0) {
                return;
            }
            if (z) {
                Iterator<i> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().a.equals(mVar)) {
                        return;
                    }
                }
            }
            list.add(new i(mVar, oVar));
        }

        public void p() {
            this.c = Integer.MIN_VALUE;
            this.d = null;
            this.f = null;
            this.h = null;
            this.j = null;
            this.l = null;
            this.n = null;
            this.p = null;
            this.t = null;
            this.s = false;
            q();
        }

        public void q() {
            this.e = false;
            this.g = false;
            this.i = false;
            this.k = false;
            this.m = false;
            this.o = false;
            this.q = false;
        }

        public final boolean r(int[] iArr, i iVar) {
            if (!iVar.c) {
                return false;
            }
            m mVar = iVar.a;
            int i = mVar.a;
            int i2 = mVar.b;
            int i3 = iArr[i] + iVar.b.a;
            if (i3 <= iArr[i2]) {
                return false;
            }
            iArr[i2] = i3;
            return true;
        }

        public void s(int i) {
            if (i == Integer.MIN_VALUE || i >= l()) {
                this.b = i;
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.a ? "column" : "row");
            sb.append("Count must be greater than or equal to the maximum of all grid indices ");
            sb.append("(and spans) defined in the LayoutParams of each child");
            GridLayout.l(sb.toString());
            throw null;
        }

        public final void t(int i, float f) {
            Arrays.fill(this.t, 0);
            int childCount = GridLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = GridLayout.this.getChildAt(i2);
                if (childAt.getVisibility() != 8) {
                    n nVarG = GridLayout.this.g(childAt);
                    float f2 = (this.a ? nVarG.b : nVarG.a).d;
                    if (f2 != 0.0f) {
                        int iRound = Math.round((i * f2) / f);
                        this.t[i2] = iRound;
                        i -= iRound;
                        f -= f2;
                    }
                }
            }
        }

        public final boolean u(i[] iVarArr, int[] iArr, boolean z) {
            String str = this.a ? "horizontal" : "vertical";
            int iH = h() + 1;
            boolean[] zArr = null;
            for (int i = 0; i < iVarArr.length; i++) {
                Arrays.fill(iArr, 0);
                for (int i2 = 0; i2 < iH; i2++) {
                    boolean zR = false;
                    for (i iVar : iVarArr) {
                        zR |= r(iArr, iVar);
                    }
                    if (!zR) {
                        if (zArr != null) {
                            ArrayList arrayList = new ArrayList();
                            ArrayList arrayList2 = new ArrayList();
                            for (int i3 = 0; i3 < iVarArr.length; i3++) {
                                i iVar2 = iVarArr[i3];
                                if (zArr[i3]) {
                                    arrayList.add(iVar2);
                                }
                                if (!iVar2.c) {
                                    arrayList2.add(iVar2);
                                }
                            }
                            Printer printer = GridLayout.this.l;
                            StringBuilder sbB = jo.B(str, " constraints: ");
                            sbB.append(b(arrayList));
                            sbB.append(" are inconsistent; permanently removing: ");
                            sbB.append(b(arrayList2));
                            sbB.append(". ");
                            printer.println(sbB.toString());
                        }
                        return true;
                    }
                }
                if (!z) {
                    return false;
                }
                boolean[] zArr2 = new boolean[iVarArr.length];
                for (int i4 = 0; i4 < iH; i4++) {
                    int length = iVarArr.length;
                    for (int i5 = 0; i5 < length; i5++) {
                        zArr2[i5] = zArr2[i5] | r(iArr, iVarArr[i5]);
                    }
                }
                if (i == 0) {
                    zArr = zArr2;
                }
                int i6 = 0;
                while (true) {
                    if (i6 >= iVarArr.length) {
                        break;
                    }
                    if (zArr2[i6]) {
                        i iVar3 = iVarArr[i6];
                        m mVar = iVar3.a;
                        if (mVar.a >= mVar.b) {
                            iVar3.c = false;
                            break;
                        }
                    }
                    i6++;
                }
            }
            return true;
        }

        public final i[] v(List<i> list) {
            sc scVar = new sc(this, (i[]) list.toArray(new i[list.size()]));
            int length = scVar.c.length;
            for (int i = 0; i < length; i++) {
                scVar.a(i);
            }
            return scVar.a;
        }
    }

    public static class l {
        public int a;
        public int b;
        public int c;

        public l() {
            c();
        }

        public int a(GridLayout gridLayout, View view, h hVar, int i, boolean z) {
            return this.a - hVar.a(view, i, gridLayout.getLayoutMode());
        }

        public void b(int i, int i2) {
            this.a = Math.max(this.a, i);
            this.b = Math.max(this.b, i2);
        }

        public void c() {
            this.a = Integer.MIN_VALUE;
            this.b = Integer.MIN_VALUE;
            this.c = 2;
        }

        public int d(boolean z) {
            if (!z) {
                int i = this.c;
                Printer printer = GridLayout.m;
                if ((i & 2) != 0) {
                    return 100000;
                }
            }
            return this.a + this.b;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Bounds{before=");
            sbZ.append(this.a);
            sbZ.append(", after=");
            sbZ.append(this.b);
            sbZ.append('}');
            return sbZ.toString();
        }
    }

    public static final class m {
        public final int a;
        public final int b;

        public m(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public int a() {
            return this.b - this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || m.class != obj.getClass()) {
                return false;
            }
            m mVar = (m) obj;
            return this.b == mVar.b && this.a == mVar.a;
        }

        public int hashCode() {
            return (this.a * 31) + this.b;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("[");
            sbZ.append(this.a);
            sbZ.append(", ");
            return jo.q(sbZ, this.b, "]");
        }
    }

    public static final class p<K, V> {
        public final int[] a;
        public final K[] b;
        public final V[] c;

        public p(K[] kArr, V[] vArr) {
            int length = kArr.length;
            int[] iArr = new int[length];
            HashMap map = new HashMap();
            for (int i = 0; i < length; i++) {
                K k = kArr[i];
                Integer numValueOf = (Integer) map.get(k);
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(map.size());
                    map.put(k, numValueOf);
                }
                iArr[i] = numValueOf.intValue();
            }
            this.a = iArr;
            this.b = (K[]) a(kArr, iArr);
            this.c = (V[]) a(vArr, iArr);
        }

        public static <K> K[] a(K[] kArr, int[] iArr) {
            int length = kArr.length;
            Class<?> componentType = kArr.getClass().getComponentType();
            Printer printer = GridLayout.m;
            int iMax = -1;
            for (int i : iArr) {
                iMax = Math.max(iMax, i);
            }
            K[] kArr2 = (K[]) ((Object[]) Array.newInstance(componentType, iMax + 1));
            for (int i2 = 0; i2 < length; i2++) {
                kArr2[iArr[i2]] = kArr[i2];
            }
            return kArr2;
        }

        public V b(int i) {
            return this.c[this.a[i]];
        }
    }

    static {
        c cVar = new c();
        w = cVar;
        d dVar = new d();
        x = dVar;
        y = cVar;
        z = dVar;
        A = cVar;
        B = dVar;
        C = new rc(cVar, dVar);
        D = new rc(dVar, cVar);
        E = new e();
        F = new f();
        G = new g();
    }

    public GridLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e = new k(true);
        this.f = new k(false);
        this.g = 0;
        this.h = false;
        this.i = 1;
        this.k = 0;
        this.l = m;
        this.j = context.getResources().getDimensionPixelOffset(R$dimen.default_gap);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.GridLayout);
        try {
            setRowCount(typedArrayObtainStyledAttributes.getInt(p, Integer.MIN_VALUE));
            setColumnCount(typedArrayObtainStyledAttributes.getInt(q, Integer.MIN_VALUE));
            setOrientation(typedArrayObtainStyledAttributes.getInt(o, 0));
            setUseDefaultMargins(typedArrayObtainStyledAttributes.getBoolean(r, false));
            setAlignmentMode(typedArrayObtainStyledAttributes.getInt(s, 1));
            setRowOrderPreserved(typedArrayObtainStyledAttributes.getBoolean(t, true));
            setColumnOrderPreserved(typedArrayObtainStyledAttributes.getBoolean(u, true));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static h d(int i2, boolean z2) {
        int i3 = (i2 & (z2 ? 7 : 112)) >> (z2 ? 0 : 4);
        return i3 != 1 ? i3 != 3 ? i3 != 5 ? i3 != 7 ? i3 != 8388611 ? i3 != 8388613 ? v : B : A : G : z2 ? D : z : z2 ? C : y : E;
    }

    public static void l(String str) {
        throw new IllegalArgumentException(jo.n(str, ". "));
    }

    public static void p(n nVar, int i2, int i3, int i4, int i5) {
        m mVar = new m(i2, i3 + i2);
        q qVar = nVar.a;
        nVar.a = new q(qVar.a, mVar, qVar.c, qVar.d);
        m mVar2 = new m(i4, i5 + i4);
        q qVar2 = nVar.b;
        nVar.b = new q(qVar2.a, mVar2, qVar2.c, qVar2.d);
    }

    public static q q(int i2, int i3, h hVar, float f2) {
        return new q(i2 != Integer.MIN_VALUE, i2, i3, hVar, f2);
    }

    public final void a(n nVar, boolean z2) {
        String str = z2 ? "column" : "row";
        m mVar = (z2 ? nVar.b : nVar.a).b;
        int i2 = mVar.a;
        if (i2 != Integer.MIN_VALUE && i2 < 0) {
            l(str + " indices must be positive");
            throw null;
        }
        int i3 = (z2 ? this.e : this.f).b;
        if (i3 != Integer.MIN_VALUE) {
            if (mVar.b > i3) {
                l(str + " indices (start + span) mustn't exceed the " + str + " count");
                throw null;
            }
            if (mVar.a() <= i3) {
                return;
            }
            l(str + " span mustn't exceed the " + str + " count");
            throw null;
        }
    }

    public final int b() {
        int childCount = getChildCount();
        int iHashCode = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                iHashCode = ((n) childAt.getLayoutParams()).hashCode() + (iHashCode * 31);
            }
        }
        return iHashCode;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0093 A[EDGE_INSN: B:68:0x0093->B:55:0x0093 BREAK  A[LOOP:1: B:39:0x0071->B:73:0x0071], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.gridlayout.widget.GridLayout.c():void");
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof n)) {
            return false;
        }
        n nVar = (n) layoutParams;
        a(nVar, true);
        a(nVar, false);
        return true;
    }

    public final int e(View view) {
        if (view.getClass() == Space.class || view.getClass() == android.widget.Space.class) {
            return 0;
        }
        return this.j / 2;
    }

    public final int f(View view, boolean z2, boolean z3) {
        return e(view);
    }

    public final n g(View view) {
        return (n) view.getLayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new n();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new n(getContext(), attributeSet);
    }

    public int getAlignmentMode() {
        return this.i;
    }

    public int getColumnCount() {
        return this.e.h();
    }

    public int getOrientation() {
        return this.g;
    }

    public Printer getPrinter() {
        return this.l;
    }

    public int getRowCount() {
        return this.f.h();
    }

    public boolean getUseDefaultMargins() {
        return this.h;
    }

    public final int h(View view, boolean z2, boolean z3) {
        int[] iArr;
        if (this.i == 1) {
            return i(view, z2, z3);
        }
        k kVar = z2 ? this.e : this.f;
        if (z3) {
            if (kVar.j == null) {
                kVar.j = new int[kVar.h() + 1];
            }
            if (!kVar.k) {
                kVar.d(true);
                kVar.k = true;
            }
            iArr = kVar.j;
        } else {
            if (kVar.l == null) {
                kVar.l = new int[kVar.h() + 1];
            }
            if (!kVar.m) {
                kVar.d(false);
                kVar.m = true;
            }
            iArr = kVar.l;
        }
        n nVarG = g(view);
        m mVar = (z2 ? nVarG.b : nVarG.a).b;
        return iArr[z3 ? mVar.a : mVar.b];
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int i(android.view.View r6, boolean r7, boolean r8) {
        /*
            r5 = this;
            androidx.gridlayout.widget.GridLayout$n r0 = r5.g(r6)
            if (r7 == 0) goto Le
            if (r8 == 0) goto Lb
            int r1 = r0.leftMargin
            goto L15
        Lb:
            int r1 = r0.rightMargin
            goto L15
        Le:
            if (r8 == 0) goto L13
            int r1 = r0.topMargin
            goto L15
        L13:
            int r1 = r0.bottomMargin
        L15:
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 != r2) goto L54
            boolean r1 = r5.h
            r2 = 0
            if (r1 != 0) goto L20
            r1 = 0
            goto L54
        L20:
            if (r7 == 0) goto L25
            androidx.gridlayout.widget.GridLayout$q r0 = r0.b
            goto L27
        L25:
            androidx.gridlayout.widget.GridLayout$q r0 = r0.a
        L27:
            if (r7 == 0) goto L2c
            androidx.gridlayout.widget.GridLayout$k r1 = r5.e
            goto L2e
        L2c:
            androidx.gridlayout.widget.GridLayout$k r1 = r5.f
        L2e:
            androidx.gridlayout.widget.GridLayout$m r0 = r0.b
            r3 = 1
            if (r7 == 0) goto L44
            java.util.concurrent.atomic.AtomicInteger r4 = defpackage.ha.a
            int r4 = r5.getLayoutDirection()
            if (r4 != r3) goto L3d
            r4 = 1
            goto L3e
        L3d:
            r4 = 0
        L3e:
            if (r4 == 0) goto L44
            if (r8 != 0) goto L45
            r2 = 1
            goto L45
        L44:
            r2 = r8
        L45:
            if (r2 == 0) goto L4a
            int r0 = r0.a
            goto L4f
        L4a:
            int r0 = r0.b
            r1.h()
        L4f:
            int r6 = r5.f(r6, r7, r8)
            r1 = r6
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.gridlayout.widget.GridLayout.i(android.view.View, boolean, boolean):int");
    }

    public final int j(View view, boolean z2) {
        return z2 ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    public final int k(View view, boolean z2) {
        return h(view, z2, false) + h(view, z2, true);
    }

    public final void m() {
        this.k = 0;
        k kVar = this.e;
        if (kVar != null) {
            kVar.p();
        }
        k kVar2 = this.f;
        if (kVar2 != null) {
            kVar2.p();
        }
        k kVar3 = this.e;
        if (kVar3 == null || this.f == null) {
            return;
        }
        kVar3.q();
        this.f.q();
    }

    public final void n(View view, int i2, int i3, int i4, int i5) {
        view.measure(ViewGroup.getChildMeasureSpec(i2, k(view, true), i4), ViewGroup.getChildMeasureSpec(i3, k(view, false), i5));
    }

    public final void o(int i2, int i3, boolean z2) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                n nVarG = g(childAt);
                if (z2) {
                    n(childAt, i2, i3, ((ViewGroup.MarginLayoutParams) nVarG).width, ((ViewGroup.MarginLayoutParams) nVarG).height);
                } else {
                    boolean z3 = this.g == 0;
                    q qVar = z3 ? nVarG.b : nVarG.a;
                    if (qVar.a(z3) == G) {
                        m mVar = qVar.b;
                        int[] iArrK = (z3 ? this.e : this.f).k();
                        int iK = (iArrK[mVar.b] - iArrK[mVar.a]) - k(childAt, z3);
                        if (z3) {
                            n(childAt, i2, i3, iK, ((ViewGroup.MarginLayoutParams) nVarG).height);
                        } else {
                            n(childAt, i2, i3, ((ViewGroup.MarginLayoutParams) nVarG).width, iK);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int[] iArr;
        GridLayout gridLayout = this;
        c();
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        k kVar = gridLayout.e;
        int i7 = (i6 - paddingLeft) - paddingRight;
        kVar.v.a = i7;
        kVar.w.a = -i7;
        boolean z3 = false;
        kVar.q = false;
        kVar.k();
        k kVar2 = gridLayout.f;
        int i8 = ((i5 - i3) - paddingTop) - paddingBottom;
        kVar2.v.a = i8;
        kVar2.w.a = -i8;
        kVar2.q = false;
        kVar2.k();
        int[] iArrK = gridLayout.e.k();
        int[] iArrK2 = gridLayout.f.k();
        int childCount = getChildCount();
        int i9 = 0;
        while (i9 < childCount) {
            View childAt = gridLayout.getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                iArr = iArrK;
            } else {
                n nVarG = gridLayout.g(childAt);
                q qVar = nVarG.b;
                q qVar2 = nVarG.a;
                m mVar = qVar.b;
                m mVar2 = qVar2.b;
                int i10 = iArrK[mVar.a];
                int i11 = iArrK2[mVar2.a];
                int i12 = iArrK[mVar.b] - i10;
                int i13 = iArrK2[mVar2.b] - i11;
                int iJ = gridLayout.j(childAt, true);
                int iJ2 = gridLayout.j(childAt, z3);
                h hVarA = qVar.a(true);
                h hVarA2 = qVar2.a(z3);
                l lVarB = gridLayout.e.j().b(i9);
                l lVarB2 = gridLayout.f.j().b(i9);
                iArr = iArrK;
                int iD = hVarA.d(childAt, i12 - lVarB.d(true));
                int iD2 = hVarA2.d(childAt, i13 - lVarB2.d(true));
                int iH = gridLayout.h(childAt, true, true);
                int iH2 = gridLayout.h(childAt, false, true);
                int iH3 = gridLayout.h(childAt, true, false);
                int i14 = iH + iH3;
                int iH4 = iH2 + gridLayout.h(childAt, false, false);
                int iA = lVarB.a(this, childAt, hVarA, iJ + i14, true);
                int iA2 = lVarB2.a(this, childAt, hVarA2, iJ2 + iH4, false);
                int iE = hVarA.e(childAt, iJ, i12 - i14);
                int iE2 = hVarA2.e(childAt, iJ2, i13 - iH4);
                int i15 = i10 + iD + iA;
                AtomicInteger atomicInteger = ha.a;
                int i16 = !(getLayoutDirection() == 1) ? paddingLeft + iH + i15 : (((i6 - iE) - paddingRight) - iH3) - i15;
                int i17 = paddingTop + i11 + iD2 + iA2 + iH2;
                if (iE != childAt.getMeasuredWidth() || iE2 != childAt.getMeasuredHeight()) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(iE, 1073741824), View.MeasureSpec.makeMeasureSpec(iE2, 1073741824));
                }
                childAt.layout(i16, i17, iE + i16, iE2 + i17);
            }
            i9++;
            gridLayout = this;
            iArrK = iArr;
            z3 = false;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int iM;
        int iM2;
        c();
        k kVar = this.e;
        if (kVar != null && this.f != null) {
            kVar.q();
            this.f.q();
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize((-paddingRight) + i2), View.MeasureSpec.getMode(i2));
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize((-paddingBottom) + i3), View.MeasureSpec.getMode(i3));
        o(iMakeMeasureSpec, iMakeMeasureSpec2, true);
        if (this.g == 0) {
            iM = this.e.m(iMakeMeasureSpec);
            o(iMakeMeasureSpec, iMakeMeasureSpec2, false);
            iM2 = this.f.m(iMakeMeasureSpec2);
        } else {
            int iM3 = this.f.m(iMakeMeasureSpec2);
            o(iMakeMeasureSpec, iMakeMeasureSpec2, false);
            iM = this.e.m(iMakeMeasureSpec);
            iM2 = iM3;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iM + paddingRight, getSuggestedMinimumWidth()), i2, 0), View.resolveSizeAndState(Math.max(iM2 + paddingBottom, getSuggestedMinimumHeight()), i3, 0));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        m();
    }

    public void setAlignmentMode(int i2) {
        this.i = i2;
        requestLayout();
    }

    public void setColumnCount(int i2) {
        this.e.s(i2);
        m();
        requestLayout();
    }

    public void setColumnOrderPreserved(boolean z2) {
        k kVar = this.e;
        kVar.u = z2;
        kVar.p();
        m();
        requestLayout();
    }

    public void setOrientation(int i2) {
        if (this.g != i2) {
            this.g = i2;
            m();
            requestLayout();
        }
    }

    public void setPrinter(Printer printer) {
        if (printer == null) {
            printer = n;
        }
        this.l = printer;
    }

    public void setRowCount(int i2) {
        this.f.s(i2);
        m();
        requestLayout();
    }

    public void setRowOrderPreserved(boolean z2) {
        k kVar = this.f;
        kVar.u = z2;
        kVar.p();
        m();
        requestLayout();
    }

    public void setUseDefaultMargins(boolean z2) {
        this.h = z2;
        requestLayout();
    }

    public static final class o {
        public int a;

        public o() {
            this.a = Integer.MIN_VALUE;
        }

        public String toString() {
            return Integer.toString(this.a);
        }

        public o(int i) {
            this.a = i;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof n ? new n((n) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new n((ViewGroup.MarginLayoutParams) layoutParams) : new n(layoutParams);
    }

    public static class q {
        public static final q e = GridLayout.q(Integer.MIN_VALUE, 1, GridLayout.v, 0.0f);
        public final boolean a;
        public final m b;
        public final h c;
        public final float d;

        public q(boolean z, m mVar, h hVar, float f) {
            this.a = z;
            this.b = mVar;
            this.c = hVar;
            this.d = f;
        }

        public h a(boolean z) {
            h hVar = this.c;
            return hVar != GridLayout.v ? hVar : this.d == 0.0f ? z ? GridLayout.A : GridLayout.F : GridLayout.G;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || q.class != obj.getClass()) {
                return false;
            }
            q qVar = (q) obj;
            return this.c.equals(qVar.c) && this.b.equals(qVar.b);
        }

        public int hashCode() {
            return this.c.hashCode() + (this.b.hashCode() * 31);
        }

        public q(boolean z, int i, int i2, h hVar, float f) {
            m mVar = new m(i, i2 + i);
            this.a = z;
            this.b = mVar;
            this.c = hVar;
            this.d = f;
        }
    }

    public static class n extends ViewGroup.MarginLayoutParams {
        public static final m c;
        public static final int d;
        public static final int e;
        public static final int f;
        public static final int g;
        public static final int h;
        public static final int i;
        public static final int j;
        public static final int k;
        public static final int l;
        public static final int m;
        public static final int n;
        public static final int o;
        public static final int p;
        public q a;
        public q b;

        static {
            m mVar = new m(Integer.MIN_VALUE, -2147483647);
            c = mVar;
            d = mVar.a();
            e = R$styleable.GridLayout_Layout_android_layout_margin;
            f = R$styleable.GridLayout_Layout_android_layout_marginLeft;
            g = R$styleable.GridLayout_Layout_android_layout_marginTop;
            h = R$styleable.GridLayout_Layout_android_layout_marginRight;
            i = R$styleable.GridLayout_Layout_android_layout_marginBottom;
            j = R$styleable.GridLayout_Layout_layout_column;
            k = R$styleable.GridLayout_Layout_layout_columnSpan;
            l = R$styleable.GridLayout_Layout_layout_columnWeight;
            m = R$styleable.GridLayout_Layout_layout_row;
            n = R$styleable.GridLayout_Layout_layout_rowSpan;
            o = R$styleable.GridLayout_Layout_layout_rowWeight;
            p = R$styleable.GridLayout_Layout_layout_gravity;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n() {
            super(-2, -2);
            q qVar = q.e;
            this.a = qVar;
            this.b = qVar;
            setMargins(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.a = qVar;
            this.b = qVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || n.class != obj.getClass()) {
                return false;
            }
            n nVar = (n) obj;
            return this.b.equals(nVar.b) && this.a.equals(nVar.a);
        }

        public int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i2, int i3) {
            ((ViewGroup.MarginLayoutParams) this).width = typedArray.getLayoutDimension(i2, -2);
            ((ViewGroup.MarginLayoutParams) this).height = typedArray.getLayoutDimension(i3, -2);
        }

        public n(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            q qVar = q.e;
            this.a = qVar;
            this.b = qVar;
        }

        public n(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            q qVar = q.e;
            this.a = qVar;
            this.b = qVar;
        }

        public n(n nVar) {
            super((ViewGroup.MarginLayoutParams) nVar);
            q qVar = q.e;
            this.a = qVar;
            this.b = qVar;
            this.a = nVar.a;
            this.b = nVar.b;
        }

        public n(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            q qVar = q.e;
            this.a = qVar;
            this.b = qVar;
            int[] iArr = R$styleable.GridLayout_Layout;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
            try {
                int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(e, Integer.MIN_VALUE);
                ((ViewGroup.MarginLayoutParams) this).leftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(f, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(g, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).rightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(h, dimensionPixelSize);
                ((ViewGroup.MarginLayoutParams) this).bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(i, dimensionPixelSize);
                typedArrayObtainStyledAttributes.recycle();
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
                try {
                    int i2 = typedArrayObtainStyledAttributes.getInt(p, 0);
                    int i3 = typedArrayObtainStyledAttributes.getInt(j, Integer.MIN_VALUE);
                    int i4 = k;
                    int i5 = d;
                    this.b = GridLayout.q(i3, typedArrayObtainStyledAttributes.getInt(i4, i5), GridLayout.d(i2, true), typedArrayObtainStyledAttributes.getFloat(l, 0.0f));
                    this.a = GridLayout.q(typedArrayObtainStyledAttributes.getInt(m, Integer.MIN_VALUE), typedArrayObtainStyledAttributes.getInt(n, i5), GridLayout.d(i2, false), typedArrayObtainStyledAttributes.getFloat(o, 0.0f));
                } finally {
                }
            } finally {
            }
        }
    }

    public GridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GridLayout(Context context) {
        this(context, null);
    }
}
