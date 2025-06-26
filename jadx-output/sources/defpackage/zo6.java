package defpackage;

import android.content.ContentValues;
import android.net.Uri;
import android.provider.BaseColumns;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.io.Serializable;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes2.dex */
public class zo6 implements Serializable, BaseColumns {
    public static final Uri h = Uri.parse("content://com.noinnion.android.greader.reader.provider/history");
    public static final String[] i;
    public static final String[] j;
    public static final String[][] k;
    public static final String[] l;
    public int e;
    public String f;
    public long g;

    static {
        String[] strArr = {"_id", NSRSS20.ENC_TYPE, "params", "sync_time", "done"};
        i = strArr;
        j = new String[strArr.length];
        int i2 = 0;
        k = new String[][]{new String[]{"_id"}, new String[]{NSRSS20.ENC_TYPE}, new String[]{"sync_time"}, new String[]{"done"}};
        while (true) {
            String[] strArr2 = j;
            if (i2 >= strArr2.length) {
                l = new String[]{"DROP TABLE IF EXISTS history", "CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY, type INTEGER NOT NULL,params TEXT NOT NULL,sync_time INTEGER NOT NULL DEFAULT 0,done INTEGER NOT NULL DEFAULT 0)"};
                return;
            }
            StringBuilder sbZ = jo.z("history.");
            sbZ.append(i[i2]);
            strArr2[i2] = sbZ.toString();
            i2++;
        }
    }

    public ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSRSS20.ENC_TYPE, Integer.valueOf(this.e));
        String str = this.f;
        if (str == null) {
            str = "";
        }
        contentValues.put("params", str);
        contentValues.put("sync_time", Long.valueOf(this.g));
        contentValues.put("done", (Integer) 0);
        return contentValues;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zo6)) {
            return false;
        }
        Objects.requireNonNull((zo6) obj);
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("History{id=");
        sb.append(0L);
        sb.append(",type=");
        sb.append(this.e);
        sb.append(",params=");
        sb.append(this.f);
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return new String(sb);
    }
}
