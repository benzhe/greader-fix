package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public final /* synthetic */ class ty1 implements Runnable {
    public final SQLiteDatabase e;
    public final String f;
    public final ls0 g;

    public ty1(SQLiteDatabase sQLiteDatabase, String str, ls0 ls0Var) {
        this.e = sQLiteDatabase;
        this.f = str;
        this.g = ls0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SQLiteDatabase sQLiteDatabase = this.e;
        String str = this.f;
        ls0 ls0Var = this.g;
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        sy1.a(sQLiteDatabase, ls0Var);
    }
}
