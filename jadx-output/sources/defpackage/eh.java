package defpackage;

import android.database.sqlite.SQLiteStatement;

/* loaded from: classes.dex */
public class eh extends dh implements yg {
    public final SQLiteStatement f;

    public eh(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f = sQLiteStatement;
    }

    public int a() {
        return this.f.executeUpdateDelete();
    }
}
