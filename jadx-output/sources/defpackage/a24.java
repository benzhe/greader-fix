package defpackage;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class a24 {
    public static HashMap<String, String> f;
    public static Object k;
    public static boolean l;
    public static final Uri a = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri b = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern d = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    public static final AtomicBoolean e = new AtomicBoolean();
    public static final HashMap<String, Boolean> g = new HashMap<>();
    public static final HashMap<String, Integer> h = new HashMap<>();
    public static final HashMap<String, Long> i = new HashMap<>();
    public static final HashMap<String, Float> j = new HashMap<>();
    public static String[] m = new String[0];

    public static <T> T a(HashMap<String, T> map, String str, T t) {
        synchronized (a24.class) {
            if (!map.containsKey(str)) {
                return null;
            }
            T t2 = map.get(str);
            if (t2 != null) {
                t = t2;
            }
            return t;
        }
    }

    public static String b(ContentResolver contentResolver, String str) {
        Cursor cursorQuery;
        synchronized (a24.class) {
            c(contentResolver);
            Object obj = k;
            if (f.containsKey(str)) {
                String str2 = f.get(str);
                return str2 != null ? str2 : null;
            }
            for (String str3 : m) {
                if (str.startsWith(str3)) {
                    if (!l || f.isEmpty()) {
                        String[] strArr = m;
                        HashMap<String, String> map = f;
                        cursorQuery = contentResolver.query(b, null, null, strArr, null);
                        TreeMap treeMap = new TreeMap();
                        if (cursorQuery != null) {
                            while (cursorQuery.moveToNext()) {
                                try {
                                    treeMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                                } finally {
                                    cursorQuery.close();
                                }
                            }
                        }
                        map.putAll(treeMap);
                        l = true;
                        if (f.containsKey(str)) {
                            String str4 = f.get(str);
                            return str4 != null ? str4 : null;
                        }
                    }
                    return null;
                }
            }
            cursorQuery = contentResolver.query(a, null, null, new String[]{str}, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(1);
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        d(obj, str, string);
                        return string != null ? string : null;
                    }
                } finally {
                    if (cursorQuery != null) {
                    }
                }
            }
            d(obj, str, null);
            return null;
        }
    }

    public static void c(ContentResolver contentResolver) {
        if (f == null) {
            e.set(false);
            f = new HashMap<>();
            k = new Object();
            l = false;
            contentResolver.registerContentObserver(a, true, new b24());
            return;
        }
        if (e.getAndSet(false)) {
            f.clear();
            g.clear();
            h.clear();
            i.clear();
            j.clear();
            k = new Object();
            l = false;
        }
    }

    public static void d(Object obj, String str, String str2) {
        synchronized (a24.class) {
            if (obj == k) {
                f.put(str, str2);
            }
        }
    }

    public static <T> void e(Object obj, HashMap<String, T> map, String str, T t) {
        synchronized (a24.class) {
            if (obj == k) {
                map.put(str, t);
                f.remove(str);
            }
        }
    }
}
