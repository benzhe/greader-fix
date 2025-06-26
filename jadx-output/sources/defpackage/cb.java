package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import defpackage.db;

/* loaded from: classes.dex */
public abstract class cb extends BaseAdapter implements Filterable, db.a {
    public boolean e;
    public boolean f;
    public Cursor g;
    public Context h;
    public int i;
    public a j;
    public DataSetObserver k;
    public db l;

    public class a extends ContentObserver {
        public a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Cursor cursor;
            cb cbVar = cb.this;
            if (!cbVar.f || (cursor = cbVar.g) == null || cursor.isClosed()) {
                return;
            }
            cbVar.e = cbVar.g.requery();
        }
    }

    public class b extends DataSetObserver {
        public b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            cb cbVar = cb.this;
            cbVar.e = true;
            cbVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            cb cbVar = cb.this;
            cbVar.e = false;
            cbVar.notifyDataSetInvalidated();
        }
    }

    public cb(Context context, Cursor cursor, boolean z) {
        int i = z ? 1 : 2;
        if ((i & 1) == 1) {
            i |= 2;
            this.f = true;
        } else {
            this.f = false;
        }
        boolean z2 = cursor != null;
        this.g = cursor;
        this.e = z2;
        this.h = context;
        this.i = z2 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.j = new a();
            this.k = new b();
        } else {
            this.j = null;
            this.k = null;
        }
        if (z2) {
            a aVar = this.j;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.k;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public void b(Cursor cursor) {
        Cursor cursor2 = this.g;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                a aVar = this.j;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                DataSetObserver dataSetObserver = this.k;
                if (dataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.g = cursor;
            if (cursor != null) {
                a aVar2 = this.j;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                DataSetObserver dataSetObserver2 = this.k;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.i = cursor.getColumnIndexOrThrow("_id");
                this.e = true;
                notifyDataSetChanged();
            } else {
                this.i = -1;
                this.e = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract CharSequence c(Cursor cursor);

    public abstract View d(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.e || (cursor = this.g) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.e) {
            return null;
        }
        this.g.moveToPosition(i);
        if (view == null) {
            eb ebVar = (eb) this;
            view = ebVar.o.inflate(ebVar.n, viewGroup, false);
        }
        a(view, this.h, this.g);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.l == null) {
            this.l = new db(this);
        }
        return this.l;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.e || (cursor = this.g) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.g;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (this.e && (cursor = this.g) != null && cursor.moveToPosition(i)) {
            return this.g.getLong(this.i);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.e) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.g.moveToPosition(i)) {
            throw new IllegalStateException(jo.g("couldn't move cursor to position ", i));
        }
        if (view == null) {
            view = d(this.h, this.g, viewGroup);
        }
        a(view, this.h, this.g);
        return view;
    }
}
