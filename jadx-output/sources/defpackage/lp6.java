package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.reader.R;
import defpackage.kp6;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes2.dex */
public class lp6 implements Serializable, BaseColumns {
    public static final Uri n = Uri.parse("content://com.noinnion.android.greader.reader.provider/tag");
    public static final String[][] o = {new String[]{"_id"}, new String[]{"uid"}, new String[]{"sort"}, new String[]{"unread_count"}, new String[]{"hidden"}};
    public long e;
    public String f;
    public int g;
    public String h;
    public String i;
    public int j;
    public long k;
    public boolean l;
    public boolean m;

    public lp6() {
        this.g = 11;
    }

    public static lp6 a(Context context, String str, String str2, boolean z) {
        String strN = jo.n(str, " = ?");
        String[] strArr = {str2};
        Cursor cursorK = z ? new vd(context, n, null, strN, strArr, null).k() : context.getContentResolver().query(n, null, strN, strArr, null);
        if (cursorK == null) {
            return null;
        }
        try {
            if (cursorK.moveToNext()) {
                return new lp6(cursorK);
            }
            return null;
        } finally {
            cursorK.close();
        }
    }

    public static lp6 b(Context context, String str, boolean z) {
        return a(context, "uid", str, z);
    }

    public static List<lp6> c(Context context, boolean z, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(NSRSS20.ENC_TYPE);
            sb.append(" = ");
            sb.append(11);
        }
        if (z2) {
            sb.append(sb.length() > 0 ? " OR " : "");
            sb.append(NSRSS20.ENC_TYPE);
            sb.append(" = ");
            sb.append(10);
        }
        if (z3) {
            sb.append(sb.length() <= 0 ? "" : " OR ");
            sb.append(NSRSS20.ENC_TYPE);
            sb.append(" = ");
            sb.append(9);
        }
        Cursor cursorQuery = context.getContentResolver().query(n, null, sb.toString(), null, null);
        if (cursorQuery == null) {
            return arrayList;
        }
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(new lp6(cursorQuery));
            } finally {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    public static boolean d(String str) {
        return str.endsWith("com.google/starred") || str.endsWith("global.saved") || str.endsWith(RssReaderClient.USER_STARRED) || str.endsWith(rn6.STATE_STARRED);
    }

    public static String[] f(int i) {
        ArrayList arrayList = new ArrayList();
        if (i < 8) {
            arrayList.add("ALTER TABLE tag ADD COLUMN sync_excluded INTEGER NOT NULL DEFAULT 0;");
            arrayList.add("ALTER TABLE tag ADD COLUMN hidden INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 14) {
            arrayList.add("UPDATE tag SET type = 10 WHERE type = 2");
            arrayList.add("UPDATE tag SET type = 11 WHERE type = 3");
        }
        if (i < 18) {
            arrayList.add("ALTER TABLE tag ADD COLUMN sort INTEGER NOT NULL DEFAULT 0;");
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public boolean e() {
        return this.g == 1;
    }

    public ContentValues g() {
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
        String str2 = this.i;
        if (str2 == null) {
            str2 = "(No label)";
        }
        contentValues.put("label", str2);
        int i = this.g;
        if (i != 0) {
            contentValues.put(NSRSS20.ENC_TYPE, Integer.valueOf(i));
        }
        String str3 = this.h;
        if (str3 != null) {
            contentValues.put("sortid", str3);
        }
        contentValues.put("hidden", Integer.valueOf(this.m ? 1 : 0));
        return contentValues;
    }

    public CharSequence h(Context context) {
        return this.g != 1 ? this.i : context.getText(R.string.label_starred);
    }

    public String toString() {
        StringBuilder sbW = jo.w(64, "Tag{id=");
        sbW.append(this.e);
        sbW.append(",uid=");
        sbW.append(this.f);
        sbW.append(",label=");
        sbW.append(this.i);
        sbW.append(StringSubstitutor.DEFAULT_VAR_END);
        return new String(sbW);
    }

    public lp6(Cursor cursor) {
        this.g = 11;
        this.e = cursor.getLong(cursor.getColumnIndex("_id"));
        this.f = cursor.getString(cursor.getColumnIndex("uid"));
        this.g = cursor.getInt(cursor.getColumnIndex(NSRSS20.ENC_TYPE));
        this.i = cursor.getString(cursor.getColumnIndex("label"));
        this.j = cursor.getInt(cursor.getColumnIndex("unread_count"));
        this.k = cursor.getLong(cursor.getColumnIndex("sync_time"));
        this.l = cursor.getInt(cursor.getColumnIndex("sync_excluded")) == 1;
        this.m = cursor.getInt(cursor.getColumnIndex("hidden")) == 1;
    }

    public lp6(kp6.a aVar) {
        this.g = 11;
        this.e = aVar.a;
        this.f = aVar.b;
        this.g = aVar.c;
        this.i = aVar.d;
        this.j = aVar.g;
        this.k = aVar.i;
        this.l = aVar.j;
        this.m = aVar.k;
    }
}
