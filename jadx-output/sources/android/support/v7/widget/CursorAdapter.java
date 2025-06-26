package android.support.v7.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.support.v7.widget.CursorFilter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.a0;
import defpackage.jo;

/* loaded from: classes.dex */
public abstract class CursorAdapter<VH extends RecyclerView.a0> extends RecyclerView.e<VH> implements Filterable, CursorFilter.CursorFilterClient {
    public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
    public CursorAdapter<VH>.ChangeObserver mChangeObserver;
    public Context mContext;
    public Cursor mCursor;
    public CursorFilter mCursorFilter;
    public DataSetObserver mDataSetObserver;
    public boolean mDataValid;
    public FilterQueryProvider mFilterQueryProvider;
    public int mRowIDColumn;

    public class ChangeObserver extends ContentObserver {
        public ChangeObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            CursorAdapter.this.onContentChanged();
        }
    }

    public class MyDataSetObserver extends DataSetObserver {
        private MyDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.mDataValid = true;
            cursorAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.mDataValid = false;
            cursorAdapter.notifyDataSetChanged();
        }
    }

    public CursorAdapter(Context context, Cursor cursor, int i) {
        init(context, cursor, i);
    }

    @Override // android.support.v7.widget.CursorFilter.CursorFilterClient
    public void changeCursor(Cursor cursor) {
        Cursor cursorSwapCursor = swapCursor(cursor);
        if (cursorSwapCursor != null) {
            cursorSwapCursor.close();
        }
    }

    @Override // android.support.v7.widget.CursorFilter.CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCount() {
        Cursor cursor = this.mCursor;
        if (cursor == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.support.v7.widget.CursorFilter.CursorFilterClient
    public Cursor getCursor() {
        return this.mCursor;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.mCursorFilter == null) {
            this.mCursorFilter = new CursorFilter(this);
        }
        return this.mCursorFilter;
    }

    public FilterQueryProvider getFilterQueryProvider() {
        return this.mFilterQueryProvider;
    }

    public Cursor getItem(int i) {
        Cursor cursor;
        if (this.mDataValid && (cursor = this.mCursor) != null && cursor.moveToPosition(i)) {
            return this.mCursor;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        Cursor cursor;
        if (!this.mDataValid || (cursor = this.mCursor) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        Cursor cursor;
        if (this.mDataValid && (cursor = this.mCursor) != null && cursor.moveToPosition(i)) {
            return this.mCursor.getLong(this.mRowIDColumn);
        }
        return 0L;
    }

    public void init(Context context, Cursor cursor, int i) {
        boolean z = cursor != null;
        this.mCursor = cursor;
        this.mDataValid = z;
        this.mContext = context;
        this.mRowIDColumn = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.mChangeObserver = new ChangeObserver();
            this.mDataSetObserver = new MyDataSetObserver();
        } else {
            this.mChangeObserver = null;
            this.mDataSetObserver = null;
        }
        if (z) {
            CursorAdapter<VH>.ChangeObserver changeObserver = this.mChangeObserver;
            if (changeObserver != null) {
                cursor.registerContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.mDataSetObserver;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
        setHasStableIds(true);
    }

    public abstract void onBindViewHolder(Context context, VH vh, Cursor cursor);

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public void onBindViewHolder(VH vh, int i) {
        if (!this.mDataValid) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.mCursor.moveToPosition(i)) {
            throw new IllegalStateException(jo.g("couldn't move cursor to position ", i));
        }
        onBindViewHolder(this.mContext, (Context) vh, this.mCursor);
    }

    public abstract void onContentChanged();

    @Override // android.support.v7.widget.CursorFilter.CursorFilterClient
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.mFilterQueryProvider;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.mCursor;
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        this.mFilterQueryProvider = filterQueryProvider;
    }

    public Cursor swapCursor(Cursor cursor) {
        Cursor cursor2 = this.mCursor;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            CursorAdapter<VH>.ChangeObserver changeObserver = this.mChangeObserver;
            if (changeObserver != null) {
                cursor2.unregisterContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.mDataSetObserver;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.mCursor = cursor;
        if (cursor != null) {
            CursorAdapter<VH>.ChangeObserver changeObserver2 = this.mChangeObserver;
            if (changeObserver2 != null) {
                cursor.registerContentObserver(changeObserver2);
            }
            DataSetObserver dataSetObserver2 = this.mDataSetObserver;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
            this.mDataValid = true;
            notifyDataSetChanged();
        } else {
            this.mRowIDColumn = -1;
            this.mDataValid = false;
            notifyDataSetChanged();
        }
        return cursor2;
    }
}
