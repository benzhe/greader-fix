package defpackage;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import defpackage.l4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class j64 implements m64 {
    public static final Map<Uri, j64> g = new f4();
    public static final String[] h = {"key", "value"};
    public final ContentResolver a;
    public final Uri b;
    public final ContentObserver c;
    public final Object d;
    public volatile Map<String, String> e;
    public final List<k64> f;

    public j64(ContentResolver contentResolver, Uri uri) {
        i64 i64Var = new i64(this);
        this.c = i64Var;
        this.d = new Object();
        this.f = new ArrayList();
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.a = contentResolver;
        this.b = uri;
        contentResolver.registerContentObserver(uri, false, i64Var);
    }

    public static j64 b(ContentResolver contentResolver, Uri uri) {
        j64 j64Var;
        synchronized (j64.class) {
            Object obj = g;
            j64Var = (j64) ((m4) obj).get(uri);
            if (j64Var == null) {
                try {
                    j64 j64Var2 = new j64(contentResolver, uri);
                    try {
                        ((m4) obj).put(uri, j64Var2);
                    } catch (SecurityException unused) {
                    }
                    j64Var = j64Var2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return j64Var;
    }

    public static synchronized void d() {
        Iterator it = ((l4.e) ((f4) g).values()).iterator();
        while (it.hasNext()) {
            j64 j64Var = (j64) it.next();
            j64Var.a.unregisterContentObserver(j64Var.c);
        }
        ((m4) g).clear();
    }

    @Override // defpackage.m64
    public final /* bridge */ /* synthetic */ Object a(String str) {
        return c().get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<String, String> c() {
        Map<String, String> map;
        Map<String, String> map2;
        Map<String, String> map3 = this.e;
        Map<String, String> map4 = map3;
        if (map3 == null) {
            synchronized (this.d) {
                Map<String, String> map5 = this.e;
                map = map5;
                if (map5 == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map2 = (Map) c50.E1(new l64(this) { // from class: h64
                                public final j64 a;

                                {
                                    this.a = this;
                                }

                                @Override // defpackage.l64
                                public final Object a() {
                                    j64 j64Var = this.a;
                                    Cursor cursorQuery = j64Var.a.query(j64Var.b, j64.h, null, null, null);
                                    if (cursorQuery == null) {
                                        return Collections.emptyMap();
                                    }
                                    try {
                                        int count = cursorQuery.getCount();
                                        if (count == 0) {
                                            return Collections.emptyMap();
                                        }
                                        Map f4Var = count <= 256 ? new f4(count) : new HashMap(count, 1.0f);
                                        while (cursorQuery.moveToNext()) {
                                            f4Var.put(cursorQuery.getString(0), cursorQuery.getString(1));
                                        }
                                        cursorQuery.close();
                                        return f4Var;
                                    } finally {
                                        cursorQuery.close();
                                    }
                                }
                            });
                        } finally {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        }
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        map2 = null;
                    }
                    this.e = map2;
                    threadPolicyAllowThreadDiskReads = map2;
                    map = threadPolicyAllowThreadDiskReads;
                }
            }
            map4 = map;
        }
        return map4 != null ? map4 : Collections.emptyMap();
    }
}
