package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.a0;
import com.noinnion.android.greader.reader.R;
import com.tr4android.recyclerviewslideitem.R$layout;
import com.tr4android.recyclerviewslideitem.SwipeItem;
import defpackage.u27;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class t27<VH extends RecyclerView.a0> extends RecyclerView.e<VH> implements Filterable, u27.a {
    public boolean e;
    public Cursor f;
    public Context g;
    public int h;
    public t27<VH>.b i;
    public DataSetObserver j;
    public u27 k;

    public class a implements SwipeItem.d {
        public final /* synthetic */ RecyclerView.a0 a;

        public a(RecyclerView.a0 a0Var) {
            this.a = a0Var;
        }
    }

    public class b extends ContentObserver {
        public b() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Objects.requireNonNull((er6) t27.this);
        }
    }

    public class c extends DataSetObserver {
        public c(a aVar) {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            t27 t27Var = t27.this;
            t27Var.e = true;
            t27Var.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            t27 t27Var = t27.this;
            t27Var.e = false;
            t27Var.notifyDataSetChanged();
        }
    }

    public t27(Context context, Cursor cursor, int i) {
        boolean z = cursor != null;
        this.f = cursor;
        this.e = z;
        this.g = context;
        this.h = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.i = new b();
            this.j = new c(null);
        } else {
            this.i = null;
            this.j = null;
        }
        if (z) {
            t27<VH>.b bVar = this.i;
            if (bVar != null) {
                cursor.registerContentObserver(bVar);
            }
            DataSetObserver dataSetObserver = this.j;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
        setHasStableIds(true);
    }

    public void changeCursor(Cursor cursor) {
        Cursor cursor2 = this.f;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                t27<VH>.b bVar = this.i;
                if (bVar != null) {
                    cursor2.unregisterContentObserver(bVar);
                }
                DataSetObserver dataSetObserver = this.j;
                if (dataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.f = cursor;
            if (cursor != null) {
                t27<VH>.b bVar2 = this.i;
                if (bVar2 != null) {
                    cursor.registerContentObserver(bVar2);
                }
                DataSetObserver dataSetObserver2 = this.j;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.h = cursor.getColumnIndexOrThrow("_id");
                this.e = true;
                notifyDataSetChanged();
            } else {
                this.h = -1;
                this.e = false;
                notifyDataSetChanged();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public int getCount() {
        Cursor cursor = this.f;
        if (cursor == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.k == null) {
            this.k = new u27(this);
        }
        return this.k;
    }

    public Cursor getItem(int i) {
        Cursor cursor;
        if (this.e && (cursor = this.f) != null && cursor.moveToPosition(i)) {
            return this.f;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        Cursor cursor;
        if (!this.e || (cursor = this.f) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        Cursor cursor;
        if (this.e && (cursor = this.f) != null && cursor.moveToPosition(i)) {
            return this.f.getLong(this.h);
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:234:0x050c  */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(VH r26, int r27) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.t27.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$a0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        nr6 or6Var;
        SwipeItem swipeItem = (SwipeItem) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.item_swipe, viewGroup, false);
        er6 er6Var = (er6) this;
        Context context = swipeItem.getContext();
        hw6 hw6VarG = on6.g(context);
        boolean z = hw6VarG.s > 0 || hw6VarG.t > 0;
        if (on6.g(context).c == 1) {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.item_grid_row, swipeItem, z);
            int i2 = er6Var.n;
            er6Var.n = i2 + 1;
            or6Var = new mr6(context, viewInflate, i2);
        } else if (on6.g(context).c == 2) {
            View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.item_card_row, swipeItem, z);
            int i3 = er6Var.n;
            er6Var.n = i3 + 1;
            or6Var = new lr6(context, viewInflate2, i3);
        } else {
            or6Var = new or6(context, LayoutInflater.from(context).inflate(R.layout.item_list_row, swipeItem, z));
        }
        or6Var.b(er6Var.q);
        bn6 bn6Var = er6Var.s;
        if (bn6Var != null) {
            or6Var.m.a("EVENT_ITEM_CLICK", bn6Var);
        }
        bn6 bn6Var2 = er6Var.t;
        if (bn6Var2 != null) {
            or6Var.m.a("EVENT_ITEM_LONG_CLICK", bn6Var2);
        }
        bn6 bn6Var3 = er6Var.u;
        if (bn6Var3 != null) {
            or6Var.m.a("EVENT_ITEM_LEFT_ACTION", bn6Var3);
        }
        bn6 bn6Var4 = er6Var.v;
        if (bn6Var4 != null) {
            or6Var.m.a("EVENT_ITEM_RIGHT_ACTION", bn6Var4);
        }
        return or6Var;
    }
}
