package defpackage;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class vv3 {
    public static final ConcurrentHashMap<Uri, vv3> h = new ConcurrentHashMap<>();
    public static final String[] i = {"key", "value"};
    public final ContentResolver a;
    public final Uri b;
    public volatile Map<String, String> e;
    public final Object d = new Object();
    public final Object f = new Object();
    public final List<xv3> g = new ArrayList();
    public final ContentObserver c = new wv3(this);

    public vv3(ContentResolver contentResolver, Uri uri) {
        this.a = contentResolver;
        this.b = uri;
    }

    public final Map<String, String> a() {
        try {
            HashMap map = new HashMap();
            Cursor cursorQuery = this.a.query(this.b, i, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        map.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                }
                cursorQuery.close();
            }
            return map;
        } catch (SQLiteException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }
}
