package defpackage;

import android.net.Uri;
import android.provider.BaseColumns;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class bp6 implements Serializable, BaseColumns {
    public static final String[] e;
    public static final String[] f;
    public static final String[][] g;
    public static final String[] h;

    static {
        Uri.parse("content://com.noinnion.android.greader.reader.provider/item_sync");
        String[] strArr = {"_id", "uid"};
        e = strArr;
        f = new String[strArr.length];
        int i = 0;
        g = new String[][]{new String[]{"uid"}};
        while (true) {
            String[] strArr2 = f;
            if (i >= strArr2.length) {
                h = new String[]{"DROP TABLE IF EXISTS item_sync", "CREATE TABLE IF NOT EXISTS item_sync (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL)"};
                return;
            } else {
                strArr2[i] = jo.n("item_sync.", e[i]);
                i++;
            }
        }
    }
}
