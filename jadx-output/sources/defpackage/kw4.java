package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class kw4 extends ww4 {
    public final jw4 c;
    public boolean d;

    public kw4(rx4 rx4Var) {
        super(rx4Var);
        this.c = new jw4(this, this.a.a);
    }

    @Override // defpackage.ww4
    public final boolean h() {
        return false;
    }

    public final void i() {
        int iDelete;
        d();
        try {
            SQLiteDatabase sQLiteDatabaseL = l();
            if (sQLiteDatabaseL == null || (iDelete = sQLiteDatabaseL.delete("messages", null, null)) <= 0) {
                return;
            }
            this.a.a().n.b("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e) {
            this.a.a().f.b("Error resetting local analytics data. error", e);
        }
    }

    public final boolean k() {
        d();
        if (!this.d && this.a.a.getDatabasePath("google_app_measurement_local.db").exists()) {
            int i = 5;
            for (int i2 = 0; i2 < 5; i2++) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase sQLiteDatabaseL = l();
                    if (sQLiteDatabaseL == null) {
                        this.d = true;
                        return false;
                    }
                    sQLiteDatabaseL.beginTransaction();
                    sQLiteDatabaseL.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    sQLiteDatabaseL.setTransactionSuccessful();
                    sQLiteDatabaseL.endTransaction();
                    sQLiteDatabaseL.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i);
                    i += 20;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteFullException e) {
                    this.a.a().f.b("Error deleting app launch break from local database", e);
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                } catch (SQLiteException e2) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    this.a.a().f.b("Error deleting app launch break from local database", e2);
                    this.d = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.a.a().i.a("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    public final SQLiteDatabase l() throws SQLiteException {
        if (this.d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.d = true;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012a  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kw4.n(int, byte[]):boolean");
    }
}
