package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R$layout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.menu.ExpandedMenuView;
import defpackage.a0;
import defpackage.p1;
import defpackage.q1;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class h1 implements p1, AdapterView.OnItemClickListener {
    public Context e;
    public LayoutInflater f;
    public j1 g;
    public ExpandedMenuView h;
    public int i;
    public p1.a j;
    public a k;

    public class a extends BaseAdapter {
        public int e = -1;

        public a() {
            a();
        }

        public void a() {
            j1 j1Var = h1.this.g;
            l1 l1Var = j1Var.v;
            if (l1Var != null) {
                j1Var.i();
                ArrayList<l1> arrayList = j1Var.j;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    if (arrayList.get(i) == l1Var) {
                        this.e = i;
                        return;
                    }
                }
            }
            this.e = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public l1 getItem(int i) {
            j1 j1Var = h1.this.g;
            j1Var.i();
            ArrayList<l1> arrayList = j1Var.j;
            Objects.requireNonNull(h1.this);
            int i2 = i + 0;
            int i3 = this.e;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            j1 j1Var = h1.this.g;
            j1Var.i();
            int size = j1Var.j.size();
            Objects.requireNonNull(h1.this);
            int i = size + 0;
            return this.e < 0 ? i : i - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                h1 h1Var = h1.this;
                view = h1Var.f.inflate(h1Var.i, viewGroup, false);
            }
            ((q1.a) view).d(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public h1(Context context, int i) {
        this.i = i;
        this.e = context;
        this.f = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.k == null) {
            this.k = new a();
        }
        return this.k;
    }

    @Override // defpackage.p1
    public void b(j1 j1Var, boolean z) {
        p1.a aVar = this.j;
        if (aVar != null) {
            aVar.b(j1Var, z);
        }
    }

    @Override // defpackage.p1
    public int n() {
        return 0;
    }

    @Override // defpackage.p1
    public void o(boolean z) {
        a aVar = this.k;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.g.s(this.k.getItem(i), this, 0);
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
    public void s(p1.a aVar) {
        this.j = aVar;
    }

    @Override // defpackage.p1
    public void t(Context context, j1 j1Var) {
        if (this.e != null) {
            this.e = context;
            if (this.f == null) {
                this.f = LayoutInflater.from(context);
            }
        }
        this.g = j1Var;
        a aVar = this.k;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.p1
    public void u(Parcelable parcelable) {
        SparseArray<Parcelable> sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.h.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // defpackage.p1
    public boolean v(u1 u1Var) {
        if (!u1Var.hasVisibleItems()) {
            return false;
        }
        k1 k1Var = new k1(u1Var);
        a0.a aVar = new a0.a(u1Var.a);
        h1 h1Var = new h1(aVar.a.a, R$layout.abc_list_menu_item_layout);
        k1Var.g = h1Var;
        h1Var.j = k1Var;
        j1 j1Var = k1Var.e;
        j1Var.b(h1Var, j1Var.a);
        ListAdapter listAdapterA = k1Var.g.a();
        AlertController.b bVar = aVar.a;
        bVar.q = listAdapterA;
        bVar.r = k1Var;
        View view = u1Var.o;
        if (view != null) {
            bVar.f = view;
        } else {
            bVar.d = u1Var.n;
            bVar.e = u1Var.m;
        }
        bVar.o = k1Var;
        a0 a0VarA = aVar.a();
        k1Var.f = a0VarA;
        a0VarA.setOnDismissListener(k1Var);
        WindowManager.LayoutParams attributes = k1Var.f.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        k1Var.f.show();
        p1.a aVar2 = this.j;
        if (aVar2 == null) {
            return true;
        }
        aVar2.c(u1Var);
        return true;
    }

    @Override // defpackage.p1
    public Parcelable w() {
        if (this.h == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.h;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }
}
