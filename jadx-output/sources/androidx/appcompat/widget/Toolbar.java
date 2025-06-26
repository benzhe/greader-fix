package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import defpackage.a1;
import defpackage.c3;
import defpackage.e3;
import defpackage.ha;
import defpackage.i3;
import defpackage.j1;
import defpackage.l1;
import defpackage.l2;
import defpackage.p0;
import defpackage.p1;
import defpackage.u;
import defpackage.u1;
import defpackage.u2;
import defpackage.w0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public int A;
    public CharSequence B;
    public CharSequence C;
    public ColorStateList D;
    public ColorStateList E;
    public boolean F;
    public boolean G;
    public final ArrayList<View> H;
    public final ArrayList<View> I;
    public final int[] J;
    public f K;
    public final ActionMenuView.e L;
    public e3 M;
    public ActionMenuPresenter N;
    public d O;
    public p1.a P;
    public j1.a Q;
    public boolean R;
    public final Runnable S;
    public ActionMenuView e;
    public TextView f;
    public TextView g;
    public ImageButton h;
    public ImageView i;
    public Drawable j;
    public CharSequence k;
    public ImageButton l;
    public View m;
    public Context n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public u2 x;
    public int y;
    public int z;

    public class a implements ActionMenuView.e {
        public a() {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.v();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = Toolbar.this.O;
            l1 l1Var = dVar == null ? null : dVar.f;
            if (l1Var != null) {
                l1Var.collapseActionView();
            }
        }
    }

    public class d implements p1 {
        public j1 e;
        public l1 f;

        public d() {
        }

        @Override // defpackage.p1
        public void b(j1 j1Var, boolean z) {
        }

        @Override // defpackage.p1
        public int n() {
            return 0;
        }

        @Override // defpackage.p1
        public void o(boolean z) {
            if (this.f != null) {
                j1 j1Var = this.e;
                boolean z2 = false;
                if (j1Var != null) {
                    int size = j1Var.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.e.getItem(i) == this.f) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                q(this.e, this.f);
            }
        }

        @Override // defpackage.p1
        public boolean p() {
            return false;
        }

        @Override // defpackage.p1
        public boolean q(j1 j1Var, l1 l1Var) {
            KeyEvent.Callback callback = Toolbar.this.m;
            if (callback instanceof w0) {
                ((w0) callback).e();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.m);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.l);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.m = null;
            int size = toolbar3.I.size();
            while (true) {
                size--;
                if (size < 0) {
                    toolbar3.I.clear();
                    this.f = null;
                    Toolbar.this.requestLayout();
                    l1Var.C = false;
                    l1Var.n.q(false);
                    return true;
                }
                toolbar3.addView(toolbar3.I.get(size));
            }
        }

        @Override // defpackage.p1
        public boolean r(j1 j1Var, l1 l1Var) {
            Toolbar.this.c();
            ViewParent parent = Toolbar.this.l.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.l);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.l);
            }
            Toolbar.this.m = l1Var.getActionView();
            this.f = l1Var;
            ViewParent parent2 = Toolbar.this.m.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.m);
                }
                e eVarGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                eVarGenerateDefaultLayoutParams.a = 8388611 | (toolbar4.r & 112);
                eVarGenerateDefaultLayoutParams.b = 2;
                toolbar4.m.setLayoutParams(eVarGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.m);
            }
            Toolbar toolbar6 = Toolbar.this;
            int childCount = toolbar6.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                View childAt = toolbar6.getChildAt(childCount);
                if (((e) childAt.getLayoutParams()).b != 2 && childAt != toolbar6.e) {
                    toolbar6.removeViewAt(childCount);
                    toolbar6.I.add(childAt);
                }
            }
            Toolbar.this.requestLayout();
            l1Var.C = true;
            l1Var.n.q(false);
            KeyEvent.Callback callback = Toolbar.this.m;
            if (callback instanceof w0) {
                ((w0) callback).c();
            }
            return true;
        }

        @Override // defpackage.p1
        public void t(Context context, j1 j1Var) {
            l1 l1Var;
            j1 j1Var2 = this.e;
            if (j1Var2 != null && (l1Var = this.f) != null) {
                j1Var2.d(l1Var);
            }
            this.e = j1Var;
        }

        @Override // defpackage.p1
        public void u(Parcelable parcelable) {
        }

        @Override // defpackage.p1
        public boolean v(u1 u1Var) {
            return false;
        }

        @Override // defpackage.p1
        public Parcelable w() {
            return null;
        }
    }

    public interface f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    private MenuInflater getMenuInflater() {
        return new a1(getContext());
    }

    public final void a(List<View> list, int i) {
        AtomicInteger atomicInteger = ha.a;
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.b == 0 && u(childAt) && j(eVar.a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            e eVar2 = (e) childAt2.getLayoutParams();
            if (eVar2.b == 0 && u(childAt2) && j(eVar2.a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        e eVarGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (e) layoutParams;
        eVarGenerateDefaultLayoutParams.b = 1;
        if (!z || this.m == null) {
            addView(view, eVarGenerateDefaultLayoutParams);
        } else {
            view.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.I.add(view);
        }
    }

    public void c() {
        if (this.l == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R$attr.toolbarNavigationButtonStyle);
            this.l = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.j);
            this.l.setContentDescription(this.k);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388611 | (this.r & 112);
            eVarGenerateDefaultLayoutParams.b = 2;
            this.l.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.l.setOnClickListener(new c());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    public final void d() {
        if (this.x == null) {
            this.x = new u2();
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView.t == null) {
            j1 j1Var = (j1) actionMenuView.getMenu();
            if (this.O == null) {
                this.O = new d();
            }
            this.e.setExpandedActionViewsExclusive(true);
            j1Var.b(this.O, this.n);
        }
    }

    public final void f() {
        if (this.e == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.e = actionMenuView;
            actionMenuView.setPopupTheme(this.o);
            this.e.setOnMenuItemClickListener(this.L);
            this.e.setMenuCallbacks(this.P, this.Q);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388613 | (this.r & 112);
            this.e.setLayoutParams(eVarGenerateDefaultLayoutParams);
            b(this.e, false);
        }
    }

    public final void g() {
        if (this.h == null) {
            this.h = new AppCompatImageButton(getContext(), null, R$attr.toolbarNavigationButtonStyle);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388611 | (this.r & 112);
            this.h.setLayoutParams(eVarGenerateDefaultLayoutParams);
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.l;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.l;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        u2 u2Var = this.x;
        if (u2Var != null) {
            return u2Var.g ? u2Var.a : u2Var.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.z;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        u2 u2Var = this.x;
        if (u2Var != null) {
            return u2Var.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        u2 u2Var = this.x;
        if (u2Var != null) {
            return u2Var.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        u2 u2Var = this.x;
        if (u2Var != null) {
            return u2Var.g ? u2Var.b : u2Var.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.y;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        j1 j1Var;
        ActionMenuView actionMenuView = this.e;
        return actionMenuView != null && (j1Var = actionMenuView.t) != null && j1Var.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.z, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        AtomicInteger atomicInteger = ha.a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        AtomicInteger atomicInteger = ha.a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.y, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.i;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.i;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.e.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.N;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.e.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.n;
    }

    public int getPopupTheme() {
        return this.o;
    }

    public CharSequence getSubtitle() {
        return this.C;
    }

    public final TextView getSubtitleTextView() {
        return this.g;
    }

    public CharSequence getTitle() {
        return this.B;
    }

    public int getTitleMarginBottom() {
        return this.w;
    }

    public int getTitleMarginEnd() {
        return this.u;
    }

    public int getTitleMarginStart() {
        return this.t;
    }

    public int getTitleMarginTop() {
        return this.v;
    }

    public final TextView getTitleTextView() {
        return this.f;
    }

    public l2 getWrapper() {
        if (this.M == null) {
            this.M = new e3(this, true);
        }
        return this.M;
    }

    @Override // android.view.ViewGroup
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof u.a ? new e((u.a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    public final int j(int i) {
        AtomicInteger atomicInteger = ha.a;
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, layoutDirection) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : layoutDirection == 1 ? 5 : 3;
    }

    public final int k(View view, int i) {
        e eVar = (e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = eVar.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.A & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        if (iMax < i4) {
            iMax = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            if (i5 < i6) {
                iMax = Math.max(0, iMax - (i6 - i5));
            }
        }
        return paddingTop + iMax;
    }

    public final int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    public final int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public void n(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public final boolean o(View view) {
        return view.getParent() == this || this.I.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.S);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.G = false;
        }
        if (!this.G) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.G = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.G = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02a1 A[LOOP:0: B:104:0x029f->B:105:0x02a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c3 A[LOOP:1: B:107:0x02c1->B:108:0x02c3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02e8 A[LOOP:2: B:110:0x02e6->B:111:0x02e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x033a A[LOOP:3: B:119:0x0338->B:120:0x033a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0227  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iCombineMeasuredStates2;
        int iMax2;
        int iM;
        int[] iArr = this.J;
        boolean z = true;
        if (i3.b(this)) {
            c2 = 1;
            c3 = 0;
        } else {
            c2 = 0;
            c3 = 1;
        }
        if (u(this.h)) {
            t(this.h, i, 0, i2, 0, this.s);
            iL = l(this.h) + this.h.getMeasuredWidth();
            iMax = Math.max(0, m(this.h) + this.h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.h.getMeasuredState());
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (u(this.l)) {
            t(this.l, i, 0, i2, 0, this.s);
            iL = l(this.l) + this.l.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.l) + this.l.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.l.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iL) + 0;
        iArr[c2] = Math.max(0, currentContentInsetStart - iL);
        if (u(this.e)) {
            t(this.e, i, iMax3, i2, 0, this.s);
            iL2 = l(this.e) + this.e.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.e) + this.e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.e.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = Math.max(currentContentInsetEnd, iL2) + iMax3;
        iArr[c3] = Math.max(0, currentContentInsetEnd - iL2);
        if (u(this.m)) {
            iMax4 += s(this.m, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, m(this.m) + this.m.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.m.getMeasuredState());
        }
        if (u(this.i)) {
            iMax4 += s(this.i, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, m(this.i) + this.i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.i.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (((e) childAt.getLayoutParams()).b == 0 && u(childAt)) {
                iMax4 += s(childAt, i, iMax4, i2, 0, iArr);
                iMax = Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i4 = this.v + this.w;
        int i5 = this.t + this.u;
        if (u(this.f)) {
            s(this.f, i, iMax4 + i5, i2, i4, iArr);
            int iL3 = l(this.f) + this.f.getMeasuredWidth();
            iM = m(this.f) + this.f.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f.getMeasuredState());
            iMax2 = iL3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            iM = 0;
        }
        if (u(this.g)) {
            iMax2 = Math.max(iMax2, s(this.g, i, iMax4 + i5, i2, iM + i4, iArr));
            iM = m(this.g) + this.g.getMeasuredHeight() + iM;
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.g.getMeasuredState());
        }
        int iMax5 = Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax5;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax4 + iMax2, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16);
        if (!this.R) {
            z = false;
            break;
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            View childAt2 = getChildAt(i6);
            if (u(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                z = false;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, z ? 0 : iResolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.e);
        ActionMenuView actionMenuView = this.e;
        j1 j1Var = actionMenuView != null ? actionMenuView.t : null;
        int i = savedState.g;
        if (i != 0 && this.O != null && j1Var != null && (menuItemFindItem = j1Var.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.h) {
            removeCallbacks(this.S);
            post(this.S);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        u2 u2Var = this.x;
        boolean z = i == 1;
        if (z == u2Var.g) {
            return;
        }
        u2Var.g = z;
        if (!u2Var.h) {
            u2Var.a = u2Var.e;
            u2Var.b = u2Var.f;
            return;
        }
        if (z) {
            int i2 = u2Var.d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = u2Var.e;
            }
            u2Var.a = i2;
            int i3 = u2Var.c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = u2Var.f;
            }
            u2Var.b = i3;
            return;
        }
        int i4 = u2Var.c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = u2Var.e;
        }
        u2Var.a = i4;
        int i5 = u2Var.d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = u2Var.f;
        }
        u2Var.b = i5;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        l1 l1Var;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        d dVar = this.O;
        if (dVar != null && (l1Var = dVar.f) != null) {
            savedState.g = l1Var.a;
        }
        savedState.h = p();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.F = false;
        }
        if (!this.F) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.F = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.F = false;
        }
        return true;
    }

    public boolean p() {
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView != null) {
            ActionMenuPresenter actionMenuPresenter = actionMenuView.x;
            if (actionMenuPresenter != null && actionMenuPresenter.f()) {
                return true;
            }
        }
        return false;
    }

    public final int q(View view, int i, int[] iArr, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - iArr[0];
        int iMax = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int iK = k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iK, iMax + measuredWidth, view.getMeasuredHeight() + iK);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).rightMargin + iMax;
    }

    public final int r(View view, int i, int[] iArr, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int iK = k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iK, iMax, view.getMeasuredHeight() + iK);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).leftMargin);
    }

    public final int s(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + iMax + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(p0.b(getContext(), i));
    }

    public void setCollapsible(boolean z) {
        this.R = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.z) {
            this.z = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.y) {
            this.y = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        d();
        u2 u2Var = this.x;
        u2Var.h = false;
        if (i != Integer.MIN_VALUE) {
            u2Var.e = i;
            u2Var.a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            u2Var.f = i2;
            u2Var.b = i2;
        }
    }

    public void setContentInsetsRelative(int i, int i2) {
        d();
        this.x.a(i, i2);
    }

    public void setLogo(int i) {
        setLogo(p0.b(getContext(), i));
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setMenu(j1 j1Var, ActionMenuPresenter actionMenuPresenter) {
        l1 l1Var;
        if (j1Var == null && this.e == null) {
            return;
        }
        f();
        j1 j1Var2 = this.e.t;
        if (j1Var2 == j1Var) {
            return;
        }
        if (j1Var2 != null) {
            j1Var2.u(this.N);
            j1Var2.u(this.O);
        }
        if (this.O == null) {
            this.O = new d();
        }
        actionMenuPresenter.v = true;
        if (j1Var != null) {
            j1Var.b(actionMenuPresenter, this.n);
            j1Var.b(this.O, this.n);
        } else {
            actionMenuPresenter.t(this.n, null);
            d dVar = this.O;
            j1 j1Var3 = dVar.e;
            if (j1Var3 != null && (l1Var = dVar.f) != null) {
                j1Var3.d(l1Var);
            }
            dVar.e = null;
            actionMenuPresenter.o(true);
            this.O.o(true);
        }
        this.e.setPopupTheme(this.o);
        this.e.setPresenter(actionMenuPresenter);
        this.N = actionMenuPresenter;
    }

    public void setMenuCallbacks(p1.a aVar, j1.a aVar2) {
        this.P = aVar;
        this.Q = aVar2;
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(aVar, aVar2);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(p0.b(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.h.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(f fVar) {
        this.K = fVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.e.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.o != i) {
            this.o = i;
            if (i == 0) {
                this.n = getContext();
            } else {
                this.n = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.q = i;
        TextView textView = this.g;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.t = i;
        this.v = i2;
        this.u = i3;
        this.w = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.w = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.u = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.t = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.v = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.p = i;
        TextView textView = this.f;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public final void t(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean u(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public boolean v() {
        ActionMenuView actionMenuView = this.e;
        if (actionMenuView != null) {
            ActionMenuPresenter actionMenuPresenter = actionMenuView.x;
            if (actionMenuPresenter != null && actionMenuPresenter.g()) {
                return true;
            }
        }
        return false;
    }

    public static class e extends u.a {
        public int b;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = 0;
        }

        public e(int i, int i2) {
            super(i, i2);
            this.b = 0;
            this.a = 8388627;
        }

        public e(e eVar) {
            super((u.a) eVar);
            this.b = 0;
            this.b = eVar.b;
        }

        public e(u.a aVar) {
            super(aVar);
            this.b = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        ImageButton imageButton = this.l;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.l.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.l;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.j);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.i == null) {
                this.i = new AppCompatImageView(getContext());
            }
            if (!o(this.i)) {
                b(this.i, true);
            }
        } else {
            ImageView imageView = this.i;
            if (imageView != null && o(imageView)) {
                removeView(this.i);
                this.I.remove(this.i);
            }
        }
        ImageView imageView2 = this.i;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.i == null) {
            this.i = new AppCompatImageView(getContext());
        }
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!o(this.h)) {
                b(this.h, true);
            }
        } else {
            ImageButton imageButton = this.h;
            if (imageButton != null && o(imageButton)) {
                removeView(this.h);
                this.I.remove(this.h);
            }
        }
        ImageButton imageButton2 = this.h;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.g;
            if (textView != null && o(textView)) {
                removeView(this.g);
                this.I.remove(this.g);
            }
        } else {
            if (this.g == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.g = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.g.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.q;
                if (i != 0) {
                    this.g.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.E;
                if (colorStateList != null) {
                    this.g.setTextColor(colorStateList);
                }
            }
            if (!o(this.g)) {
                b(this.g, true);
            }
        }
        TextView textView2 = this.g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.C = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.E = colorStateList;
        TextView textView = this.g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f;
            if (textView != null && o(textView)) {
                removeView(this.f);
                this.I.remove(this.f);
            }
        } else {
            if (this.f == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.p;
                if (i != 0) {
                    this.f.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.D;
                if (colorStateList != null) {
                    this.f.setTextColor(colorStateList);
                }
            }
            if (!o(this.f)) {
                b(this.f, true);
            }
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.B = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.D = colorStateList;
        TextView textView = this.f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int g;
        public boolean h;

        public class a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            this.g = parcel.readInt();
            this.h = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.e, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A = 8388627;
        this.H = new ArrayList<>();
        this.I = new ArrayList<>();
        this.J = new int[2];
        this.L = new a();
        this.S = new b();
        Context context2 = getContext();
        int[] iArr = R$styleable.Toolbar;
        c3 c3VarR = c3.r(context2, attributeSet, iArr, i, 0);
        ha.r(this, context, iArr, attributeSet, c3VarR.b, i, 0);
        this.p = c3VarR.m(R$styleable.Toolbar_titleTextAppearance, 0);
        this.q = c3VarR.m(R$styleable.Toolbar_subtitleTextAppearance, 0);
        this.A = c3VarR.k(R$styleable.Toolbar_android_gravity, this.A);
        this.r = c3VarR.k(R$styleable.Toolbar_buttonGravity, 48);
        int iE = c3VarR.e(R$styleable.Toolbar_titleMargin, 0);
        int i2 = R$styleable.Toolbar_titleMargins;
        iE = c3VarR.p(i2) ? c3VarR.e(i2, iE) : iE;
        this.w = iE;
        this.v = iE;
        this.u = iE;
        this.t = iE;
        int iE2 = c3VarR.e(R$styleable.Toolbar_titleMarginStart, -1);
        if (iE2 >= 0) {
            this.t = iE2;
        }
        int iE3 = c3VarR.e(R$styleable.Toolbar_titleMarginEnd, -1);
        if (iE3 >= 0) {
            this.u = iE3;
        }
        int iE4 = c3VarR.e(R$styleable.Toolbar_titleMarginTop, -1);
        if (iE4 >= 0) {
            this.v = iE4;
        }
        int iE5 = c3VarR.e(R$styleable.Toolbar_titleMarginBottom, -1);
        if (iE5 >= 0) {
            this.w = iE5;
        }
        this.s = c3VarR.f(R$styleable.Toolbar_maxButtonHeight, -1);
        int iE6 = c3VarR.e(R$styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iE7 = c3VarR.e(R$styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iF = c3VarR.f(R$styleable.Toolbar_contentInsetLeft, 0);
        int iF2 = c3VarR.f(R$styleable.Toolbar_contentInsetRight, 0);
        d();
        u2 u2Var = this.x;
        u2Var.h = false;
        if (iF != Integer.MIN_VALUE) {
            u2Var.e = iF;
            u2Var.a = iF;
        }
        if (iF2 != Integer.MIN_VALUE) {
            u2Var.f = iF2;
            u2Var.b = iF2;
        }
        if (iE6 != Integer.MIN_VALUE || iE7 != Integer.MIN_VALUE) {
            u2Var.a(iE6, iE7);
        }
        this.y = c3VarR.e(R$styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.z = c3VarR.e(R$styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.j = c3VarR.g(R$styleable.Toolbar_collapseIcon);
        this.k = c3VarR.o(R$styleable.Toolbar_collapseContentDescription);
        CharSequence charSequenceO = c3VarR.o(R$styleable.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceO)) {
            setTitle(charSequenceO);
        }
        CharSequence charSequenceO2 = c3VarR.o(R$styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceO2)) {
            setSubtitle(charSequenceO2);
        }
        this.n = getContext();
        setPopupTheme(c3VarR.m(R$styleable.Toolbar_popupTheme, 0));
        Drawable drawableG = c3VarR.g(R$styleable.Toolbar_navigationIcon);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceO3 = c3VarR.o(R$styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceO3)) {
            setNavigationContentDescription(charSequenceO3);
        }
        Drawable drawableG2 = c3VarR.g(R$styleable.Toolbar_logo);
        if (drawableG2 != null) {
            setLogo(drawableG2);
        }
        CharSequence charSequenceO4 = c3VarR.o(R$styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceO4)) {
            setLogoDescription(charSequenceO4);
        }
        int i3 = R$styleable.Toolbar_titleTextColor;
        if (c3VarR.p(i3)) {
            setTitleTextColor(c3VarR.c(i3));
        }
        int i4 = R$styleable.Toolbar_subtitleTextColor;
        if (c3VarR.p(i4)) {
            setSubtitleTextColor(c3VarR.c(i4));
        }
        int i5 = R$styleable.Toolbar_menu;
        if (c3VarR.p(i5)) {
            n(c3VarR.m(i5, 0));
        }
        c3VarR.b.recycle();
    }
}
