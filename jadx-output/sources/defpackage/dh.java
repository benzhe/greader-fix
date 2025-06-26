package defpackage;

import android.database.sqlite.SQLiteProgram;

/* loaded from: classes.dex */
public class dh implements yg {
    public final SQLiteProgram e;

    public dh(SQLiteProgram sQLiteProgram) {
        this.e = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.e.close();
    }
}
