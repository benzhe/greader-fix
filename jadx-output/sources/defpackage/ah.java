package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import java.io.IOException;

/* loaded from: classes.dex */
public class ah implements wg {
    public static final String[] f = new String[0];
    public final SQLiteDatabase e;

    public class a implements SQLiteDatabase.CursorFactory {
        public final /* synthetic */ zg a;

        public a(ah ahVar, zg zgVar) {
            this.a = zgVar;
        }

        @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.a.b(new dh(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public ah(SQLiteDatabase sQLiteDatabase) {
        this.e = sQLiteDatabase;
    }

    public String a() {
        return this.e.getPath();
    }

    public Cursor b(zg zgVar) {
        return this.e.rawQueryWithFactory(new a(this, zgVar), zgVar.a(), f, null);
    }

    public Cursor c(String str) {
        return b(new vg(str));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.e.close();
    }
}
