package defpackage;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import android.util.Pair;
import androidx.work.impl.WorkDatabase_Impl;
import defpackage.lg;
import defpackage.xg;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class bh implements xg {
    public final a a;

    public static class a extends SQLiteOpenHelper {
        public final ah[] e;
        public final xg.a f;
        public boolean g;

        /* renamed from: bh$a$a, reason: collision with other inner class name */
        public class C0003a implements DatabaseErrorHandler {
            public final /* synthetic */ xg.a a;
            public final /* synthetic */ ah[] b;

            public C0003a(xg.a aVar, ah[] ahVarArr) {
                this.a = aVar;
                this.b = ahVarArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                xg.a aVar = this.a;
                ah ahVarB = a.b(this.b, sQLiteDatabase);
                Objects.requireNonNull(aVar);
                Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + ahVarB.a());
                if (!ahVarB.e.isOpen()) {
                    aVar.a(ahVarB.a());
                    return;
                }
                List<Pair<String, String>> attachedDbs = null;
                try {
                    try {
                        attachedDbs = ahVarB.e.getAttachedDbs();
                    } catch (SQLiteException unused) {
                    }
                    try {
                        ahVarB.e.close();
                    } catch (IOException unused2) {
                    }
                } finally {
                    if (attachedDbs != null) {
                        Iterator<Pair<String, String>> it = attachedDbs.iterator();
                        while (it.hasNext()) {
                            aVar.a((String) it.next().second);
                        }
                    } else {
                        aVar.a(ahVarB.a());
                    }
                }
            }
        }

        public a(Context context, String str, ah[] ahVarArr, xg.a aVar) {
            super(context, str, null, aVar.a, new C0003a(aVar, ahVarArr));
            this.f = aVar;
            this.e = ahVarArr;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static defpackage.ah b(defpackage.ah[] r2, android.database.sqlite.SQLiteDatabase r3) {
            /*
                r0 = 0
                r1 = r2[r0]
                if (r1 == 0) goto Le
                android.database.sqlite.SQLiteDatabase r1 = r1.e
                if (r1 != r3) goto Lb
                r1 = 1
                goto Lc
            Lb:
                r1 = 0
            Lc:
                if (r1 != 0) goto L15
            Le:
                ah r1 = new ah
                r1.<init>(r3)
                r2[r0] = r1
            L15:
                r2 = r2[r0]
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: bh.a.b(ah[], android.database.sqlite.SQLiteDatabase):ah");
        }

        public ah a(SQLiteDatabase sQLiteDatabase) {
            return b(this.e, sQLiteDatabase);
        }

        public synchronized wg c() {
            this.g = false;
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!this.g) {
                return a(writableDatabase);
            }
            close();
            return c();
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public synchronized void close() {
            super.close();
            this.e[0] = null;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            xg.a aVar = this.f;
            b(this.e, sQLiteDatabase);
            Objects.requireNonNull((mg) aVar);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            xg.a aVar = this.f;
            ah ahVarB = b(this.e, sQLiteDatabase);
            mg mgVar = (mg) aVar;
            mgVar.c(ahVarB);
            mgVar.c.a(ahVarB);
            WorkDatabase_Impl.a aVar2 = (WorkDatabase_Impl.a) mgVar.c;
            WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
            int i = WorkDatabase_Impl.q;
            List<lg.b> list = workDatabase_Impl.g;
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Objects.requireNonNull(WorkDatabase_Impl.this.g.get(i2));
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.g = true;
            ((mg) this.f).b(b(this.e, sQLiteDatabase), i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onOpen(android.database.sqlite.SQLiteDatabase r10) throws android.database.SQLException {
            /*
                Method dump skipped, instructions count: 226
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: bh.a.onOpen(android.database.sqlite.SQLiteDatabase):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.g = true;
            this.f.b(b(this.e, sQLiteDatabase), i, i2);
        }
    }

    public bh(Context context, String str, xg.a aVar) {
        this.a = new a(context, str, new ah[1], aVar);
    }

    public wg a() {
        return this.a.c();
    }
}
