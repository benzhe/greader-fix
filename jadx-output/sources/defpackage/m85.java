package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ParcelableSparseArray;
import defpackage.sa;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class m85 implements p1 {
    public NavigationMenuView e;
    public LinearLayout f;
    public j1 g;
    public int h;
    public c i;
    public LayoutInflater j;
    public int k;
    public boolean l;
    public ColorStateList m;
    public ColorStateList n;
    public Drawable o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public int u;
    public int v;
    public int w;
    public boolean t = true;
    public int x = -1;
    public final View.OnClickListener y = new a();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            m85.this.d(true);
            l1 itemData = ((NavigationMenuItemView) view).getItemData();
            m85 m85Var = m85.this;
            boolean zS = m85Var.g.s(itemData, m85Var, 0);
            if (itemData != null && itemData.isCheckable() && zS) {
                m85.this.i.b(itemData);
            } else {
                z = false;
            }
            m85.this.d(false);
            if (z) {
                m85.this.o(false);
            }
        }
    }

    public static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    public class c extends RecyclerView.e<l> {
        public final ArrayList<e> a = new ArrayList<>();
        public l1 b;
        public boolean c;

        public c() {
            a();
        }

        public final void a() {
            if (this.c) {
                return;
            }
            this.c = true;
            this.a.clear();
            this.a.add(new d());
            int i = -1;
            int size = m85.this.g.l().size();
            boolean z = false;
            int i2 = 0;
            boolean z2 = false;
            int size2 = 0;
            while (i2 < size) {
                l1 l1Var = m85.this.g.l().get(i2);
                if (l1Var.isChecked()) {
                    b(l1Var);
                }
                if (l1Var.isCheckable()) {
                    l1Var.k(z);
                }
                if (l1Var.hasSubMenu()) {
                    u1 u1Var = l1Var.o;
                    if (u1Var.hasVisibleItems()) {
                        if (i2 != 0) {
                            this.a.add(new f(m85.this.w, z ? 1 : 0));
                        }
                        this.a.add(new g(l1Var));
                        int size3 = u1Var.size();
                        int i3 = 0;
                        boolean z3 = false;
                        while (i3 < size3) {
                            l1 l1Var2 = (l1) u1Var.getItem(i3);
                            if (l1Var2.isVisible()) {
                                if (!z3 && l1Var2.getIcon() != null) {
                                    z3 = true;
                                }
                                if (l1Var2.isCheckable()) {
                                    l1Var2.k(z);
                                }
                                if (l1Var.isChecked()) {
                                    b(l1Var);
                                }
                                this.a.add(new g(l1Var2));
                            }
                            i3++;
                            z = false;
                        }
                        if (z3) {
                            int size4 = this.a.size();
                            for (int size5 = this.a.size(); size5 < size4; size5++) {
                                ((g) this.a.get(size5)).b = true;
                            }
                        }
                    }
                } else {
                    int i4 = l1Var.b;
                    if (i4 != i) {
                        size2 = this.a.size();
                        z2 = l1Var.getIcon() != null;
                        if (i2 != 0) {
                            size2++;
                            ArrayList<e> arrayList = this.a;
                            int i5 = m85.this.w;
                            arrayList.add(new f(i5, i5));
                        }
                    } else if (!z2 && l1Var.getIcon() != null) {
                        int size6 = this.a.size();
                        for (int i6 = size2; i6 < size6; i6++) {
                            ((g) this.a.get(i6)).b = true;
                        }
                        z2 = true;
                    }
                    g gVar = new g(l1Var);
                    gVar.b = z2;
                    this.a.add(gVar);
                    i = i4;
                }
                i2++;
                z = false;
            }
            this.c = false;
        }

        public void b(l1 l1Var) {
            if (this.b == l1Var || !l1Var.isCheckable()) {
                return;
            }
            l1 l1Var2 = this.b;
            if (l1Var2 != null) {
                l1Var2.setChecked(false);
            }
            this.b = l1Var;
            l1Var.setChecked(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public int getItemCount() {
            return this.a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public int getItemViewType(int i) {
            e eVar = this.a.get(i);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a.hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public void onBindViewHolder(RecyclerView.a0 a0Var, int i) throws Resources.NotFoundException {
            l lVar = (l) a0Var;
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((TextView) lVar.itemView).setText(((g) this.a.get(i)).a.e);
                    return;
                } else {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) this.a.get(i);
                    lVar.itemView.setPadding(0, fVar.a, 0, fVar.b);
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(m85.this.n);
            m85 m85Var = m85.this;
            if (m85Var.l) {
                navigationMenuItemView.setTextAppearance(m85Var.k);
            }
            ColorStateList colorStateList = m85.this.m;
            if (colorStateList != null) {
                navigationMenuItemView.setTextColor(colorStateList);
            }
            Drawable drawable = m85.this.o;
            Drawable drawableNewDrawable = drawable != null ? drawable.getConstantState().newDrawable() : null;
            AtomicInteger atomicInteger = ha.a;
            navigationMenuItemView.setBackground(drawableNewDrawable);
            g gVar = (g) this.a.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.b);
            navigationMenuItemView.setHorizontalPadding(m85.this.p);
            navigationMenuItemView.setIconPadding(m85.this.q);
            m85 m85Var2 = m85.this;
            if (m85Var2.s) {
                navigationMenuItemView.setIconSize(m85Var2.r);
            }
            navigationMenuItemView.setMaxLines(m85.this.u);
            navigationMenuItemView.d(gVar.a, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public RecyclerView.a0 onCreateViewHolder(ViewGroup viewGroup, int i) {
            RecyclerView.a0 iVar;
            if (i == 0) {
                m85 m85Var = m85.this;
                iVar = new i(m85Var.j, viewGroup, m85Var.y);
            } else if (i == 1) {
                iVar = new k(m85.this.j, viewGroup);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return new b(m85.this.f);
                }
                iVar = new j(m85.this.j, viewGroup);
            }
            return iVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public void onViewRecycled(RecyclerView.a0 a0Var) {
            l lVar = (l) a0Var;
            if (lVar instanceof i) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
                FrameLayout frameLayout = navigationMenuItemView.D;
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                }
                navigationMenuItemView.C.setCompoundDrawables(null, null, null, null);
            }
        }
    }

    public static class d implements e {
    }

    public interface e {
    }

    public static class f implements e {
        public final int a;
        public final int b;

        public f(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static class g implements e {
        public final l1 a;
        public boolean b;

        public g(l1 l1Var) {
            this.a = l1Var;
        }
    }

    public class h extends bg {
        public h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // defpackage.bg, defpackage.v9
        public void d(View view, sa saVar) {
            super.d(view, saVar);
            c cVar = m85.this.i;
            int i = m85.this.f.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < m85.this.i.getItemCount(); i2++) {
                if (m85.this.i.getItemViewType(i2) == 0) {
                    i++;
                }
            }
            saVar.s(new sa.b(AccessibilityNodeInfo.CollectionInfo.obtain(i, 0, false)));
        }
    }

    public static class i extends l {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R$layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    public static class j extends l {
        public j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    public static class k extends l {
        public k(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    public static abstract class l extends RecyclerView.a0 {
        public l(View view) {
            super(view);
        }
    }

    public void a(int i2) {
        this.p = i2;
        o(false);
    }

    @Override // defpackage.p1
    public void b(j1 j1Var, boolean z) {
    }

    public void c(int i2) {
        this.q = i2;
        o(false);
    }

    public void d(boolean z) {
        c cVar = this.i;
        if (cVar != null) {
            cVar.c = z;
        }
    }

    public final void e() {
        int i2 = (this.f.getChildCount() == 0 && this.t) ? this.v : 0;
        NavigationMenuView navigationMenuView = this.e;
        navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // defpackage.p1
    public int n() {
        return this.h;
    }

    @Override // defpackage.p1
    public void o(boolean z) {
        c cVar = this.i;
        if (cVar != null) {
            cVar.a();
            cVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.p1
    public boolean p() {
        return false;
    }

    @Override // defpackage.p1
    public boolean q(j1 j1Var, l1 l1Var) {
        return false;
    }

    @Override // defpackage.p1
    public boolean r(j1 j1Var, l1 l1Var) {
        return false;
    }

    @Override // defpackage.p1
    public void t(Context context, j1 j1Var) {
        this.j = LayoutInflater.from(context);
        this.g = j1Var;
        this.w = context.getResources().getDimensionPixelOffset(R$dimen.design_navigation_separator_vertical_padding);
    }

    @Override // defpackage.p1
    public void u(Parcelable parcelable) {
        l1 l1Var;
        View actionView;
        ParcelableSparseArray parcelableSparseArray;
        l1 l1Var2;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.e.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                c cVar = this.i;
                Objects.requireNonNull(cVar);
                int i2 = bundle2.getInt("android:menu:checked", 0);
                if (i2 != 0) {
                    cVar.c = true;
                    int size = cVar.a.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size) {
                            break;
                        }
                        e eVar = cVar.a.get(i3);
                        if ((eVar instanceof g) && (l1Var2 = ((g) eVar).a) != null && l1Var2.a == i2) {
                            cVar.b(l1Var2);
                            break;
                        }
                        i3++;
                    }
                    cVar.c = false;
                    cVar.a();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = cVar.a.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        e eVar2 = cVar.a.get(i4);
                        if ((eVar2 instanceof g) && (l1Var = ((g) eVar2).a) != null && (actionView = l1Var.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray2.get(l1Var.a)) != null) {
                            actionView.restoreHierarchyState(parcelableSparseArray);
                        }
                    }
                }
            }
            SparseArray sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 != null) {
                this.f.restoreHierarchyState(sparseParcelableArray3);
            }
        }
    }

    @Override // defpackage.p1
    public boolean v(u1 u1Var) {
        return false;
    }

    @Override // defpackage.p1
    public Parcelable w() {
        Bundle bundle = new Bundle();
        if (this.e != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.e.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.i;
        if (cVar != null) {
            Objects.requireNonNull(cVar);
            Bundle bundle2 = new Bundle();
            l1 l1Var = cVar.b;
            if (l1Var != null) {
                bundle2.putInt("android:menu:checked", l1Var.a);
            }
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            int size = cVar.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = cVar.a.get(i2);
                if (eVar instanceof g) {
                    l1 l1Var2 = ((g) eVar).a;
                    View actionView = l1Var2 != null ? l1Var2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray2.put(l1Var2.a, parcelableSparseArray);
                    }
                }
            }
            bundle2.putSparseParcelableArray("android:menu:action_views", sparseArray2);
            bundle.putBundle("android:menu:adapter", bundle2);
        }
        if (this.f != null) {
            SparseArray<? extends Parcelable> sparseArray3 = new SparseArray<>();
            this.f.saveHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray3);
        }
        return bundle;
    }
}
