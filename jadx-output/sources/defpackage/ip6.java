package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import defpackage.kp6;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes2.dex */
public class ip6 implements pw6, Serializable, BaseColumns {
    public static final Uri A = Uri.parse("content://com.noinnion.android.greader.reader.provider/subscription");
    public static final String[] B;
    public static final String[] C;
    public static final String[] D;
    public static final String[][] E;
    public long e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public List<String> l;
    public int m;
    public long n;
    public long o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public String z;

    static {
        String[] strArr = {"_id", "uid", "title", "feed_url", "html_url", "icon_url", "unread_count", "newest_item_time", "sync_time", "sync_excluded", "hidden", "notification", "image_fit", "javascript", "offline_content", "display_content", "link_format", "auto_readability", "user_agent", "charset"};
        B = strArr;
        C = new String[strArr.length];
        int i = 0;
        while (true) {
            String[] strArr2 = C;
            if (i >= strArr2.length) {
                D = new String[]{"_id"};
                E = new String[][]{new String[]{"_id"}, new String[]{"uid"}, new String[]{"newest_item_time"}, new String[]{"sort"}, new String[]{"sort2"}, new String[]{"unread_count"}, new String[]{"hidden"}};
                return;
            } else {
                StringBuilder sbZ = jo.z("subscription.");
                sbZ.append(B[i]);
                strArr2[i] = sbZ.toString();
                i++;
            }
        }
    }

    public ip6() {
        this.l = new ArrayList();
    }

    public static ip6 b(Context context, String str, String str2, boolean z) {
        String strN = jo.n(str, " = ?");
        String[] strArr = {str2};
        Cursor cursorK = z ? new vd(context, A, null, strN, strArr, null).k() : context.getContentResolver().query(A, null, strN, strArr, null);
        if (cursorK == null) {
            return null;
        }
        try {
            if (cursorK.moveToNext()) {
                return new ip6(cursorK);
            }
            return null;
        } finally {
            cursorK.close();
        }
    }

    public static ip6 c(Context context, long j, boolean z) {
        return b(context, "_id", String.valueOf(j), z);
    }

    public static ip6 d(Context context, String str, boolean z) {
        return b(context, "uid", str, z);
    }

    public static List<ip6> e(Context context) {
        return f(context, true);
    }

