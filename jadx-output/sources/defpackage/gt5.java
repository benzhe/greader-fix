package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteProgram;
import android.database.sqlite.SQLiteTransactionListener;
import com.google.firebase.Timestamp;
import defpackage.js5;
import defpackage.qx5;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* loaded from: classes.dex */
public final class gt5 extends ts5 {
    public final SQLiteOpenHelper b;
    public final ur5 c;
    public final st5 d;
    public final at5 e;
    public final lt5 f;
    public final ct5 g;
    public final SQLiteTransactionListener h;
    public SQLiteDatabase i;
    public boolean j;

    public class a implements SQLiteTransactionListener {
        public a() {
        }

        @Override // android.database.sqlite.SQLiteTransactionListener
        public void onBegin() {
            gt5.this.g.c();
        }

        @Override // android.database.sqlite.SQLiteTransactionListener
        public void onCommit() {
            gt5.this.g.b();
        }

        @Override // android.database.sqlite.SQLiteTransactionListener
        public void onRollback() {
        }
    }

    public static class b extends SQLiteOpenHelper {
        public final ur5 e;
        public boolean f;

        public b(Context context, ur5 ur5Var, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 11);
            this.e = ur5Var;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f = true;
            sQLiteDatabase.rawQuery("PRAGMA locking_mode = EXCLUSIVE", new String[0]).close();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) throws Throwable {
            if (!this.f) {
                onConfigure(sQLiteDatabase);
            }
            new rt5(sQLiteDatabase, this.e).c(0);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (this.f) {
                return;
            }
            onConfigure(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.f) {
                return;
            }
            onConfigure(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws Throwable {
            if (!this.f) {
                onConfigure(sQLiteDatabase);
            }
            new rt5(sQLiteDatabase, this.e).c(i);
        }
    }

    public static class c {
        public final SQLiteDatabase a;
        public final String b;
        public SQLiteDatabase.CursorFactory c;

        public c(SQLiteDatabase sQLiteDatabase, String str) {
            this.a = sQLiteDatabase;
            this.b = str;
        }

        public c a(Object... objArr) {
            this.c = new ht5(objArr);
            return this;
        }

        public int b(kx5<Cursor> kx5Var) {
            Cursor cursorC = c();
            int i = 0;
            while (cursorC.moveToNext()) {
                try {
                    i++;
                    kx5Var.accept(cursorC);
                } catch (Throwable th) {
                    if (cursorC != null) {
                        try {
                            cursorC.close();
                        } catch (Throwable unused) {
                        }
                    }
                    throw th;
                }
            }
            cursorC.close();
            return i;
        }

        public final Cursor c() {
            SQLiteDatabase.CursorFactory cursorFactory = this.c;
            return cursorFactory != null ? this.a.rawQueryWithFactory(cursorFactory, this.b, null, null) : this.a.rawQuery(this.b, null);
        }
    }

    public gt5(Context context, String str, wt5 wt5Var, ur5 ur5Var, js5.a aVar) {
        try {
            b bVar = new b(context, ur5Var, "firestore." + URLEncoder.encode(str, "utf-8") + "." + URLEncoder.encode(wt5Var.e, "utf-8") + "." + URLEncoder.encode(wt5Var.f, "utf-8"));
            this.h = new a();
            this.b = bVar;
            this.c = ur5Var;
            this.d = new st5(this, ur5Var);
            this.e = new at5(this);
            this.f = new lt5(this, ur5Var);
            this.g = new ct5(this, aVar);
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static void j(SQLiteProgram sQLiteProgram, Object[] objArr) {
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                sQLiteProgram.bindNull(i + 1);
            } else if (obj instanceof String) {
                sQLiteProgram.bindString(i + 1, (String) obj);
            } else if (obj instanceof Integer) {
                sQLiteProgram.bindLong(i + 1, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                sQLiteProgram.bindLong(i + 1, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                sQLiteProgram.bindDouble(i + 1, ((Double) obj).doubleValue());
            } else {
                if (!(obj instanceof byte[])) {
                    bx5.a("Unknown argument %s of type %s", obj, obj.getClass());
                    throw null;
                }
                sQLiteProgram.bindBlob(i + 1, (byte[]) obj);
            }
        }
    }

    @Override // defpackage.ts5
    public sr5 a() {
        return this.e;
    }

    @Override // defpackage.ts5
    public ss5 b(tp5 tp5Var) {
        return new ft5(this, this.c, tp5Var);
    }

    @Override // defpackage.ts5
    public xs5 c() {
        return this.g;
    }

    @Override // defpackage.ts5
    public zs5 d() {
        return this.f;
    }

    @Override // defpackage.ts5
    public tt5 e() {
        return this.d;
    }

    @Override // defpackage.ts5
    public boolean f() {
        return this.j;
    }

    @Override // defpackage.ts5
    public <T> T g(String str, rx5<T> rx5Var) {
        qx5.a(qx5.a.DEBUG, ts5.a, "Starting transaction: %s", str);
        this.i.beginTransactionWithListener(this.h);
        try {
            T t = rx5Var.get();
            this.i.setTransactionSuccessful();
            return t;
        } finally {
            this.i.endTransaction();
        }
    }

    @Override // defpackage.ts5
    public void h(String str, Runnable runnable) {
        qx5.a(qx5.a.DEBUG, ts5.a, "Starting transaction: %s", str);
        this.i.beginTransactionWithListener(this.h);
        try {
            runnable.run();
            this.i.setTransactionSuccessful();
        } finally {
            this.i.endTransaction();
        }
    }

    @Override // defpackage.ts5
    public void i() {
        boolean z;
        bx5.c(!this.j, "SQLitePersistence double-started!", new Object[0]);
        this.j = true;
        try {
            this.i = this.b.getWritableDatabase();
            st5 st5Var = this.d;
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = st5Var.a.i.rawQuery("SELECT highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos, target_count FROM target_globals LIMIT 1", null);
                if (cursorRawQuery.moveToFirst()) {
                    st5Var.c = cursorRawQuery.getInt(0);
                    st5Var.d = cursorRawQuery.getInt(1);
                    st5Var.e = new ju5(new Timestamp(cursorRawQuery.getLong(2), cursorRawQuery.getInt(3)));
                    st5Var.f = cursorRawQuery.getLong(4);
                    cursorRawQuery.close();
                    z = true;
                } else {
                    cursorRawQuery.close();
                    z = false;
                }
                bx5.c(z, "Missing target_globals entry", new Object[0]);
                this.g.b = new sq5(this.d.d);
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th;
            }
        } catch (SQLiteDatabaseLockedException e) {
            throw new RuntimeException("Failed to gain exclusive lock to the Cloud Firestore client's offline persistence. This generally means you are using Cloud Firestore from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing Cloud Firestore in your Application class. If you are intentionally using Cloud Firestore from multiple processes, you can only enable offline persistence (that is, call setPersistenceEnabled(true)) in one of them.", e);
        }
    }

    public c k(String str) {
        return new c(this.i, str);
    }
}
