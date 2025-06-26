package com.noinnion.android.greader.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.ap6;
import defpackage.bp6;
import defpackage.ip6;
import defpackage.iw6;
import defpackage.jo;
import defpackage.jp6;
import defpackage.kp6;
import defpackage.lp6;
import defpackage.n56;
import defpackage.zo6;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public class ReaderProvider extends ContentProvider {
    public static final Uri f = Uri.parse("content://com.noinnion.android.greader.reader.provider/reconnect_db");
    public static final Uri g = Uri.parse("content://com.noinnion.android.greader.reader.provider/raw_query");
    public static final Uri h = Uri.parse("content://com.noinnion.android.greader.reader.provider/begin_txn");
    public static final Uri i = Uri.parse("content://com.noinnion.android.greader.reader.provider/success_txn");
    public static final Uri j = Uri.parse("content://com.noinnion.android.greader.reader.provider/end_txn");
    public static final Uri k = Uri.parse("content://com.noinnion.android.greader.reader.provider/items_insert");
    public static final Uri l = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_mark_read");
    public static final Uri m = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_mark_tag");
    public static final Uri n = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_newest_time");
    public static final Uri o = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_unreads");
    public static final Uri p = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_reads");
    public static final Uri q = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_starred");
    public static final Uri r = Uri.parse("content://com.noinnion.android.greader.reader.provider/update_tag2item");
    public static final Uri s = Uri.parse("content://com.noinnion.android.greader.reader.provider/tags_subs");
    public static final Uri t = Uri.parse("content://com.noinnion.android.greader.reader.provider/items_subs");
    public static final UriMatcher u;
    public a e;

    public class a extends SQLiteOpenHelper {
        public boolean e;
        public String f;
        public SQLiteDatabase g;
        public boolean h;

        public a(Context context) {
            super(context, "reader.db", (SQLiteDatabase.CursorFactory) null, 26);
            this.e = true;
            this.f = null;
            this.g = null;
            this.h = false;
            this.f = context.getDatabasePath("reader.db").toString();
            if (iw6.g(context).equals("sdcard") && Environment.getExternalStorageState().equals("mounted")) {
                File file = new File(Environment.getExternalStorageDirectory(), "gReader/db");
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (file.exists() && file.canWrite()) {
                    this.e = false;
                    this.f = new File(file, "reader.db").getAbsolutePath();
                } else {
                    this.e = true;
                    this.f = context.getDatabasePath("reader.db").toString();
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            SQLiteDatabase sQLiteDatabase;
            super.close();
            if (!this.e && (sQLiteDatabase = this.g) != null && sQLiteDatabase.isOpen()) {
                this.g.close();
                this.g = null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v8 */
        @Override // android.database.sqlite.SQLiteOpenHelper
        public synchronized SQLiteDatabase getReadableDatabase() {
            Throwable th;
            SQLiteDatabase sQLiteDatabaseOpenDatabase;
            if (this.e) {
                return super.getReadableDatabase();
            }
            if (!Environment.getExternalStorageState().equals("mounted")) {
                throw new SQLiteDiskIOException("Cannot access external storage: not mounted");
            }
            SQLiteDatabase sQLiteDatabase = this.g;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                return this.g;
            }
            if (this.h) {
                throw new IllegalStateException("getReadableDatabase called recursively");
            }
            try {
                return getWritableDatabase();
            } catch (SQLiteException e) {
                n56.y1("ReaderProvider", e);
                SQLiteDatabase sQLiteDatabase2 = 1;
                try {
                    try {
                        this.h = true;
                        sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(this.f, null, 1);
                        try {
                            if (sQLiteDatabaseOpenDatabase.getVersion() == 26) {
                                onOpen(sQLiteDatabaseOpenDatabase);
                                this.g = sQLiteDatabaseOpenDatabase;
                                this.h = false;
                                if (sQLiteDatabaseOpenDatabase != sQLiteDatabaseOpenDatabase) {
                                    sQLiteDatabaseOpenDatabase.close();
                                }
                                return sQLiteDatabaseOpenDatabase;
                            }
                            throw new SQLiteException("Can't upgrade read-only database from version " + sQLiteDatabaseOpenDatabase.getVersion() + " to 26: " + this.f);
                        } catch (Exception unused) {
                            n56.X1(ReaderProvider.this.getContext(), "Couldn't open reader.db for reading: Check your storage.");
                            this.h = false;
                            if (sQLiteDatabaseOpenDatabase != null && sQLiteDatabaseOpenDatabase != this.g) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        this.h = false;
                        if (sQLiteDatabase2 != 0 && sQLiteDatabase2 != this.g) {
                            sQLiteDatabase2.close();
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th3) {
                    th = th3;
                    sQLiteDatabase2 = 0;
                    this.h = false;
                    if (sQLiteDatabase2 != 0) {
                        sQLiteDatabase2.close();
                    }
                    throw th;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public synchronized SQLiteDatabase getWritableDatabase() {
            if (this.e) {
                return super.getWritableDatabase();
            }
            if (!Environment.getExternalStorageState().equals("mounted")) {
                throw new SQLiteDiskIOException("Cannot access external storage: not mounted");
            }
            SQLiteDatabase sQLiteDatabase = this.g;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen() && !this.g.isReadOnly()) {
                return this.g;
            }
            if (this.h) {
                throw new IllegalStateException("getWritableDatabase called recursively");
            }
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                try {
                    this.h = true;
                    SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(this.f, (SQLiteDatabase.CursorFactory) null);
                    int version = sQLiteDatabaseOpenOrCreateDatabase.getVersion();
                    if (version != 26) {
                        sQLiteDatabaseOpenOrCreateDatabase.beginTransaction();
                        try {
                            if (version == 0) {
                                onCreate(sQLiteDatabaseOpenOrCreateDatabase);
                            } else {
                                onUpgrade(sQLiteDatabaseOpenOrCreateDatabase, version, 26);
                            }
                            sQLiteDatabaseOpenOrCreateDatabase.setVersion(26);
                            sQLiteDatabaseOpenOrCreateDatabase.setTransactionSuccessful();
                            sQLiteDatabaseOpenOrCreateDatabase.endTransaction();
                        } catch (Throwable th) {
                            sQLiteDatabaseOpenOrCreateDatabase.endTransaction();
                            throw th;
                        }
                    }
                    onOpen(sQLiteDatabaseOpenOrCreateDatabase);
                    this.h = false;
                    SQLiteDatabase sQLiteDatabase3 = this.g;
                    if (sQLiteDatabase3 != null) {
                        try {
                            sQLiteDatabase3.close();
                        } catch (Exception unused) {
                        }
                    }
                    this.g = sQLiteDatabaseOpenOrCreateDatabase;
                    return sQLiteDatabaseOpenOrCreateDatabase;
                } catch (Exception e) {
                    throw new SQLiteException(e.getLocalizedMessage());
                }
            } catch (Throwable th2) {
                this.h = false;
                if (0 != 0) {
                    sQLiteDatabase2.close();
                }
                throw th2;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS subscription (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL,title TEXT NOT NULL,feed_url TEXT,html_url TEXT,icon_url TEXT,sortid TEXT,sort INTEGER NOT NULL DEFAULT 0,sort2 INTEGER NOT NULL DEFAULT 0,unread_count INTEGER NOT NULL DEFAULT 0,newest_item_time INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0,sync_excluded INTEGER NOT NULL DEFAULT 0,image_fit INTEGER NOT NULL DEFAULT 1,javascript INTEGER NOT NULL DEFAULT 1,offline_content INTEGER NOT NULL DEFAULT -1,display_content INTEGER NOT NULL DEFAULT -1,link_format INTEGER NOT NULL DEFAULT -1,auto_readability INTEGER NOT NULL DEFAULT -1,user_agent INTEGER NOT NULL DEFAULT -1,notification INTEGER NOT NULL DEFAULT 0,charset TEXT,hidden INTEGER NOT NULL DEFAULT 0)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tag (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL,type INTEGER NOT NULL,label TEXT NOT NULL,sortid TEXT,sort INTEGER NOT NULL DEFAULT 0,unread_count INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0,sync_excluded INTEGER NOT NULL DEFAULT 0,hidden INTEGER NOT NULL DEFAULT 0)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tag2sub (_id integer primary key, tag_uid text not null,sub_id integer not null,sync_time integer not null default 0)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS item (_id INTEGER PRIMARY KEY, sub_id INTEGER NOT NULL,uid TEXT NOT NULL UNIQUE,title TEXT NOT NULL,content TEXT,author TEXT,link TEXT,image TEXT,video TEXT,audio TEXT,sharer TEXT,published_time INTEGER NOT NULL DEFAULT 0,updated_time INTEGER NOT NULL DEFAULT 0,starred INTEGER NOT NULL DEFAULT 0,cached INTEGER NOT NULL DEFAULT 0,read INTEGER NOT NULL DEFAULT 0,read_time INTEGER NOT NULL DEFAULT 0,keep_unread INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS item_sync (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tag2item (_id INTEGER PRIMARY KEY, tag_uid TEXT NOT NULL,item_uid TEXT NOT NULL,action INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY, type INTEGER NOT NULL,params TEXT NOT NULL,sync_time INTEGER NOT NULL DEFAULT 0,done INTEGER NOT NULL DEFAULT 0)");
            for (String[] strArr : ip6.E) {
                sQLiteDatabase.execSQL(ReaderProvider.a("subscription", strArr, true));
            }
            for (String[] strArr2 : lp6.o) {
                sQLiteDatabase.execSQL(ReaderProvider.a("tag", strArr2, true));
            }
            for (String[] strArr3 : kp6.f) {
                sQLiteDatabase.execSQL(ReaderProvider.a("tag2sub", strArr3, true));
            }
            for (String[] strArr4 : ap6.L) {
                sQLiteDatabase.execSQL(ReaderProvider.a(NSRSS20.ITEM, strArr4, true));
            }
            for (String[] strArr5 : bp6.g) {
                sQLiteDatabase.execSQL(ReaderProvider.a("item_sync", strArr5, true));
            }
            for (String[] strArr6 : jp6.g) {
                sQLiteDatabase.execSQL(ReaderProvider.a("tag2item", strArr6, true));
            }
            for (String[] strArr7 : zo6.k) {
                sQLiteDatabase.execSQL(ReaderProvider.a("history", strArr7, true));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
            try {
                for (String str : ip6.h(i)) {
                    sQLiteDatabase.execSQL(str);
                }
                for (String str2 : lp6.f(i)) {
                    sQLiteDatabase.execSQL(str2);
                }
                Uri uri = kp6.e;
                for (String str3 : ap6.r(i)) {
                    sQLiteDatabase.execSQL(str3);
                }
                for (String str4 : bp6.h) {
                    sQLiteDatabase.execSQL(str4);
                }
                Uri uri2 = jp6.e;
                for (String str5 : i < 11 ? new String[]{"CREATE TABLE IF NOT EXISTS tag2item_new (_id INTEGER PRIMARY KEY, tag_uid TEXT NOT NULL,item_uid TEXT NOT NULL,action INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0);", "ALTER TABLE tag2item ADD COLUMN item_uid TEXT NOT NULL DEFAULT '';", "DROP TABLE tag2item;", "ALTER TABLE tag2item_new RENAME TO tag2item;"} : new String[0]) {
                    sQLiteDatabase.execSQL(str5);
                }
                for (String str6 : zo6.l) {
                    sQLiteDatabase.execSQL(str6);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        u = uriMatcher;
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "reconnect_db", 4);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "raw_query", 5);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "begin_txn", 1);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "success_txn", 2);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "end_txn", 3);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "subscription/#", 10);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "subscription", 11);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tag/#", 20);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tag", 21);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tag2sub/#", 30);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tag2sub", 31);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tags_subs", 32);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "item/#", 40);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", NSRSS20.ITEM, 41);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "item/#", 40);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "items_subs", 42);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "items_insert", 44);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "item_sync", 45);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "items_sync_insert", 46);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tag2item/#", 50);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "tag2item", 51);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "history/#", 60);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "history", 61);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_mark_read", 75);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_mark_tag", 73);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_newest_time", 70);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_unreads", 71);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_reads", 72);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_starred", 74);
        uriMatcher.addURI("com.noinnion.android.greader.reader.provider", "update_tag2item", 76);
    }

    public static String a(String str, String[] strArr, boolean z) {
        StringBuilder sb = new StringBuilder(128);
        if (z) {
            sb.append("CREATE INDEX idx_");
        } else {
            sb.append("DROP INDEX idx_");
        }
        sb.append(str);
        for (String str2 : strArr) {
            sb.append("_");
            sb.append(str2);
        }
        jo.H(sb, " on ", str, "(");
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(strArr[i2]);
        }
        sb.append(")");
        return new String(sb);
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder(128);
        sb.append("_id");
        sb.append(" = ?");
        if (!TextUtils.isEmpty(str)) {
            sb.append(" AND ");
            sb.append(str);
        }
        return new String(sb);
    }

    public static String[] c(String str, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        if (strArr == null || strArr.length <= 0) {
            return new String[]{str};
        }
        Collections.addAll(arrayList, strArr);
        arrayList.add(str);
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) throws SQLException {
        SQLiteDatabase writableDatabase = this.e.getWritableDatabase();
        int iMatch = u.match(uri);
        int i2 = 0;
        if (iMatch != 44) {
            if (iMatch != 46) {
                throw new UnsupportedOperationException("unsupported uri: " + uri);
            }
            SQLiteStatement sQLiteStatementCompileStatement = writableDatabase.compileStatement("INSERT INTO item_sync (uid) VALUES (?) ");
            int length = contentValuesArr.length;
            int i3 = 0;
            while (i2 < length) {
                ContentValues contentValues = contentValuesArr[i2];
                if (contentValues != null) {
                    sQLiteStatementCompileStatement.bindString(1, contentValues.getAsString("uid"));
                    sQLiteStatementCompileStatement.execute();
                    i3++;
                }
                i2++;
            }
            sQLiteStatementCompileStatement.close();
            return i3;
        }
        SQLiteStatement sQLiteStatementCompileStatement2 = writableDatabase.compileStatement("INSERT INTO item (uid, sub_id, title, content, author, link, image, video, audio, sharer, published_time, read, read_time, starred, sync_time, updated_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        int length2 = contentValuesArr.length;
        int i4 = 0;
        while (i2 < length2) {
            ContentValues contentValues2 = contentValuesArr[i2];
            if (contentValues2 != null) {
                sQLiteStatementCompileStatement2.bindString(1, contentValues2.getAsString("uid"));
                sQLiteStatementCompileStatement2.bindLong(2, contentValues2.getAsInteger("sub_id").intValue());
                sQLiteStatementCompileStatement2.bindString(3, contentValues2.getAsString("title"));
                sQLiteStatementCompileStatement2.bindString(4, contentValues2.getAsString(NSContent.NSTAG));
                sQLiteStatementCompileStatement2.bindString(5, contentValues2.getAsString("author"));
                sQLiteStatementCompileStatement2.bindString(6, contentValues2.getAsString(NSRSS20.LINK));
                sQLiteStatementCompileStatement2.bindString(7, contentValues2.getAsString(NSRSS20.IMAGE));
                sQLiteStatementCompileStatement2.bindString(8, contentValues2.getAsString("video"));
                sQLiteStatementCompileStatement2.bindString(9, contentValues2.getAsString("audio"));
                sQLiteStatementCompileStatement2.bindString(10, contentValues2.getAsString("sharer"));
                sQLiteStatementCompileStatement2.bindLong(11, contentValues2.getAsLong("published_time").longValue());
                sQLiteStatementCompileStatement2.bindLong(12, contentValues2.getAsInteger("read").intValue());
                sQLiteStatementCompileStatement2.bindLong(13, contentValues2.getAsLong("read_time").longValue());
                sQLiteStatementCompileStatement2.bindLong(14, contentValues2.getAsInteger("starred").intValue());
                sQLiteStatementCompileStatement2.bindLong(15, contentValues2.getAsLong("sync_time").longValue());
                sQLiteStatementCompileStatement2.bindLong(16, contentValues2.getAsLong("updated_time").longValue());
                try {
                    sQLiteStatementCompileStatement2.execute();
                    i4++;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            i2++;
        }
        sQLiteStatementCompileStatement2.close();
        return i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(android.net.Uri r11, android.content.ContentValues r12, java.lang.String r13, java.lang.String[] r14, boolean r15) throws android.database.SQLException {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.provider.ReaderProvider.d(android.net.Uri, android.content.ContentValues, java.lang.String, java.lang.String[], boolean):int");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return d(uri, null, str, strArr, false);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        int iMatch = u.match(uri);
        if (iMatch == 40) {
            return "vnd.android.cursor.item/vnd.com.noinnion.android.greader.reader.provider.item";
        }
        if (iMatch == 41) {
            return "vnd.android.cursor.dir/vnd.com.noinnion.android.greader.reader.provider.item";
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri uri2;
        String str;
        int iMatch = u.match(uri);
        if (iMatch == 11) {
            uri2 = ip6.A;
            str = "subscription";
        } else if (iMatch == 21) {
            uri2 = lp6.n;
            str = "tag";
        } else if (iMatch == 31) {
            uri2 = kp6.e;
            str = "tag2sub";
        } else if (iMatch == 41) {
            uri2 = ap6.B;
            str = NSRSS20.ITEM;
        } else if (iMatch == 51) {
            uri2 = jp6.e;
            str = "tag2item";
        } else {
            if (iMatch != 61) {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
            uri2 = zo6.h;
            str = "history";
        }
        long jInsert = this.e.getWritableDatabase().insert(str, str, contentValues);
        if (jInsert > 0) {
            return ContentUris.withAppendedId(uri2, jInsert);
        }
        throw new SQLException("Failed to insert row into " + uri);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.e = new a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        String strSubstring;
        String[] strArr3;
        int iIndexOf;
        SQLiteDatabase readableDatabase = this.e.getReadableDatabase();
        if (readableDatabase == null) {
            return null;
        }
        int iMatch = u.match(uri);
        if (iMatch == 5) {
            Cursor cursorRawQuery = readableDatabase.rawQuery(str, strArr2);
            cursorRawQuery.setNotificationUri(getContext().getContentResolver(), uri);
            return cursorRawQuery;
        }
        if (str2 == null || (iIndexOf = str2.indexOf(" limit ")) == -1) {
            str3 = str2;
            strSubstring = null;
        } else {
            strSubstring = str2.substring(iIndexOf + 7);
            String strSubstring2 = str2.substring(0, iIndexOf);
            str3 = strSubstring2.length() == 0 ? null : strSubstring2;
        }
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        if (iMatch == 1) {
            try {
                readableDatabase.beginTransaction();
            } catch (Exception e) {
                n56.X1(getContext(), e.getLocalizedMessage() + ": Check your storage.");
            }
            return null;
        }
        if (iMatch == 2) {
            readableDatabase.setTransactionSuccessful();
            return null;
        }
        if (iMatch == 3) {
            try {
                readableDatabase.endTransaction();
            } catch (Exception e2) {
                n56.X1(getContext(), e2.getLocalizedMessage() + ": Check your storage.");
            }
            return null;
        }
        if (iMatch == 4) {
            this.e.close();
            this.e = new a(getContext());
            return null;
        }
        if (iMatch == 10) {
            strArr3 = strArr == null ? ip6.B : strArr;
            sQLiteQueryBuilder.setTables("subscription");
            sQLiteQueryBuilder.appendWhere("_id = " + uri.getPathSegments().get(1));
        } else if (iMatch != 11) {
            if (iMatch == 20) {
                sQLiteQueryBuilder.setTables("tag");
                sQLiteQueryBuilder.appendWhere("_id = " + uri.getPathSegments().get(1));
            } else if (iMatch == 21) {
                sQLiteQueryBuilder.setTables("tag");
            } else if (iMatch == 50) {
                sQLiteQueryBuilder.setTables("tag2item");
                sQLiteQueryBuilder.appendWhere("_id = " + uri.getPathSegments().get(1));
            } else if (iMatch != 51) {
                if (iMatch == 60) {
                    sQLiteQueryBuilder.setTables("history");
                    sQLiteQueryBuilder.appendWhere("_id = " + uri.getPathSegments().get(1));
                } else if (iMatch != 61) {
                    switch (iMatch) {
                        case 30:
                            sQLiteQueryBuilder.setTables("tag2sub");
                            sQLiteQueryBuilder.appendWhere("_id = " + uri.getPathSegments().get(1));
                            break;
                        case 31:
                            sQLiteQueryBuilder.setTables("tag2sub");
                            break;
                        case 32:
                            strArr3 = strArr == null ? kp6.g : strArr;
                            sQLiteQueryBuilder.setTables("(SELECT tag._id AS _id, uid, sort, 0 AS sort2, label AS title, null AS feed_url, null AS html_url, null AS icon_url, unread_count, hidden, 0 AS newest_item_time, sync_time, sync_excluded, type FROM tag UNION SELECT subscription._id, uid, sort, sort2, title, feed_url, html_url, icon_url, unread_count, hidden, newest_item_time, subscription.sync_time, sync_excluded, 100 FROM subscription LEFT JOIN tag2sub ON subscription._id = tag2sub.sub_id WHERE tag2sub.sub_id IS NULL)");
                            break;
                        default:
                            switch (iMatch) {
                                case 40:
                                    sQLiteQueryBuilder.setTables(NSRSS20.ITEM);
                                    sQLiteQueryBuilder.appendWhere("_id = " + uri.getPathSegments().get(1));
                                    break;
                                case 41:
                                    if (str != null && str.contains("tag2item.")) {
                                        strArr3 = strArr == null ? ap6.D : strArr;
                                        sQLiteQueryBuilder.setTables("item, tag2item");
                                        break;
                                    } else if (str != null && str.contains("subscription.")) {
                                        String[] strArr4 = strArr == null ? ap6.D : strArr;
                                        sQLiteQueryBuilder.setTables("item LEFT JOIN subscription ON item.sub_id = subscription._id");
                                        strArr3 = strArr4;
                                        break;
                                    } else {
                                        strArr3 = strArr == null ? ap6.C : strArr;
                                        sQLiteQueryBuilder.setTables(NSRSS20.ITEM);
                                        break;
                                    }
                                    break;
                                case 42:
                                    if (str == null || !str.contains("tag2item.")) {
                                        sQLiteQueryBuilder.setTables("item LEFT JOIN subscription ON item.sub_id = subscription._id");
                                    } else {
                                        sQLiteQueryBuilder.setTables("tag2item LEFT JOIN item ON tag2item.item_uid = item.uid LEFT JOIN subscription ON item.sub_id = subscription._id");
                                    }
                                    if (strArr == null) {
                                        strArr3 = ap6.H;
                                        break;
                                    }
                                    break;
                                default:
                                    throw new IllegalArgumentException("Unknown URI " + uri);
                            }
                    }
                } else {
                    strArr3 = strArr == null ? zo6.i : strArr;
                    sQLiteQueryBuilder.setTables("history");
                }
            } else if (str != null && str.contains("tag.")) {
                sQLiteQueryBuilder.setTables("tag2item, tag");
            } else if (str == null || !str.contains("item.")) {
                sQLiteQueryBuilder.setTables("tag2item");
            } else {
                sQLiteQueryBuilder.setTables("tag2item, item");
            }
            strArr3 = strArr;
        } else if (str != null && str.contains("tag2sub.")) {
            strArr3 = strArr == null ? ip6.C : strArr;
            sQLiteQueryBuilder.setTables("subscription LEFT JOIN tag2sub ON subscription._id = tag2sub.sub_id");
        } else if (str == null || !str.contains("tag.")) {
            strArr3 = strArr == null ? ip6.B : strArr;
            sQLiteQueryBuilder.setTables("subscription");
        } else {
            strArr3 = strArr == null ? ip6.C : strArr;
            sQLiteQueryBuilder.setTables("subscription LEFT JOIN tag2sub ON subscription._id = tag2sub.sub_id LEFT JOIN tag ON tag.uid = tag2sub.tag_uid");
        }
        Cursor cursorQuery = sQLiteQueryBuilder.query(readableDatabase, strArr3, str, strArr2, null, null, str3, strSubstring);
        cursorQuery.setNotificationUri(getContext().getContentResolver(), uri);
        return cursorQuery;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return d(uri, contentValues, str, strArr, true);
    }
}
