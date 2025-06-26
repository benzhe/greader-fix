package defpackage;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public class kg {
    public static final String[] k = {"UPDATE", "DELETE", "INSERT"};
    public final String[] b;
    public Map<String, Set<String>> c;
    public final lg d;
    public volatile eh g;
    public b h;
    public AtomicBoolean e = new AtomicBoolean(false);
    public volatile boolean f = false;
    public final o3<c, d> i = new o3<>();
    public Runnable j = new a();
    public final f4<String, Integer> a = new f4<>();

    public class a implements Runnable {
        public a() {
        }

        public final Set<Integer> a() {
            h4 h4Var = new h4(0);
            lg lgVar = kg.this.d;
            vg vgVar = new vg("SELECT * FROM room_table_modification_log WHERE invalidated = 1;");
            lgVar.a();
            lgVar.b();
            Cursor cursorB = ((ah) ((bh) lgVar.c).a()).b(vgVar);
            while (cursorB.moveToNext()) {
                try {
                    h4Var.add(Integer.valueOf(cursorB.getInt(0)));
                } catch (Throwable th) {
                    cursorB.close();
                    throw th;
                }
            }
            cursorB.close();
            if (!h4Var.isEmpty()) {
                kg.this.g.a();
            }
            return h4Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:42:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00ee A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Type inference failed for: r5v0 */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v10 */
        /* JADX WARN: Type inference failed for: r5v12 */
        /* JADX WARN: Type inference failed for: r5v13 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v4, types: [boolean] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kg.a.run():void");
        }
    }

    public static class b {
        public final long[] a;
        public final boolean[] b;
        public final int[] c;
        public boolean d;
        public boolean e;

        public b(int i) {
            long[] jArr = new long[i];
            this.a = jArr;
            boolean[] zArr = new boolean[i];
            this.b = zArr;
            this.c = new int[i];
            Arrays.fill(jArr, 0L);
            Arrays.fill(zArr, false);
        }

        public int[] a() {
            synchronized (this) {
                if (this.d && !this.e) {
                    int length = this.a.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i >= length) {
                            this.e = true;
                            this.d = false;
                            return this.c;
                        }
                        boolean z = this.a[i] > 0;
                        boolean[] zArr = this.b;
                        if (z != zArr[i]) {
                            int[] iArr = this.c;
                            if (!z) {
                                i2 = 2;
                            }
                            iArr[i] = i2;
                        } else {
                            this.c[i] = 0;
                        }
                        zArr[i] = z;
                        i++;
                    }
                }
                return null;
            }
        }
    }

    public static abstract class c {
        public abstract void a(Set<String> set);
    }

    public static class d {
        public final int[] a;
        public final String[] b;
        public final c c;
        public final Set<String> d;
    }

    public kg(lg lgVar, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.d = lgVar;
        this.h = new b(strArr.length);
        this.c = map2;
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.b = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.US;
            String lowerCase = str.toLowerCase(locale);
            this.a.put(lowerCase, Integer.valueOf(i));
            String str2 = map.get(strArr[i]);
            if (str2 != null) {
                this.b[i] = str2.toLowerCase(locale);
            } else {
                this.b[i] = lowerCase;
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.US;
            String lowerCase2 = value.toLowerCase(locale2);
            if (this.a.containsKey(lowerCase2)) {
                String lowerCase3 = entry.getKey().toLowerCase(locale2);
                f4<String, Integer> f4Var = this.a;
                f4Var.put(lowerCase3, f4Var.get(lowerCase2));
            }
        }
    }

    public boolean a() {
        if (!this.d.i()) {
            return false;
        }
        if (!this.f) {
            ((bh) this.d.c).a();
        }
        if (this.f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public final void b(wg wgVar, int i) throws SQLException {
        ah ahVar = (ah) wgVar;
        ahVar.e.execSQL(jo.h("INSERT OR IGNORE INTO room_table_modification_log VALUES(", i, ", 0)"));
        String str = this.b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : k) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            jo.J(sb, str, "_", str2, "`");
            jo.J(sb, " AFTER ", str2, " ON `", str);
            jo.J(sb, "` BEGIN UPDATE ", "room_table_modification_log", " SET ", "invalidated");
            jo.J(sb, " = 1", " WHERE ", "table_id", " = ");
            sb.append(i);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            ahVar.e.execSQL(sb.toString());
        }
    }

    public final void c(wg wgVar, int i) throws SQLException {
        String str = this.b[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : k) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            sb.append(str);
            sb.append("_");
            sb.append(str2);
            sb.append("`");
            ((ah) wgVar).e.execSQL(sb.toString());
        }
    }

    public void d(wg wgVar) {
        if (((ah) wgVar).e.inTransaction()) {
            return;
        }
        while (true) {
            try {
                ReentrantReadWriteLock.ReadLock lock = this.d.h.readLock();
                lock.lock();
                try {
                    int[] iArrA = this.h.a();
                    if (iArrA == null) {
                        return;
                    }
                    int length = iArrA.length;
                    ((ah) wgVar).e.beginTransaction();
                    for (int i = 0; i < length; i++) {
                        try {
                            int i2 = iArrA[i];
                            if (i2 == 1) {
                                b(wgVar, i);
                            } else if (i2 == 2) {
                                c(wgVar, i);
                            }
                        } catch (Throwable th) {
                            ((ah) wgVar).e.endTransaction();
                            throw th;
                        }
                    }
                    ((ah) wgVar).e.setTransactionSuccessful();
                    ((ah) wgVar).e.endTransaction();
                    b bVar = this.h;
                    synchronized (bVar) {
                        bVar.e = false;
                    }
                } finally {
                    lock.unlock();
                }
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }
}
