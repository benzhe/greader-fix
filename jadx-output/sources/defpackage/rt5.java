package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.Log;
import defpackage.ev5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class rt5 {
    public final SQLiteDatabase a;
    public final ur5 b;

    public rt5(SQLiteDatabase sQLiteDatabase, ur5 ur5Var) {
        this.a = sQLiteDatabase;
        this.b = ur5Var;
    }

    public final void a() {
        Cursor cursorRawQuery = this.a.rawQuery("SELECT target_id, target_proto FROM targets", null);
        while (cursorRawQuery.moveToNext()) {
            try {
                int i = cursorRawQuery.getInt(0);
                try {
                    ev5.b bVarD = ev5.T(cursorRawQuery.getBlob(1)).d();
                    bVarD.o();
                    ev5.F((ev5) bVarD.f);
                    this.a.execSQL("UPDATE targets SET target_proto = ? WHERE target_id = ?", new Object[]{bVarD.l().b(), Integer.valueOf(i)});
                } catch (kj6 unused) {
                    bx5.a("Failed to decode Query data for target %s", Integer.valueOf(i));
                    throw null;
                }
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable unused2) {
                    }
                }
                throw th;
            }
        }
        cursorRawQuery.close();
    }

    public final void b(String[] strArr, Runnable runnable) {
        String string;
        String strS = jo.s(jo.z("["), TextUtils.join(", ", strArr), "]");
        boolean z = false;
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            boolean zE = e(str);
            if (i == 0) {
                z = zE;
            } else if (zE != z) {
                String strO = jo.o("Expected all of ", strS, " to either exist or not, but ");
                if (z) {
                    StringBuilder sbZ = jo.z(strO);
                    sbZ.append(strArr[0]);
                    sbZ.append(" exists and ");
                    sbZ.append(str);
                    sbZ.append(" does not");
                    string = sbZ.toString();
                } else {
                    StringBuilder sbZ2 = jo.z(strO);
                    sbZ2.append(strArr[0]);
                    sbZ2.append(" does not exist and ");
                    sbZ2.append(str);
                    sbZ2.append(" does");
                    string = sbZ2.toString();
                }
                throw new IllegalStateException(string);
            }
        }
        if (!z) {
            runnable.run();
            return;
        }
        Log.d("SQLiteSchema", "Skipping migration because all of " + strS + " already exist");
    }

    public void c(int i) throws Throwable {
        Long lValueOf;
        boolean z = true;
        if (i < 1) {
            b(new String[]{"mutation_queues", "mutations", "document_mutations"}, new Runnable(this) { // from class: mt5
                public final rt5 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public void run() throws SQLException {
                    rt5 rt5Var = this.e;
                    rt5Var.a.execSQL("CREATE TABLE mutation_queues (uid TEXT PRIMARY KEY, last_acknowledged_batch_id INTEGER, last_stream_token BLOB)");
                    rt5Var.a.execSQL("CREATE TABLE mutations (uid TEXT, batch_id INTEGER, mutations BLOB, PRIMARY KEY (uid, batch_id))");
                    rt5Var.a.execSQL("CREATE TABLE document_mutations (uid TEXT, path TEXT, batch_id INTEGER, PRIMARY KEY (uid, path, batch_id))");
                }
            });
            b(new String[]{"targets", "target_globals", "target_documents"}, new Runnable(this) { // from class: ot5
                public final rt5 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public void run() throws SQLException {
                    rt5 rt5Var = this.e;
                    rt5Var.a.execSQL("CREATE TABLE targets (target_id INTEGER PRIMARY KEY, canonical_id TEXT, snapshot_version_seconds INTEGER, snapshot_version_nanos INTEGER, resume_token BLOB, last_listen_sequence_number INTEGER,target_proto BLOB)");
                    rt5Var.a.execSQL("CREATE INDEX query_targets ON targets (canonical_id, target_id)");
                    rt5Var.a.execSQL("CREATE TABLE target_globals (highest_target_id INTEGER, highest_listen_sequence_number INTEGER, last_remote_snapshot_version_seconds INTEGER, last_remote_snapshot_version_nanos INTEGER)");
                    rt5Var.a.execSQL("CREATE TABLE target_documents (target_id INTEGER, path TEXT, PRIMARY KEY (target_id, path))");
                    rt5Var.a.execSQL("CREATE INDEX document_targets ON target_documents (path, target_id)");
                }
            });
            b(new String[]{"remote_documents"}, new Runnable(this) { // from class: pt5
                public final rt5 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public void run() throws SQLException {
                    this.e.a.execSQL("CREATE TABLE remote_documents (path TEXT PRIMARY KEY, contents BLOB)");
                }
            });
        }
        if (i < 3 && i != 0) {
            if (e("targets")) {
                this.a.execSQL("DROP TABLE targets");
            }
            if (e("target_globals")) {
                this.a.execSQL("DROP TABLE target_globals");
            }
            if (e("target_documents")) {
                this.a.execSQL("DROP TABLE target_documents");
            }
            b(new String[]{"targets", "target_globals", "target_documents"}, new Runnable(this) { // from class: ot5
                public final rt5 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public void run() throws SQLException {
                    rt5 rt5Var = this.e;
                    rt5Var.a.execSQL("CREATE TABLE targets (target_id INTEGER PRIMARY KEY, canonical_id TEXT, snapshot_version_seconds INTEGER, snapshot_version_nanos INTEGER, resume_token BLOB, last_listen_sequence_number INTEGER,target_proto BLOB)");
                    rt5Var.a.execSQL("CREATE INDEX query_targets ON targets (canonical_id, target_id)");
                    rt5Var.a.execSQL("CREATE TABLE target_globals (highest_target_id INTEGER, highest_listen_sequence_number INTEGER, last_remote_snapshot_version_seconds INTEGER, last_remote_snapshot_version_nanos INTEGER)");
                    rt5Var.a.execSQL("CREATE TABLE target_documents (target_id INTEGER, path TEXT, PRIMARY KEY (target_id, path))");
                    rt5Var.a.execSQL("CREATE INDEX document_targets ON target_documents (path, target_id)");
                }
            });
        }
        Cursor cursor = null;
        if (i < 4) {
            if (!(DatabaseUtils.queryNumEntries(this.a, "target_globals") == 1)) {
                this.a.execSQL("INSERT INTO target_globals (highest_target_id, highest_listen_sequence_number, last_remote_snapshot_version_seconds, last_remote_snapshot_version_nanos) VALUES (?, ?, ?, ?)", new String[]{"0", "0", "0", "0"});
            }
            if (!d("target_globals", "target_count")) {
                this.a.execSQL("ALTER TABLE target_globals ADD COLUMN target_count INTEGER");
            }
            long jQueryNumEntries = DatabaseUtils.queryNumEntries(this.a, "targets");
            ContentValues contentValues = new ContentValues();
            contentValues.put("target_count", Long.valueOf(jQueryNumEntries));
            this.a.update("target_globals", contentValues, null, null);
        }
        if (i < 5 && !d("target_documents", "sequence_number")) {
            this.a.execSQL("ALTER TABLE target_documents ADD COLUMN sequence_number INTEGER");
        }
        if (i < 6) {
            SQLiteDatabase sQLiteDatabase = this.a;
            kx5 kx5Var = new kx5(this) { // from class: nt5
                public final rt5 a;

                {
                    this.a = this;
                }

                @Override // defpackage.kx5
                public void accept(Object obj) {
                    rt5 rt5Var = this.a;
                    Cursor cursor2 = (Cursor) obj;
                    String string = cursor2.getString(0);
                    Cursor cursorRawQueryWithFactory = rt5Var.a.rawQueryWithFactory(new ht5(new Object[]{string, Long.valueOf(cursor2.getLong(1))}), "SELECT batch_id FROM mutations WHERE uid = ? AND batch_id <= ?", null, null);
                    while (cursorRawQueryWithFactory.moveToNext()) {
                        try {
                            int i2 = cursorRawQueryWithFactory.getInt(0);
                            SQLiteStatement sQLiteStatementCompileStatement = rt5Var.a.compileStatement("DELETE FROM mutations WHERE uid = ? AND batch_id = ?");
                            sQLiteStatementCompileStatement.bindString(1, string);
                            sQLiteStatementCompileStatement.bindLong(2, i2);
                            bx5.c(sQLiteStatementCompileStatement.executeUpdateDelete() != 0, "Mutatiohn batch (%s, %d) did not exist", string, Integer.valueOf(i2));
                            rt5Var.a.execSQL("DELETE FROM document_mutations WHERE uid = ? AND batch_id = ?", new Object[]{string, Integer.valueOf(i2)});
                        } catch (Throwable th) {
                            if (cursorRawQueryWithFactory != null) {
                                try {
                                    cursorRawQueryWithFactory.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    cursorRawQueryWithFactory.close();
                }
            };
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT uid, last_acknowledged_batch_id FROM mutation_queues", null);
            while (cursorRawQuery.moveToNext()) {
                try {
                    kx5Var.accept(cursorRawQuery);
                } catch (Throwable th) {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Throwable unused) {
                        }
                    }
                    throw th;
                }
            }
            cursorRawQuery.close();
        }
        if (i < 7) {
            try {
                Cursor cursorRawQuery2 = this.a.rawQuery("SELECT highest_listen_sequence_number FROM target_globals LIMIT 1", null);
                try {
                    if (cursorRawQuery2.moveToFirst()) {
                        lValueOf = Long.valueOf(cursorRawQuery2.getLong(0));
                        cursorRawQuery2.close();
                    } else {
                        cursorRawQuery2.close();
                        lValueOf = null;
                    }
                    bx5.c(lValueOf != null, "Missing highest sequence number", new Object[0]);
                    long jLongValue = lValueOf.longValue();
                    SQLiteStatement sQLiteStatementCompileStatement = this.a.compileStatement("INSERT INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)");
                    SQLiteDatabase sQLiteDatabase2 = this.a;
                    ht5 ht5Var = new ht5(new Object[]{100});
                    boolean[] zArr = new boolean[1];
                    while (true) {
                        zArr[0] = false;
                        Cursor cursorRawQueryWithFactory = sQLiteDatabase2.rawQueryWithFactory(ht5Var, "SELECT RD.path FROM remote_documents AS RD WHERE NOT EXISTS (SELECT TD.path FROM target_documents AS TD WHERE RD.path = TD.path AND TD.target_id = 0) LIMIT ?", null, null);
                        while (cursorRawQueryWithFactory.moveToNext()) {
                            try {
                                zArr[0] = z;
                                sQLiteStatementCompileStatement.clearBindings();
                                sQLiteStatementCompileStatement.bindString(z ? 1 : 0, cursorRawQueryWithFactory.getString(0));
                                sQLiteStatementCompileStatement.bindLong(2, jLongValue);
                                bx5.c(sQLiteStatementCompileStatement.executeInsert() != -1, "Failed to insert a sentinel row", new Object[0]);
                                z = true;
                            } catch (Throwable th2) {
                                if (cursorRawQueryWithFactory != null) {
                                    try {
                                        cursorRawQueryWithFactory.close();
                                    } catch (Throwable unused2) {
                                    }
                                }
                                throw th2;
                            }
                        }
                        cursorRawQueryWithFactory.close();
                        if (!zArr[0]) {
                            break;
                        } else {
                            z = true;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = cursorRawQuery2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        if (i < 8) {
            b(new String[]{"collection_parents"}, new Runnable(this) { // from class: qt5
                public final rt5 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public void run() throws SQLException {
                    this.e.a.execSQL("CREATE TABLE collection_parents (collection_id TEXT, parent TEXT, PRIMARY KEY(collection_id, parent))");
                }
            });
            HashMap map = new HashMap();
            SQLiteStatement sQLiteStatementCompileStatement2 = this.a.compileStatement("INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)");
            Cursor cursorRawQuery3 = this.a.rawQuery("SELECT path FROM remote_documents", null);
            while (cursorRawQuery3.moveToNext()) {
                try {
                    iu5 iu5VarL = c50.K(cursorRawQuery3.getString(0)).L();
                    bx5.c(iu5VarL.I() % 2 == 1, "Expected a collection path.", new Object[0]);
                    String strX = iu5VarL.x();
                    iu5 iu5VarL2 = iu5VarL.L();
                    HashSet hashSet = (HashSet) map.get(strX);
                    if (hashSet == null) {
                        hashSet = new HashSet();
                        map.put(strX, hashSet);
                    }
                    if (hashSet.add(iu5VarL2)) {
                        String strX2 = iu5VarL.x();
                        iu5 iu5VarL3 = iu5VarL.L();
                        sQLiteStatementCompileStatement2.clearBindings();
                        sQLiteStatementCompileStatement2.bindString(1, strX2);
                        sQLiteStatementCompileStatement2.bindString(2, c50.Q(iu5VarL3));
                        sQLiteStatementCompileStatement2.execute();
                    }
                } catch (Throwable th5) {
                    if (cursorRawQuery3 != null) {
                        try {
                            cursorRawQuery3.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    throw th5;
                }
            }
            cursorRawQuery3.close();
            Cursor cursorRawQuery4 = this.a.rawQuery("SELECT path FROM document_mutations", null);
            while (cursorRawQuery4.moveToNext()) {
                try {
                    iu5 iu5VarL4 = c50.K(cursorRawQuery4.getString(0)).L();
                    bx5.c(iu5VarL4.I() % 2 == 1, "Expected a collection path.", new Object[0]);
                    String strX3 = iu5VarL4.x();
                    iu5 iu5VarL5 = iu5VarL4.L();
                    HashSet hashSet2 = (HashSet) map.get(strX3);
                    if (hashSet2 == null) {
                        hashSet2 = new HashSet();
                        map.put(strX3, hashSet2);
                    }
                    if (hashSet2.add(iu5VarL5)) {
                        String strX4 = iu5VarL4.x();
                        iu5 iu5VarL6 = iu5VarL4.L();
                        sQLiteStatementCompileStatement2.clearBindings();
                        sQLiteStatementCompileStatement2.bindString(1, strX4);
                        sQLiteStatementCompileStatement2.bindString(2, c50.Q(iu5VarL6));
                        sQLiteStatementCompileStatement2.execute();
                    }
                } catch (Throwable th6) {
                    if (cursorRawQuery4 != null) {
                        try {
                            cursorRawQuery4.close();
                        } catch (Throwable unused4) {
                        }
                    }
                    throw th6;
                }
            }
            cursorRawQuery4.close();
        }
        if (i < 9) {
            boolean zD = d("remote_documents", "read_time_seconds");
            boolean zD2 = d("remote_documents", "read_time_nanos");
            bx5.c(zD == zD2, "Table contained just one of read_time_seconds or read_time_nanos", new Object[0]);
            if (zD && zD2) {
                a();
            } else {
                this.a.execSQL("ALTER TABLE remote_documents ADD COLUMN read_time_seconds INTEGER");
                this.a.execSQL("ALTER TABLE remote_documents ADD COLUMN read_time_nanos INTEGER");
            }
        }
        if (i == 9) {
            a();
        }
        if (i < 11) {
            Cursor cursorRawQuery5 = this.a.rawQuery("SELECT target_id, target_proto FROM targets", null);
            while (cursorRawQuery5.moveToNext()) {
                try {
                    int i2 = cursorRawQuery5.getInt(0);
                    try {
                        this.a.execSQL("UPDATE targets SET canonical_id  = ? WHERE target_id = ?", new Object[]{this.b.c(ev5.T(cursorRawQuery5.getBlob(1))).a.a(), Integer.valueOf(i2)});
                    } catch (kj6 unused5) {
                        bx5.a("Failed to decode Query data for target %s", Integer.valueOf(i2));
                        throw null;
                    }
                } catch (Throwable th7) {
                    if (cursorRawQuery5 != null) {
                        try {
                            cursorRawQuery5.close();
                        } catch (Throwable unused6) {
                        }
                    }
                    throw th7;
                }
            }
            cursorRawQuery5.close();
        }
    }

    public final boolean d(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.a.rawQuery("PRAGMA table_info(" + str + ")", null);
            int columnIndex = cursorRawQuery.getColumnIndex(InetAddressKeys.KEY_NAME);
            while (cursorRawQuery.moveToNext()) {
                arrayList.add(cursorRawQuery.getString(columnIndex));
            }
            cursorRawQuery.close();
            return arrayList.indexOf(str2) != -1;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final boolean e(String str) {
        Cursor cursorRawQueryWithFactory = null;
        try {
            cursorRawQueryWithFactory = this.a.rawQueryWithFactory(new ht5(new Object[]{str}), "SELECT 1=1 FROM sqlite_master WHERE tbl_name = ?", null, null);
            boolean z = !cursorRawQueryWithFactory.moveToFirst();
            cursorRawQueryWithFactory.close();
            return !z;
        } catch (Throwable th) {
            if (cursorRawQueryWithFactory != null) {
                cursorRawQueryWithFactory.close();
            }
            throw th;
        }
    }
}