    public static List<ip6> f(Context context, boolean z) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorK = z ? new vd(context, A, null, null, null, null).k() : context.getContentResolver().query(A, null, null, null, null);
        if (cursorK == null) {
            return arrayList;
        }
        while (cursorK.moveToNext()) {
            try {
                arrayList.add(new ip6(cursorK));
            } finally {
                cursorK.close();
            }
        }
        return arrayList;
    }

    public static String[] h(int i) {
        ArrayList arrayList = new ArrayList();
        if (i < 8) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN sync_excluded INTEGER NOT NULL DEFAULT 0;");
            arrayList.add("ALTER TABLE subscription ADD COLUMN hidden INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 15) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN image_fit INTEGER NOT NULL DEFAULT 1;");
            arrayList.add("ALTER TABLE subscription ADD COLUMN javascript INTEGER NOT NULL DEFAULT 0;");
            arrayList.add("ALTER TABLE subscription ADD COLUMN offline_content INTEGER NOT NULL DEFAULT -1;");
            arrayList.add("ALTER TABLE subscription ADD COLUMN display_content INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 18) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN sort INTEGER NOT NULL DEFAULT 0;");
            arrayList.add("ALTER TABLE subscription ADD COLUMN sort2 INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 19) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN link_format INTEGER NOT NULL DEFAULT -1;");
            arrayList.add("ALTER TABLE subscription ADD COLUMN auto_readability INTEGER NOT NULL DEFAULT -1;");
        }
        if (i < 21) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN user_agent INTEGER NOT NULL DEFAULT -1;");
        }
        if (i < 23) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN notification INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 24) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN icon_url TEXT;");
        }
        if (i < 25) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN charset TEXT;");
        }
        if (i < 26) {
            arrayList.add("ALTER TABLE subscription ADD COLUMN feed_url TEXT;");
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public String a() {
        if (!TextUtils.isEmpty(this.k)) {
            String str = this.k;
            return str.startsWith("//") ? jo.n("http:", str) : str;
        }
        if (!TextUtils.isEmpty(this.j)) {
            StringBuilder sbZ = jo.z("https://plus.google.com/_/favicon?domain=");
            sbZ.append(this.j);
            return sbZ.toString();
        }
        if (!TextUtils.isEmpty(this.f)) {
            String strReplaceFirst = this.f.replaceFirst(RssReaderClient.USER_FEED, "");
            this.j = strReplaceFirst;
            if (strReplaceFirst.startsWith("http://")) {
                StringBuilder sbZ2 = jo.z("https://plus.google.com/_/favicon?domain=");
                sbZ2.append(this.j);
                return sbZ2.toString();
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ip6) && ((ip6) obj).e == this.e;
    }

    public void g(Cursor cursor) {
        this.e = cursor.getLong(cursor.getColumnIndex("_id"));
        this.f = cursor.getString(cursor.getColumnIndex("uid"));
        this.h = cursor.getString(cursor.getColumnIndex("title"));
        this.i = cursor.getString(cursor.getColumnIndex("feed_url"));
        this.j = cursor.getString(cursor.getColumnIndex("html_url"));
        this.k = cursor.getString(cursor.getColumnIndex("icon_url"));
        this.m = cursor.getInt(cursor.getColumnIndex("unread_count"));
        this.n = cursor.getInt(cursor.getColumnIndex("newest_item_time"));
        this.o = cursor.getLong(cursor.getColumnIndex("sync_time"));
        this.p = cursor.getInt(cursor.getColumnIndex("sync_excluded")) == 1;
        this.q = cursor.getInt(cursor.getColumnIndex("hidden")) == 1;
        this.r = cursor.getInt(cursor.getColumnIndex("notification")) == 1;
        this.s = cursor.getInt(cursor.getColumnIndex("image_fit")) == 1;
        this.t = cursor.getInt(cursor.getColumnIndex("javascript")) == 1;
        this.u = cursor.getInt(cursor.getColumnIndex("offline_content"));
        this.v = cursor.getInt(cursor.getColumnIndex("display_content"));
        this.w = cursor.getInt(cursor.getColumnIndex("link_format"));
        this.x = cursor.getInt(cursor.getColumnIndex("auto_readability"));
        this.y = cursor.getInt(cursor.getColumnIndex("user_agent"));
        this.z = cursor.getString(cursor.getColumnIndex("charset"));
    }

    public ContentValues i() {
        ContentValues contentValues = new ContentValues();
        long j = this.e;
        if (j > 0) {
            contentValues.put("_id", Long.valueOf(j));
        }
        String str = this.f;
        if (str == null) {
            str = "";
        }
        contentValues.put("uid", str);
        String str2 = this.h;
        if (str2 == null) {
            str2 = "(No Title)";
        }
        contentValues.put("title", str2);
        contentValues.put("feed_url", this.i);
        contentValues.put("html_url", this.j);
        contentValues.put("icon_url", this.k);
        long j2 = this.n;
        if (j2 > 0) {
            contentValues.put("newest_item_time", Long.valueOf(j2));
        }
        String str3 = this.g;
        if (str3 != null) {
            contentValues.put("sortid", str3);
        }
        return contentValues;
    }

    public String toString() {
        StringBuilder sbW = jo.w(64, "Subscription{id=");
        sbW.append(this.e);
        sbW.append(",uid=");
        sbW.append(this.f);
        sbW.append(",title=");
        sbW.append(this.h);
        sbW.append(StringSubstitutor.DEFAULT_VAR_END);
        return new String(sbW);
    }

    public ip6(Cursor cursor) {
        this.l = new ArrayList();
        g(cursor);
    }

    public ip6(kp6.a aVar) {
        this.l = new ArrayList();
        this.e = aVar.a;
        this.f = aVar.b;
        this.h = aVar.d;
        this.i = null;
        this.j = aVar.e;
        this.k = aVar.f;
        this.m = aVar.g;
        this.n = aVar.h;
        this.o = aVar.i;
        this.p = aVar.j;
        this.q = aVar.k;
    }
}
