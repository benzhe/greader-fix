package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class sy1 extends SQLiteOpenHelper {
    public final Context e;
    public final zv2 f;

    public sy1(Context context, zv2 zv2Var) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) os3.j.f.a(y40.W4)).intValue());
        this.e = context;
        this.f = zv2Var;
    }

    public static void a(SQLiteDatabase sQLiteDatabase, ls0 ls0Var) {
        sQLiteDatabase.beginTransaction();
        try {
            Cursor cursorQuery = sQLiteDatabase.query("offline_buffered_pings", new String[]{"url"}, "event_state = 1", null, null, null, "timestamp ASC", null);
            int count = cursorQuery.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (cursorQuery.moveToNext()) {
                int columnIndex = cursorQuery.getColumnIndex("url");
                if (columnIndex != -1) {
                    strArr[i] = cursorQuery.getString(columnIndex);
                }
                i++;
            }
            cursorQuery.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            for (int i2 = 0; i2 < count; i2++) {
                ls0Var.a(strArr[i2]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    public final void c(jo2<SQLiteDatabase, Void> jo2Var) {
        aw2 aw2VarY = this.f.y(new Callable(this) { // from class: ry1
            public final sy1 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.e.getWritableDatabase();
            }
        });
        xy1 xy1Var = new xy1(jo2Var);
        aw2VarY.i(new sv2(aw2VarY, xy1Var), this.f);
    }

    public final void e(String str) {
        c(new vy1(this, str));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }
}
