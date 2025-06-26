package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import defpackage.as;
import defpackage.cv;
import defpackage.ds;
import defpackage.tu;
import defpackage.vr;
import defpackage.wr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public class tu implements cu, cv {
    public static final uq i = new uq("proto");
    public final zu e;
    public final dv f;
    public final dv g;
    public final du h;

    public interface b<T, U> {
        U apply(T t);
    }

    public static class c {
        public final String a;
        public final String b;

        public c(String str, String str2, a aVar) {
            this.a = str;
            this.b = str2;
        }
    }

    public interface d<T> {
        T a();
    }

    public tu(dv dvVar, dv dvVar2, du duVar, zu zuVar) {
        this.e = zuVar;
        this.f = dvVar;
        this.g = dvVar2;
        this.h = duVar;
    }

    public static String g(Iterable<hu> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<hu> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static <T> T i(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // defpackage.cu
    public void A0(Iterable<hu> iterable) {
        if (iterable.iterator().hasNext()) {
            StringBuilder sbZ = jo.z("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ");
            sbZ.append(g(iterable));
            String string = sbZ.toString();
            SQLiteDatabase sQLiteDatabaseB = b();
            sQLiteDatabaseB.beginTransaction();
            try {
                sQLiteDatabaseB.compileStatement(string).execute();
                sQLiteDatabaseB.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                sQLiteDatabaseB.setTransactionSuccessful();
            } finally {
                sQLiteDatabaseB.endTransaction();
            }
        }
    }

    @Override // defpackage.cu
    public Iterable<hu> B(final ds dsVar) {
        return (Iterable) e(new b(this, dsVar) { // from class: ju
            public final tu a;
            public final ds b;

            {
                this.a = this;
                this.b = dsVar;
            }

            @Override // tu.b
            public Object apply(Object obj) {
                final tu tuVar = this.a;
                final ds dsVar2 = this.b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                uq uqVar = tu.i;
                Objects.requireNonNull(tuVar);
                final ArrayList arrayList = new ArrayList();
                Long lC = tuVar.c(sQLiteDatabase, dsVar2);
                if (lC != null) {
                    tu.i(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lC.toString()}, null, null, null, String.valueOf(tuVar.h.c())), new tu.b(tuVar, arrayList, dsVar2) { // from class: ku
                        public final tu a;
                        public final List b;
                        public final ds c;

                        {
                            this.a = tuVar;
                            this.b = arrayList;
                            this.c = dsVar2;
                        }

                        @Override // tu.b
                        public Object apply(Object obj2) {
                            tu tuVar2 = this.a;
                            List list = this.b;
                            ds dsVar3 = this.c;
                            Cursor cursor = (Cursor) obj2;
                            uq uqVar2 = tu.i;
                            while (cursor.moveToNext()) {
                                long j = cursor.getLong(0);
                                boolean z = cursor.getInt(7) != 0;
                                vr.b bVar = new vr.b();
                                bVar.f = new HashMap();
                                bVar.f(cursor.getString(1));
                                bVar.e(cursor.getLong(2));
                                bVar.g(cursor.getLong(3));
                                if (z) {
                                    String string = cursor.getString(4);
                                    bVar.d(new zr(string == null ? tu.i : new uq(string), cursor.getBlob(5)));
                                } else {
                                    String string2 = cursor.getString(4);
                                    bVar.d(new zr(string2 == null ? tu.i : new uq(string2), (byte[]) tu.i(tuVar2.b().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), new tu.b() { // from class: lu
                                        @Override // tu.b
                                        public Object apply(Object obj3) {
                                            Cursor cursor2 = (Cursor) obj3;
                                            uq uqVar3 = tu.i;
                                            ArrayList arrayList2 = new ArrayList();
                                            int length = 0;
                                            while (cursor2.moveToNext()) {
                                                byte[] blob = cursor2.getBlob(0);
                                                arrayList2.add(blob);
                                                length += blob.length;
                                            }
                                            byte[] bArr = new byte[length];
                                            int length2 = 0;
                                            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                                                byte[] bArr2 = (byte[]) arrayList2.get(i2);
                                                System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
                                                length2 += bArr2.length;
                                            }
                                            return bArr;
                                        }
                                    })));
                                }
                                if (!cursor.isNull(6)) {
                                    bVar.b = Integer.valueOf(cursor.getInt(6));
                                }
                                list.add(new bu(j, dsVar3, bVar.b()));
                            }
                            return null;
                        }
                    });
                }
                HashMap map = new HashMap();
                StringBuilder sb = new StringBuilder("event_id IN (");
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    sb.append(((hu) arrayList.get(i2)).b());
                    if (i2 < arrayList.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", InetAddressKeys.KEY_NAME, "value"}, sb.toString(), null, null, null, null);
                while (cursorQuery.moveToNext()) {
                    try {
                        long j = cursorQuery.getLong(0);
                        Set hashSet = (Set) map.get(Long.valueOf(j));
                        if (hashSet == null) {
                            hashSet = new HashSet();
                            map.put(Long.valueOf(j), hashSet);
                        }
                        hashSet.add(new tu.c(cursorQuery.getString(1), cursorQuery.getString(2), null));
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                }
                cursorQuery.close();
                ListIterator listIterator = arrayList.listIterator();
                while (listIterator.hasNext()) {
                    hu huVar = (hu) listIterator.next();
                    if (map.containsKey(Long.valueOf(huVar.b()))) {
                        as.a aVarI = huVar.a().i();
                        for (tu.c cVar : (Set) map.get(Long.valueOf(huVar.b()))) {
                            aVarI.a(cVar.a, cVar.b);
                        }
                        listIterator.set(new bu(huVar.b(), huVar.c(), aVarI.b()));
                    }
                }
                return arrayList;
            }
        });
    }

    @Override // defpackage.cu
    public void H(final ds dsVar, final long j) {
        e(new b(j, dsVar) { // from class: iu
            public final long a;
            public final ds b;

            {
                this.a = j;
                this.b = dsVar;
            }

            @Override // tu.b
            public Object apply(Object obj) {
                long j2 = this.a;
                ds dsVar2 = this.b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                uq uqVar = tu.i;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j2));
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{dsVar2.b(), String.valueOf(iv.a(dsVar2.d()))}) < 1) {
                    contentValues.put("backend_name", dsVar2.b());
                    contentValues.put("priority", Integer.valueOf(iv.a(dsVar2.d())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // defpackage.cu
    public Iterable<ds> M() {
        SQLiteDatabase sQLiteDatabaseB = b();
        sQLiteDatabaseB.beginTransaction();
        try {
            List list = (List) i(sQLiteDatabaseB.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: pu
                @Override // tu.b
                public Object apply(Object obj) {
                    Cursor cursor = (Cursor) obj;
                    uq uqVar = tu.i;
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        ds.a aVarA = ds.a();
                        aVarA.b(cursor.getString(1));
                        aVarA.c(iv.b(cursor.getInt(2)));
                        String string = cursor.getString(3);
                        wr.b bVar = (wr.b) aVarA;
                        bVar.b = string == null ? null : Base64.decode(string, 0);
                        arrayList.add(bVar.a());
                    }
                    return arrayList;
                }
            });
            sQLiteDatabaseB.setTransactionSuccessful();
            return list;
        } finally {
            sQLiteDatabaseB.endTransaction();
        }
    }

    @Override // defpackage.cv
    public <T> T a(cv.a<T> aVar) {
        final SQLiteDatabase sQLiteDatabaseB = b();
        f(new d(sQLiteDatabaseB) { // from class: mu
            public final SQLiteDatabase a;

            {
                this.a = sQLiteDatabaseB;
            }

            @Override // tu.d
            public Object a() {
                SQLiteDatabase sQLiteDatabase = this.a;
                uq uqVar = tu.i;
                sQLiteDatabase.beginTransaction();
                return null;
            }
        }, new b() { // from class: nu
            @Override // tu.b
            public Object apply(Object obj) {
                uq uqVar = tu.i;
                throw new bv("Timed out while trying to acquire the lock.", (Throwable) obj);
            }
        });
        try {
            T tExecute = aVar.execute();
            sQLiteDatabaseB.setTransactionSuccessful();
            return tExecute;
        } finally {
            sQLiteDatabaseB.endTransaction();
        }
    }

    public SQLiteDatabase b() {
        final zu zuVar = this.e;
        zuVar.getClass();
        return (SQLiteDatabase) f(new d(zuVar) { // from class: ou
            public final zu a;

            {
                this.a = zuVar;
            }

            @Override // tu.d
            public Object a() {
                return this.a.getWritableDatabase();
            }
        }, new b() { // from class: ru
            @Override // tu.b
            public Object apply(Object obj) {
                uq uqVar = tu.i;
                throw new bv("Timed out while trying to open db.", (Throwable) obj);
            }
        });
    }

    public final Long c(SQLiteDatabase sQLiteDatabase, ds dsVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(dsVar.b(), String.valueOf(iv.a(dsVar.d()))));
        if (dsVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(dsVar.c(), 0));
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.e.close();
    }

    public final <T> T e(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase sQLiteDatabaseB = b();
        sQLiteDatabaseB.beginTransaction();
        try {
            T tApply = bVar.apply(sQLiteDatabaseB);
            sQLiteDatabaseB.setTransactionSuccessful();
            return tApply;
        } finally {
            sQLiteDatabaseB.endTransaction();
        }
    }

    public final <T> T f(d<T> dVar, b<Throwable, T> bVar) {
        long jA = this.g.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.g.a() >= this.h.a() + jA) {
                    return bVar.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // defpackage.cu
    public hu n0(final ds dsVar, final as asVar) {
        bi.y("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", dsVar.d(), asVar.g(), dsVar.b());
        long jLongValue = ((Long) e(new b(this, dsVar, asVar) { // from class: su
            public final tu a;
            public final ds b;
            public final as c;

            {
                this.a = this;
                this.b = dsVar;
                this.c = asVar;
            }

            @Override // tu.b
            public Object apply(Object obj) {
                long jInsert;
                tu tuVar = this.a;
                ds dsVar2 = this.b;
                as asVar2 = this.c;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                uq uqVar = tu.i;
                if (tuVar.b().compileStatement("PRAGMA page_size").simpleQueryForLong() * tuVar.b().compileStatement("PRAGMA page_count").simpleQueryForLong() >= tuVar.h.e()) {
                    return -1L;
                }
                Long lC = tuVar.c(sQLiteDatabase, dsVar2);
                if (lC != null) {
                    jInsert = lC.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", dsVar2.b());
                    contentValues.put("priority", Integer.valueOf(iv.a(dsVar2.d())));
                    contentValues.put("next_request_ms", (Integer) 0);
                    if (dsVar2.c() != null) {
                        contentValues.put("extras", Base64.encodeToString(dsVar2.c(), 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int iD = tuVar.h.d();
                byte[] bArr = asVar2.d().b;
                boolean z = bArr.length <= iD;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", asVar2.g());
                contentValues2.put("timestamp_ms", Long.valueOf(asVar2.e()));
                contentValues2.put("uptime_ms", Long.valueOf(asVar2.h()));
                contentValues2.put("payload_encoding", asVar2.d().a.a);
                contentValues2.put("code", asVar2.c());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                contentValues2.put("payload", z ? bArr : new byte[0]);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z) {
                    int iCeil = (int) Math.ceil(bArr.length / iD);
                    for (int i2 = 1; i2 <= iCeil; i2++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (i2 - 1) * iD, Math.min(i2 * iD, bArr.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i2));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(asVar2.b()).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put(InetAddressKeys.KEY_NAME, (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return new bu(jLongValue, dsVar, asVar);
    }

    @Override // defpackage.cu
    public int o() {
        long jA = this.f.a() - this.h.b();
        SQLiteDatabase sQLiteDatabaseB = b();
        sQLiteDatabaseB.beginTransaction();
        try {
            Integer numValueOf = Integer.valueOf(sQLiteDatabaseB.delete("events", "timestamp_ms < ?", new String[]{String.valueOf(jA)}));
            sQLiteDatabaseB.setTransactionSuccessful();
            sQLiteDatabaseB.endTransaction();
            return numValueOf.intValue();
        } catch (Throwable th) {
            sQLiteDatabaseB.endTransaction();
            throw th;
        }
    }

    @Override // defpackage.cu
    public void p(Iterable<hu> iterable) {
        if (iterable.iterator().hasNext()) {
            StringBuilder sbZ = jo.z("DELETE FROM events WHERE _id in ");
            sbZ.append(g(iterable));
            b().compileStatement(sbZ.toString()).execute();
        }
    }

    @Override // defpackage.cu
    public long u0(ds dsVar) {
        Cursor cursorRawQuery = b().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{dsVar.b(), String.valueOf(iv.a(dsVar.d()))});
        try {
            Long lValueOf = cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L;
            cursorRawQuery.close();
            return lValueOf.longValue();
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    @Override // defpackage.cu
    public boolean y0(ds dsVar) {
        SQLiteDatabase sQLiteDatabaseB = b();
        sQLiteDatabaseB.beginTransaction();
        try {
            Long lC = c(sQLiteDatabaseB, dsVar);
            Boolean bool = lC == null ? Boolean.FALSE : (Boolean) i(b().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lC.toString()}), new b() { // from class: qu
                @Override // tu.b
                public Object apply(Object obj) {
                    return Boolean.valueOf(((Cursor) obj).moveToNext());
                }
            });
            sQLiteDatabaseB.setTransactionSuccessful();
            sQLiteDatabaseB.endTransaction();
            return bool.booleanValue();
        } catch (Throwable th) {
            sQLiteDatabaseB.endTransaction();
            throw th;
        }
    }
}
