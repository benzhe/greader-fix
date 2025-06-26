package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import defpackage.i3;
import defpackage.j1;
import defpackage.l1;
import defpackage.p1;
import defpackage.q1;

/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements j1.b, q1 {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public e E;
    public j1 t;
    public Context u;
    public int v;
    public boolean w;
    public ActionMenuPresenter x;
    public p1.a y;
    public j1.a z;

    public interface a {
        boolean a();

        boolean b();
    }

    public static class b implements p1.a {
        @Override // p1.a
        public void b(j1 j1Var, boolean z) {
        }

        @Override // p1.a
        public boolean c(j1 j1Var) {
            return false;
        }
    }

    public static class c extends LinearLayoutCompat.a {

        @ViewDebug.ExportedProperty
        public boolean c;

        @ViewDebug.ExportedProperty
        public int d;

        @ViewDebug.ExportedProperty
        public int e;

        @ViewDebug.ExportedProperty
        public boolean f;

        @ViewDebug.ExportedProperty
        public boolean g;
        public boolean h;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.c = cVar.c;
        }

        public c(int i, int i2) {
            super(i, i2);
            this.c = false;
        }
    }

    public class d implements j1.a {
        public d() {
        }

        @Override // j1.a
        public boolean a(j1 j1Var, MenuItem menuItem) {
            e eVar = ActionMenuView.this.E;
            if (eVar == null) {
                return false;
            }
            Toolbar.f fVar = Toolbar.this.K;
            return fVar != null ? fVar.onMenuItemClick(menuItem) : false;
        }

        @Override // j1.a
        public void b(j1 j1Var) {
            j1.a aVar = ActionMenuView.this.z;
            if (aVar != null) {
                aVar.b(j1Var);
            }
        }
    }

    public interface e {
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public static int t(View view, int i, int i2, int i3, int i4) {
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = false;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.c();
        int i5 = 2;
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z2 || i6 >= 2) {
                i5 = i6;
            }
        }
        if (!cVar.c && z2) {
            z = true;
        }
        cVar.f = z;
        cVar.d = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), iMakeMeasureSpec);
        return i5;
    }

    @Override // j1.b
    public boolean a(l1 l1Var) {
        return this.t.s(l1Var, null, 0);
    }

    @Override // defpackage.q1
    public void b(j1 j1Var) {
        this.t = j1Var;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.t == null) {
            Context context = getContext();
            j1 j1Var = new j1(context);
            this.t = j1Var;
            j1Var.e = new d();
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.x = actionMenuPresenter;
            actionMenuPresenter.q = true;
            actionMenuPresenter.r = true;
            p1.a bVar = this.y;
            if (bVar == null) {
                bVar = new b();
            }
            actionMenuPresenter.i = bVar;
            this.t.b(actionMenuPresenter, this.u);
            ActionMenuPresenter actionMenuPresenter2 = this.x;
            actionMenuPresenter2.l = this;
            this.t = actionMenuPresenter2.g;
        }
        return this.t;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        ActionMenuPresenter actionMenuPresenter = this.x;
        ActionMenuPresenter.d dVar = actionMenuPresenter.n;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (actionMenuPresenter.p) {
            return actionMenuPresenter.o;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.v;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: i */
    public LinearLayoutCompat.a generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.x;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.o(false);
            if (this.x.f()) {
                this.x.d();
                this.x.g();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.x;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.a();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int paddingLeft;
        if (!this.A) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i5 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i6 = i3 - i;
        int paddingRight = (i6 - getPaddingRight()) - getPaddingLeft();
        boolean zB = i3.b(this);
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (s(i9)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i10 = i5 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i10, width, measuredHeight + i10);
                    paddingRight -= measuredWidth;
                    i7 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin) + ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
                    s(i9);
                    i8++;
                }
            }
        }
        if (childCount == 1 && i7 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i11 = (i6 / 2) - (measuredWidth2 / 2);
            int i12 = i5 - (measuredHeight2 / 2);
            childAt2.layout(i11, i12, measuredWidth2 + i11, measuredHeight2 + i12);
            return;
        }
        int i13 = i8 - (i7 ^ 1);
        int iMax = Math.max(0, i13 > 0 ? paddingRight / i13 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt3 = getChildAt(i14);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.c) {
                    int i15 = width2 - ((ViewGroup.MarginLayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i16 = i5 - (measuredHeight3 / 2);
                    childAt3.layout(i15 - measuredWidth3, i16, i15, measuredHeight3 + i16);
                    width2 = i15 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt4 = getChildAt(i17);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.c) {
                int i18 = paddingLeft2 + ((ViewGroup.MarginLayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i5 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth4, measuredHeight4 + i19);
                paddingLeft2 = measuredWidth4 + ((ViewGroup.MarginLayoutParams) cVar3).rightMargin + iMax + i18;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v39 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        int i6;
        ?? r3;
        j1 j1Var;
        boolean z3 = this.A;
        boolean z4 = View.MeasureSpec.getMode(i) == 1073741824;
        this.A = z4;
        if (z3 != z4) {
            this.B = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.A && (j1Var = this.t) != null && size != this.B) {
            this.B = size;
            j1Var.q(true);
        }
        int childCount = getChildCount();
        if (!this.A || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                c cVar = (c) getChildAt(i7).getLayoutParams();
                ((ViewGroup.MarginLayoutParams) cVar).rightMargin = 0;
                ((ViewGroup.MarginLayoutParams) cVar).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.C;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int i13 = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i14 = 0;
        int i15 = 0;
        boolean z5 = false;
        long j = 0;
        while (i15 < childCount2) {
            View childAt = getChildAt(i15);
            int i16 = size3;
            int i17 = i8;
            if (childAt.getVisibility() != 8) {
                boolean z6 = childAt instanceof ActionMenuItemView;
                int i18 = i13 + 1;
                if (z6) {
                    int i19 = this.D;
                    i6 = i18;
                    r3 = 0;
                    childAt.setPadding(i19, 0, i19, 0);
                } else {
                    i6 = i18;
                    r3 = 0;
                }
                c cVar2 = (c) childAt.getLayoutParams();
                cVar2.h = r3;
                cVar2.e = r3;
                cVar2.d = r3;
                cVar2.f = r3;
                ((ViewGroup.MarginLayoutParams) cVar2).leftMargin = r3;
                ((ViewGroup.MarginLayoutParams) cVar2).rightMargin = r3;
                cVar2.g = z6 && ((ActionMenuItemView) childAt).c();
                int iT = t(childAt, i12, cVar2.c ? 1 : i10, childMeasureSpec, paddingBottom);
                iMax2 = Math.max(iMax2, iT);
                if (cVar2.f) {
                    i14++;
                }
                if (cVar2.c) {
                    z5 = true;
                }
                i10 -= iT;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iT == 1) {
                    j |= 1 << i15;
                }
                i13 = i6;
            }
            i15++;
            size3 = i16;
            i8 = i17;
        }
        int i20 = i8;
        int i21 = size3;
        boolean z7 = z5 && i13 == 2;
        boolean z8 = false;
        while (i14 > 0 && i10 > 0) {
            int i22 = Integer.MAX_VALUE;
            int i23 = 0;
            int i24 = 0;
            long j2 = 0;
            while (i23 < childCount2) {
                int i25 = iMax;
                c cVar3 = (c) getChildAt(i23).getLayoutParams();
                boolean z9 = z8;
                if (cVar3.f) {
                    int i26 = cVar3.d;
                    if (i26 < i22) {
                        j2 = 1 << i23;
                        i22 = i26;
                        i24 = 1;
                    } else if (i26 == i22) {
                        i24++;
                        j2 |= 1 << i23;
                    }
                }
                i23++;
                z8 = z9;
                iMax = i25;
            }
            i3 = iMax;
            z = z8;
            j |= j2;
            if (i24 > i10) {
                break;
            }
            int i27 = i22 + 1;
            int i28 = 0;
            while (i28 < childCount2) {
                View childAt2 = getChildAt(i28);
                c cVar4 = (c) childAt2.getLayoutParams();
                int i29 = i14;
                long j3 = 1 << i28;
                if ((j2 & j3) == 0) {
                    if (cVar4.d == i27) {
                        j |= j3;
                    }
                    z2 = z7;
                } else {
                    if (z7 && cVar4.g && i10 == 1) {
                        int i30 = this.D;
                        z2 = z7;
                        childAt2.setPadding(i30 + i12, 0, i30, 0);
                    } else {
                        z2 = z7;
                    }
                    cVar4.d++;
                    cVar4.h = true;
                    i10--;
                }
                i28++;
                i14 = i29;
                z7 = z2;
            }
            iMax = i3;
            z8 = true;
        }
        i3 = iMax;
        z = z8;
        boolean z10 = !z5 && i13 == 1;
        if (i10 > 0 && j != 0 && (i10 < i13 - 1 || z10 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j);
            if (!z10) {
                if ((j & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).g) {
                    fBitCount -= 0.5f;
                }
                int i31 = childCount2 - 1;
                if ((j & (1 << i31)) != 0 && !((c) getChildAt(i31).getLayoutParams()).g) {
                    fBitCount -= 0.5f;
                }
            }
            int i32 = fBitCount > 0.0f ? (int) ((i10 * i12) / fBitCount) : 0;
            for (int i33 = 0; i33 < childCount2; i33++) {
                if ((j & (1 << i33)) != 0) {
                    View childAt3 = getChildAt(i33);
                    c cVar5 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar5.e = i32;
                        cVar5.h = true;
                        if (i33 == 0 && !cVar5.g) {
                            ((ViewGroup.MarginLayoutParams) cVar5).leftMargin = (-i32) / 2;
                        }
                    } else if (cVar5.c) {
                        cVar5.e = i32;
                        cVar5.h = true;
                        ((ViewGroup.MarginLayoutParams) cVar5).rightMargin = (-i32) / 2;
                    } else {
                        if (i33 != 0) {
                            ((ViewGroup.MarginLayoutParams) cVar5).leftMargin = i32 / 2;
                        }
                        if (i33 != childCount2 - 1) {
                            ((ViewGroup.MarginLayoutParams) cVar5).rightMargin = i32 / 2;
                        }
                    }
                    z = true;
                }
            }
        }
        if (z) {
            for (int i34 = 0; i34 < childCount2; i34++) {
                View childAt4 = getChildAt(i34);
                c cVar6 = (c) childAt4.getLayoutParams();
                if (cVar6.h) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar6.d * i12) + cVar6.e, 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode != 1073741824) {
            i5 = i20;
            i4 = i3;
        } else {
            i4 = i21;
            i5 = i20;
        }
        setMeasuredDimension(i5, i4);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        cVar.b = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (cVar.b <= 0) {
            cVar.b = 16;
        }
        return cVar;
    }

    public boolean s(int i) {
        boolean zA = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof a)) {
            zA = false | ((a) childAt).a();
        }
        return (i <= 0 || !(childAt2 instanceof a)) ? zA : zA | ((a) childAt2).b();
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.x.v = z;
    }

    public void setMenuCallbacks(p1.a aVar, j1.a aVar2) {
        this.y = aVar;
        this.z = aVar2;
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.E = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        ActionMenuPresenter actionMenuPresenter = this.x;
        ActionMenuPresenter.d dVar = actionMenuPresenter.n;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            actionMenuPresenter.p = true;
            actionMenuPresenter.o = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.w = z;
    }

    public void setPopupTheme(int i) {
        if (this.v != i) {
            this.v = i;
            if (i == 0) {
                this.u = getContext();
            } else {
                this.u = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.x = actionMenuPresenter;
        actionMenuPresenter.l = this;
        this.t = actionMenuPresenter.g;
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.C = (int) (56.0f * f);
        this.D = (int) (f * 4.0f);
        this.u = context;
        this.v = 0;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }
}
