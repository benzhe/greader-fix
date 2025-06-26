package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;

/* loaded from: classes.dex */
public final /* synthetic */ class ht5 implements SQLiteDatabase.CursorFactory {
    public final Object[] a;

    public ht5(Object[] objArr) {
        this.a = objArr;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        gt5.j(sQLiteQuery, this.a);
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
