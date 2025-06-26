package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import defpackage.d0;
import defpackage.e1;
import defpackage.j1;
import defpackage.l1;
import defpackage.n1;
import defpackage.o1;
import defpackage.p1;
import defpackage.p2;
import defpackage.q1;
import defpackage.s1;
import defpackage.u1;
import defpackage.w9;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ActionMenuPresenter extends e1 implements w9.a {
    public c A;
    public b B;
    public final f C;
    public int D;
    public d n;
    public Drawable o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public int t;
    public int u;
    public boolean v;
    public int w;
    public final SparseBooleanArray x;
    public e y;
    public a z;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int e;

        public class a implements Parcelable.Creator<SavedState> {
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
        }

        public SavedState(Parcel parcel) {
            this.e = parcel.readInt();
        }
    }

    public class a extends o1 {
        public a(Context context, u1 u1Var, View view) {
            super(context, u1Var, view, false, R$attr.actionOverflowMenuStyle, 0);
            if (!u1Var.A.g()) {
                View view2 = ActionMenuPresenter.this.n;
                this.f = view2 == null ? (View) ActionMenuPresenter.this.l : view2;
            }
            d(ActionMenuPresenter.this.C);
        }

        @Override // defpackage.o1
        public void c() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.z = null;
            actionMenuPresenter.D = 0;
            super.c();
        }
    }

    public class b extends ActionMenuItemView.b {
        public b() {
        }
    }

    public class c implements Runnable {
        public e e;

        public c(e eVar) {
            this.e = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.a aVar;
            j1 j1Var = ActionMenuPresenter.this.g;
            if (j1Var != null && (aVar = j1Var.e) != null) {
                aVar.b(j1Var);
            }
            View view = (View) ActionMenuPresenter.this.l;
            if (view != null && view.getWindowToken() != null && this.e.f()) {
                ActionMenuPresenter.this.y = this.e;
            }
            ActionMenuPresenter.this.A = null;
        }
    }

    public class d extends AppCompatImageView implements ActionMenuView.a {

        public class a extends p2 {
            public a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
            }

            @Override // defpackage.p2
            public s1 b() {
                e eVar = ActionMenuPresenter.this.y;
                if (eVar == null) {
                    return null;
                }
                return eVar.a();
            }

            @Override // defpackage.p2
            public boolean c() {
                ActionMenuPresenter.this.g();
                return true;
            }

            @Override // defpackage.p2
            public boolean d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.A != null) {
                    return false;
                }
                actionMenuPresenter.d();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, R$attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            d0.h.g0(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.g();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    public class e extends o1 {
        public e(Context context, j1 j1Var, View view, boolean z) {
            super(context, j1Var, view, z, R$attr.actionOverflowMenuStyle, 0);
            this.g = 8388613;
            d(ActionMenuPresenter.this.C);
        }

        @Override // defpackage.o1
        public void c() {
            j1 j1Var = ActionMenuPresenter.this.g;
            if (j1Var != null) {
                j1Var.c(true);
            }
            ActionMenuPresenter.this.y = null;
            super.c();
        }
    }

    public class f implements p1.a {
        public f() {
        }

        @Override // p1.a
        public void b(j1 j1Var, boolean z) {
            if (j1Var instanceof u1) {
                j1Var.k().c(false);
            }
            p1.a aVar = ActionMenuPresenter.this.i;
            if (aVar != null) {
                aVar.b(j1Var, z);
            }
        }

        @Override // p1.a
        public boolean c(j1 j1Var) {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            if (j1Var == actionMenuPresenter.g) {
                return false;
            }
            actionMenuPresenter.D = ((u1) j1Var).A.a;
            p1.a aVar = actionMenuPresenter.i;
            if (aVar != null) {
                return aVar.c(j1Var);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R$layout.abc_action_menu_layout, R$layout.abc_action_menu_item_layout);
        this.x = new SparseBooleanArray();
        this.C = new f();
    }

    public boolean a() {
        return d() | e();
    }

    @Override // defpackage.p1
    public void b(j1 j1Var, boolean z) {
        a();
        p1.a aVar = this.i;
        if (aVar != null) {
            aVar.b(j1Var, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [q1$a] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public View c(l1 l1Var, View view, ViewGroup viewGroup) {
        View actionView = l1Var.getActionView();
        if (actionView == null || l1Var.f()) {
            ActionMenuItemView actionMenuItemView = view instanceof q1.a ? (q1.a) view : (q1.a) this.h.inflate(this.k, viewGroup, false);
            actionMenuItemView.d(l1Var, 0);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.l);
            if (this.B == null) {
                this.B = new b();
            }
            actionMenuItemView2.setPopupCallback(this.B);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(l1Var.C ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public boolean d() {
        Object obj;
        c cVar = this.A;
        if (cVar != null && (obj = this.l) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.A = null;
            return true;
        }
        e eVar = this.y;
        if (eVar == null) {
            return false;
        }
        if (eVar.b()) {
            eVar.j.dismiss();
        }
        return true;
    }

    public boolean e() {
        a aVar = this.z;
        if (aVar == null) {
            return false;
        }
        if (!aVar.b()) {
            return true;
        }
        aVar.j.dismiss();
        return true;
    }

    public boolean f() {
        e eVar = this.y;
        return eVar != null && eVar.b();
    }

    public boolean g() {
        j1 j1Var;
        if (!this.q || f() || (j1Var = this.g) == null || this.l == null || this.A != null) {
            return false;
        }
        j1Var.i();
        if (j1Var.j.isEmpty()) {
            return false;
        }
        c cVar = new c(new e(this.f, this.g, this.n, true));
        this.A = cVar;
        ((View) this.l).post(cVar);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.p1
    public void o(boolean z) {
        int i;
        boolean z2;
        ViewGroup viewGroup = (ViewGroup) this.l;
        ArrayList<l1> arrayList = null;
        boolean z3 = false;
        if (viewGroup != null) {
            j1 j1Var = this.g;
            if (j1Var != null) {
                j1Var.i();
                ArrayList<l1> arrayListL = this.g.l();
                int size = arrayListL.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    l1 l1Var = arrayListL.get(i2);
                    if (l1Var.g()) {
                        View childAt = viewGroup.getChildAt(i);
                        l1 itemData = childAt instanceof q1.a ? ((q1.a) childAt).getItemData() : null;
                        View viewC = c(l1Var, childAt, viewGroup);
                        if (l1Var != itemData) {
                            viewC.setPressed(false);
                            viewC.jumpDrawablesToCurrentState();
                        }
                        if (viewC != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewC.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewC);
                            }
                            ((ViewGroup) this.l).addView(viewC, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.n) {
                    z2 = false;
                } else {
                    viewGroup.removeViewAt(i);
                    z2 = true;
                }
                if (!z2) {
                    i++;
                }
            }
        }
        ((View) this.l).requestLayout();
        j1 j1Var2 = this.g;
        if (j1Var2 != null) {
            j1Var2.i();
            ArrayList<l1> arrayList2 = j1Var2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                w9 w9Var = arrayList2.get(i3).A;
                if (w9Var != null) {
                    w9Var.a = this;
                }
            }
        }
        j1 j1Var3 = this.g;
        if (j1Var3 != null) {
            j1Var3.i();
            arrayList = j1Var3.j;
        }
        if (this.q && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z3 = !arrayList.get(0).C;
            } else if (size3 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.n == null) {
                this.n = new d(this.e);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.n.getParent();
            if (viewGroup3 != this.l) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.n);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.l;
                d dVar = this.n;
                ActionMenuView.c cVarQ = actionMenuView.generateDefaultLayoutParams();
                cVarQ.c = true;
                actionMenuView.addView(dVar, cVarQ);
            }
        } else {
            d dVar2 = this.n;
            if (dVar2 != null) {
                Object parent = dVar2.getParent();
                Object obj = this.l;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.n);
                }
            }
        }
        ((ActionMenuView) this.l).setOverflowReserved(this.q);
    }

    @Override // defpackage.p1
    public boolean p() {
        ArrayList<l1> arrayListL;
        int size;
        int i;
        boolean z;
        j1 j1Var = this.g;
        if (j1Var != null) {
            arrayListL = j1Var.l();
            size = arrayListL.size();
        } else {
            arrayListL = null;
            size = 0;
        }
        int i2 = this.u;
        int i3 = this.t;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.l;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = 2;
            z = true;
            if (i4 >= size) {
                break;
            }
            l1 l1Var = arrayListL.get(i4);
            int i7 = l1Var.y;
            if ((i7 & 2) == 2) {
                i6++;
            } else if ((i7 & 1) == 1) {
                i5++;
            } else {
                z2 = true;
            }
            if (this.v && l1Var.C) {
                i2 = 0;
            }
            i4++;
        }
        if (this.q && (z2 || i5 + i6 > i2)) {
            i2--;
        }
        int i8 = i2 - i6;
        SparseBooleanArray sparseBooleanArray = this.x;
        sparseBooleanArray.clear();
        int i9 = 0;
        int i10 = 0;
        while (i9 < size) {
            l1 l1Var2 = arrayListL.get(i9);
            int i11 = l1Var2.y;
            if ((i11 & 2) == i) {
                View viewC = c(l1Var2, null, viewGroup);
                viewC.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewC.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i10 == 0) {
                    i10 = measuredWidth;
                }
                int i12 = l1Var2.b;
                if (i12 != 0) {
                    sparseBooleanArray.put(i12, z);
                }
                l1Var2.l(z);
            } else if ((i11 & 1) == z) {
                int i13 = l1Var2.b;
                boolean z3 = sparseBooleanArray.get(i13);
                boolean z4 = (i8 > 0 || z3) && i3 > 0;
                if (z4) {
                    View viewC2 = c(l1Var2, null, viewGroup);
                    viewC2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewC2.getMeasuredWidth();
                    i3 -= measuredWidth2;
                    if (i10 == 0) {
                        i10 = measuredWidth2;
                    }
                    z4 &= i3 + i10 > 0;
                }
                if (z4 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z3) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i9; i14++) {
                        l1 l1Var3 = arrayListL.get(i14);
                        if (l1Var3.b == i13) {
                            if (l1Var3.g()) {
                                i8++;
                            }
                            l1Var3.l(false);
                        }
                    }
                }
                if (z4) {
                    i8--;
                }
                l1Var2.l(z4);
            } else {
                l1Var2.l(false);
                i9++;
                i = 2;
                z = true;
            }
            i9++;
            i = 2;
            z = true;
        }
        return true;
    }

    @Override // defpackage.p1
    public void t(Context context, j1 j1Var) {
        this.f = context;
        LayoutInflater.from(context);
        this.g = j1Var;
        Resources resources = context.getResources();
        if (!this.r) {
            this.q = true;
        }
        int i = 2;
        this.s = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.u = i;
        int measuredWidth = this.s;
        if (this.q) {
            if (this.n == null) {
                d dVar = new d(this.e);
                this.n = dVar;
                if (this.p) {
                    dVar.setImageDrawable(this.o);
                    this.o = null;
                    this.p = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.n.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.n.getMeasuredWidth();
        } else {
            this.n = null;
        }
        this.t = measuredWidth;
        this.w = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // defpackage.p1
    public void u(Parcelable parcelable) {
        int i;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).e) > 0 && (menuItemFindItem = this.g.findItem(i)) != null) {
            v((u1) menuItemFindItem.getSubMenu());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.p1
    public boolean v(u1 u1Var) {
        boolean z = false;
        if (!u1Var.hasVisibleItems()) {
            return false;
        }
        u1 u1Var2 = u1Var;
        while (true) {
            j1 j1Var = u1Var2.z;
            if (j1Var == this.g) {
                break;
            }
            u1Var2 = (u1) j1Var;
        }
        l1 l1Var = u1Var2.A;
        ViewGroup viewGroup = (ViewGroup) this.l;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof q1.a) && ((q1.a) childAt).getItemData() == l1Var) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        this.D = u1Var.A.a;
        int size = u1Var.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item = u1Var.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        a aVar = new a(this.f, u1Var, view);
        this.z = aVar;
        aVar.h = z;
        n1 n1Var = aVar.j;
        if (n1Var != null) {
            n1Var.g(z);
        }
        if (!this.z.f()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        p1.a aVar2 = this.i;
        if (aVar2 != null) {
            aVar2.c(u1Var);
        }
        return true;
    }

    @Override // defpackage.p1
    public Parcelable w() {
        SavedState savedState = new SavedState();
        savedState.e = this.D;
        return savedState;
    }
}
