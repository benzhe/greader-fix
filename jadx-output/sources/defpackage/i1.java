package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import defpackage.q1;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class i1 extends BaseAdapter {
    public j1 e;
    public int f = -1;
    public boolean g;
    public final boolean h;
    public final LayoutInflater i;
    public final int j;

    public i1(j1 j1Var, LayoutInflater layoutInflater, boolean z, int i) {
        this.h = z;
        this.i = layoutInflater;
        this.e = j1Var;
        this.j = i;
        a();
    }

    public void a() {
        j1 j1Var = this.e;
        l1 l1Var = j1Var.v;
        if (l1Var != null) {
            j1Var.i();
            ArrayList<l1> arrayList = j1Var.j;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i) == l1Var) {
                    this.f = i;
                    return;
                }
            }
        }
        this.f = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public l1 getItem(int i) {
        ArrayList<l1> arrayListL;
        if (this.h) {
            j1 j1Var = this.e;
            j1Var.i();
            arrayListL = j1Var.j;
        } else {
            arrayListL = this.e.l();
        }
        int i2 = this.f;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return arrayListL.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<l1> arrayListL;
        if (this.h) {
            j1 j1Var = this.e;
            j1Var.i();
            arrayListL = j1Var.j;
        } else {
            arrayListL = this.e.l();
        }
        return this.f < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.i.inflate(this.j, viewGroup, false);
        }
        int i2 = getItem(i).b;
        int i3 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.e.m() && i2 != (i3 >= 0 ? getItem(i3).b : i2));
        q1.a aVar = (q1.a) view;
        if (this.g) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.d(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
