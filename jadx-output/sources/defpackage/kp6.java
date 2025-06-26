package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.reader.R;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class kp6 implements Serializable, BaseColumns {
    public static final Uri e = Uri.parse("content://com.noinnion.android.greader.reader.provider/tag2sub");
    public static final String[][] f = {new String[]{"_id"}, new String[]{"tag_uid"}, new String[]{"sub_id"}};
    public static final String[] g = {"_id", "uid", NSRSS20.ENC_TYPE, "title", "feed_url", "html_url", "icon_url", "unread_count", "hidden", "newest_item_time", "sync_time", "sync_excluded"};

    public static class a {
        public long a;
        public String b;
        public int c;
        public String d;
        public String e;
        public String f;
        public int g;
        public long h;
        public long i;
        public boolean j;
        public boolean k;

        public a(Cursor cursor) {
            if (cursor == null) {
                return;
            }
            b(cursor);
        }

        public String a() {
            if (!TextUtils.isEmpty(this.f)) {
                String str = this.f;
                return str.startsWith("//") ? jo.n("http:", str) : str;
            }
            if (!TextUtils.isEmpty(this.e)) {
                StringBuilder sbZ = jo.z("https://plus.google.com/_/favicon?domain=");
                sbZ.append(this.e);
                return sbZ.toString();
            }
            if (!TextUtils.isEmpty(this.b)) {
                String strReplaceFirst = this.b.replaceFirst(RssReaderClient.USER_FEED, "");
                this.e = strReplaceFirst;
                if (strReplaceFirst.startsWith("http://")) {
                    StringBuilder sbZ2 = jo.z("https://plus.google.com/_/favicon?domain=");
                    sbZ2.append(this.e);
                    return sbZ2.toString();
                }
            }
            return null;
        }

        public void b(Cursor cursor) {
            if (cursor == null) {
                return;
            }
            this.a = cursor.getInt(cursor.getColumnIndex("_id"));
            this.b = cursor.getString(cursor.getColumnIndex("uid"));
            int columnIndex = cursor.getColumnIndex(NSRSS20.ENC_TYPE);
            this.c = columnIndex > -1 ? cursor.getInt(columnIndex) : 100;
            this.d = cursor.getString(cursor.getColumnIndex("title"));
            this.e = cursor.getString(cursor.getColumnIndex("feed_url"));
            this.e = cursor.getString(cursor.getColumnIndex("html_url"));
            this.f = cursor.getString(cursor.getColumnIndex("icon_url"));
            this.g = cursor.getInt(cursor.getColumnIndex("unread_count"));
            this.h = cursor.getInt(cursor.getColumnIndex("newest_item_time"));
            this.i = cursor.getLong(cursor.getColumnIndex("sync_time"));
            this.j = cursor.getInt(cursor.getColumnIndex("sync_excluded")) == 1;
            this.k = cursor.getInt(cursor.getColumnIndex("hidden")) == 1;
        }

        public String c(Context context) {
            return this.c != 1 ? this.d : context.getString(R.string.label_starred);
        }

        public String toString() {
            return this.b;
        }
    }

    public static List<Long> a(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = context.getContentResolver().query(e, null, "tag_uid = ?", new String[]{str}, null);
        if (cursorQuery == null) {
            return arrayList;
        }
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("sub_id"))));
            } finally {
                cursorQuery.close();
            }
        }
        return arrayList;
    }
}
