package defpackage;

import android.content.Context;
import android.database.DataSetObserver;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.cocosw.bottomsheet.HeaderLayout;
import com.cocosw.bottomsheet.PinnedSectionGridView;

/* loaded from: classes.dex */
public class to extends BaseAdapter {
    public int f;
    public LayoutInflater g;
    public ListAdapter h;
    public Context k;
    public View l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public GridView u;
    public int v;
    public int w;
    public boolean e = true;
    public SparseArray<b> i = new SparseArray<>();
    public b[] j = new b[0];

    public class a extends DataSetObserver {
        public a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            to.this.e = !r0.h.isEmpty();
            to.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            to toVar = to.this;
            toVar.e = false;
            toVar.notifyDataSetInvalidated();
        }
    }

    public static class b {
        public int a;
        public int b;
        public CharSequence c;
        public int d = 0;

        public b(int i, CharSequence charSequence) {
            this.a = i;
            this.c = charSequence;
        }
    }

    public to(Context context, BaseAdapter baseAdapter, int i, int i2, int i3) {
        this.g = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f = i;
        this.v = i2;
        this.w = i3;
        this.h = baseAdapter;
        this.k = context;
        baseAdapter.registerDataSetObserver(new a());
    }

    public final int a() {
        int i = this.m;
        if (i > 0) {
            return i;
        }
        if (this.o != this.u.getWidth()) {
            this.r = this.u.getStretchMode();
            this.o = ((PinnedSectionGridView) this.u).getWidth() - (this.u.getPaddingRight() + this.u.getPaddingLeft());
            this.n = ((PinnedSectionGridView) this.u).getNumColumns();
            this.s = ((PinnedSectionGridView) this.u).getColumnWidth();
            this.t = ((PinnedSectionGridView) this.u).getHorizontalSpacing();
        }
        int i2 = this.o;
        int i3 = this.n;
        int i4 = this.s;
        int i5 = this.t;
        int i6 = (i2 - (i3 * i4)) - ((i3 - 1) * i5);
        int i7 = this.r;
        if (i7 == 0) {
            this.o = i2 - i6;
            this.p = i4;
            this.q = i5;
        } else if (i7 == 1) {
            this.p = i4;
            if (i3 > 1) {
                this.q = (i6 / (i3 - 1)) + i5;
            } else {
                this.q = i5 + i6;
            }
        } else if (i7 == 2) {
            this.p = (i6 / i3) + i4;
            this.q = i5;
        } else if (i7 == 3) {
            this.p = i4;
            this.q = i5;
            this.o = (i5 * 2) + (i2 - i6);
        }
        int i8 = ((this.p + this.q) * (i3 - 1)) + this.o;
        this.m = i8;
        return i8;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.h.areAllItemsEnabled();
    }

    public boolean b(int i) {
        return this.i.get(i) != null;
    }

    public int c(int i) {
        if (b(i)) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.i.size() && this.i.valueAt(i3).b <= i; i3++) {
            i2--;
        }
        return i + i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (!this.e) {
            return 0;
        }
        return this.i.size() + this.h.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return b(i) ? this.i.get(i) : this.h.getItem(c(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return b(i) ? Integer.MAX_VALUE - this.i.indexOfKey(i) : this.h.getItemId(c(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return b(i) ? getViewTypeCount() - 1 : this.h.getItemViewType(c(i));
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!b(i)) {
            View view2 = this.h.getView(c(i), view, viewGroup);
            this.l = view2;
            return view2;
        }
        if (view == null || view.findViewById(this.v) == null) {
            view = this.g.inflate(this.f, viewGroup, false);
        }
        int i2 = this.i.get(i).d;
        if (i2 == 1) {
            HeaderLayout headerLayout = (HeaderLayout) view.findViewById(this.v);
            if (!TextUtils.isEmpty(this.i.get(i).c)) {
                ((TextView) view.findViewById(this.w)).setText(this.i.get(i).c);
            }
            headerLayout.e = a();
            return view;
        }
        if (i2 != 2) {
            View view3 = this.l;
            so soVar = new so(this.k);
            soVar.e = view3;
            return soVar;
        }
        HeaderLayout headerLayout2 = (HeaderLayout) view.findViewById(this.v);
        if (!TextUtils.isEmpty(this.i.get(i).c)) {
            ((TextView) view.findViewById(this.w)).setText(this.i.get(i).c);
        }
        headerLayout2.e = 0;
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.h.getViewTypeCount() + 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.h.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.h.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        if (b(i)) {
            return false;
        }
        return this.h.isEnabled(c(i));
    }
}
