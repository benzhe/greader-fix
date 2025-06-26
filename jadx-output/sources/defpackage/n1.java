package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public abstract class n1 implements s1, p1, AdapterView.OnItemClickListener {
    public Rect e;

    public static int e(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        i1 i1Var = (i1) listAdapter;
        int count = i1Var.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < count; i4++) {
            int itemViewType = i1Var.getItemViewType(i4);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = i1Var.getView(i4, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth > i2) {
                i2 = measuredWidth;
            }
        }
        return i2;
    }

    public static boolean x(j1 j1Var) {
        int size = j1Var.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = j1Var.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    public abstract void c(j1 j1Var);

    public boolean d() {
        return true;
    }

    public abstract void f(View view);

    public abstract void g(boolean z);

    public abstract void i(int i);

    public abstract void j(int i);

    public abstract void k(PopupWindow.OnDismissListener onDismissListener);

    public abstract void l(boolean z);

    public abstract void m(int i);

    @Override // defpackage.p1
    public int n() {
        return 0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (i1) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (i1) listAdapter).e.s((MenuItem) listAdapter.getItem(i), this, d() ? 0 : 4);
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
    }
}
