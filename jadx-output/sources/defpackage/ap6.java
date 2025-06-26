package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import android.provider.BaseColumns;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ap6 implements ow6, Serializable, BaseColumns {
    public static final Uri B = Uri.parse("content://com.noinnion.android.greader.reader.provider/item");
    public static final String[] C;
    public static final String[] D;
    public static final String[] E;
    public static final String[] F;
    public static final String[] G;
    public static final String[] H;
    public static final String[] I;
    public static final String[] J;
    public static final String[] K;
    public static final String[][] L;
    public String A;
    public long e;
    public long g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public long p;
    public long q;
    public boolean r;
    public boolean s;
    public int t;
    public boolean u;
    public boolean v;
    public long w;
    public long x;
    public String z;
    public String f = "";
    public List<String> y = new ArrayList();

    public static class a extends CursorWrapper {
        public final int e;

        public a(Cursor cursor) {
            super(cursor);
            this.e = getColumnIndex("_id");
            getColumnIndex("sub_id");
            getColumnIndex("uid");
            getColumnIndex("title");
            getColumnIndex(NSContent.NSTAG);
            getColumnIndex("author");
            getColumnIndex(NSRSS20.LINK);
            getColumnIndex(NSRSS20.IMAGE);
            getColumnIndex("video");
            getColumnIndex("audio");
            getColumnIndex("sharer");
            getColumnIndex("published_time");
            getColumnIndex("updated_time");
            getColumnIndex("starred");
            getColumnIndex("cached");
            getColumnIndex("keep_unread");
            getColumnIndex("read");
            getColumnIndex("read_time");
            getColumnIndex("sync_time");
            getColumnIndex("sub_title");
        }
    }

    static {
        String[] strArr = {"_id", "uid", "sub_id", "title", NSContent.NSTAG, NSRSS20.LINK, "author", "sharer", NSRSS20.IMAGE, "video", "audio", "keep_unread", "read", "read_time", "starred", "cached", "sync_time", "published_time", "updated_time"};
        C = strArr;
        D = new String[strArr.length];
        E = new String[strArr.length];
        F = new String[strArr.length];
        G = new String[]{"item._id", "item.uid", "subscription.uid AS sub_uid"};
        H = new String[]{"item._id", "item.uid", "item.sub_id", "item.title", "item.content", "item.link", "item.author", "item.sharer", "item.image", "item.video", "item.audio", "item.keep_unread", "item.read", "item.read_time", "item.starred", "item.cached", "item.sync_time", "item.published_time", "item.updated_time", "subscription._id AS sub_id", "subscription.title AS sub_title", "subscription.uid AS sub_uid", "subscription.sort AS sub_sort", "subscription.sort2 AS sub_sort2"};
        int i = 0;
        while (true) {
            String[] strArr2 = D;
            if (i >= strArr2.length) {
                I = new String[]{"item._id"};
                J = new String[]{"item.uid"};
                K = new String[]{"COUNT(_id)"};
                L = new String[][]{new String[]{"_id"}, new String[]{"sub_id"}, new String[]{"uid"}, new String[]{"read", "read_time"}, new String[]{"updated_time"}};
                return;
            }
            String str = C[i];
            strArr2[i] = jo.n("item.", str);
            if (str.equals(NSContent.NSTAG)) {
                E[i] = "NULL";
                F[i] = "SUBSTR(item.content,0,600) AS content";
            } else {
                E[i] = strArr2[i];
                F[i] = strArr2[i];
            }
            i++;
        }
    }

    public ap6() {
    }

    public static ap6 k(Context context, String str, String str2, boolean z) {
        String strN = jo.n(str, " = ?");
        String[] strArr = {str2};
        Cursor cursorK = z ? new vd(context, B, null, strN, strArr, null).k() : context.getContentResolver().query(B, null, strN, strArr, null);
        if (cursorK == null) {
            return null;
        }
        try {
            if (cursorK.moveToNext()) {
                return new ap6(cursorK);
            }
            return null;
        } finally {
            cursorK.close();
        }
    }

    public static ap6 l(Context context, long j, boolean z) {
        return k(context, "_id", String.valueOf(j), z);
    }

    public static String[] r(int i) {
        ArrayList arrayList = new ArrayList();
        if (i < 7) {
            arrayList.add("ALTER TABLE item ADD COLUMN starred INTEGER NOT NULL DEFAULT 0;");
            arrayList.add("ALTER TABLE item ADD COLUMN cached INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 9) {
            arrayList.add("ALTER TABLE item ADD COLUMN sharer TEXT;");
        }
        if (i < 16) {
            arrayList.add("UPDATE item SET updated_time = updated_time / 1000 WHERE updated_time > 10000000000;");
        }
        if (i < 17) {
            arrayList.add("ALTER TABLE item ADD COLUMN keep_unread INTEGER NOT NULL DEFAULT 0;");
        }
        if (i < 22) {
            arrayList.add("ALTER TABLE item ADD COLUMN image TEXT;");
            arrayList.add("ALTER TABLE item ADD COLUMN video TEXT;");
            arrayList.add("ALTER TABLE item ADD COLUMN audio TEXT;");
            arrayList.add("UPDATE item SET image = media || ';' || media_type WHERE media IS NOT NULL AND media_type LIKE 'image%';");
            arrayList.add("UPDATE item SET video = media || ';' || media_type WHERE media IS NOT NULL AND media_type LIKE 'video%';");
            arrayList.add("UPDATE item SET audio = media || ';' || media_type WHERE media IS NOT NULL AND media_type LIKE 'audio%';");
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // defpackage.ow6
    public String a() {
        return this.f;
    }

    @Override // defpackage.ow6
    public boolean b() {
        return (TextUtils.isEmpty(this.n) && TextUtils.isEmpty(this.m)) ? false : true;
    }

    @Override // defpackage.ow6
    public String c() {
        return this.k;
    }

    @Override // defpackage.ow6
    public String d() {
        ArrayList<cp6> arrayList;
        if (TextUtils.isEmpty(this.l)) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            if (this.l.contains("!#")) {
                for (String str : this.l.split("!#")) {
                    arrayList.add(new cp6(str));
                }
            } else {
                arrayList.add(new cp6(this.l));
            }
        }
        if (arrayList == null) {
            return null;
        }
        for (cp6 cp6Var : arrayList) {
            String str2 = cp6Var.b;
            if (str2 != null && str2.equals("image/visual")) {
                return cp6Var.a;
            }
        }
        return null;
    }

    @Override // defpackage.ow6
    public String e() {
        return this.j;
    }

    @Override // defpackage.ow6
    public String f() {
        return this.o;
    }

    @Override // defpackage.ow6
    public long g() {
        return this.p;
    }

    @Override // defpackage.ow6
    public String getContent() {
        return this.i;
    }

    @Override // defpackage.ow6
    public String getTitle() {
        return this.h;
    }

    public void h(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(";");
        sb.append(str2);
        sb.append(";");
        sb.append(0);
        sb.append(";");
        sb.append(0);
        sb.append(";");
        sb.append(0);
        sb.append(";");
        sb.append(0);
        if (TextUtils.isEmpty(this.l)) {
            this.l = sb.toString();
            return;
        }
        this.l += "!#" + sb.toString();
    }

    public void i(cp6 cp6Var) {
        String str;
        if (cp6Var.a == null || (str = cp6Var.b) == null) {
            return;
        }
        if (str.startsWith(NSRSS20.IMAGE)) {
            h(cp6Var.a, cp6Var.b);
            return;
        }
        if (cp6Var.b.startsWith("audio")) {
            String str2 = cp6Var.a;
            String str3 = cp6Var.b;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            StringBuilder sbC = jo.C(str2, ";", str3);
            if (TextUtils.isEmpty(this.n)) {
                this.n = sbC.toString();
                return;
            }
            this.n += "!#" + sbC.toString();
            return;
        }
        if (cp6Var.b.startsWith("video")) {
            String str4 = cp6Var.a;
            String str5 = cp6Var.b;
            if (TextUtils.isEmpty(str4)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str4);
            sb.append(";");
            sb.append(str5);
            sb.append(";");
            sb.append(0);
            sb.append(";");
            sb.append(0);
            sb.append(";");
            sb.append(0);
            sb.append(";");
            sb.append(0);
            if (TextUtils.isEmpty(this.m)) {
                this.m = sb.toString();
                return;
            }
            this.m += "!#" + sb.toString();
        }
    }

    public List<cp6> j() {
        if (TextUtils.isEmpty(this.n)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.n.contains("!#")) {
            arrayList.add(new cp6(this.n));
            return arrayList;
        }
        for (String str : this.n.split("!#")) {
            arrayList.add(new cp6(str));
        }
        return arrayList;
    }

    public cp6 m() {
        if (!b()) {
            return null;
        }
        if (!TextUtils.isEmpty(this.n)) {
            return j().get(0);
        }
        if (!TextUtils.isEmpty(this.m)) {
            return o().get(0);
        }
        return null;
    }

    public String n() {
        int iIndexOf;
        if (TextUtils.isEmpty(this.l) || (iIndexOf = this.l.indexOf(";")) == -1 || iIndexOf > this.l.length() - 1) {
            return null;
        }
        return this.l.substring(0, iIndexOf);
    }

    public List<cp6> o() {
        if (TextUtils.isEmpty(this.m)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.m.contains("!#")) {
            arrayList.add(new cp6(this.m));
            return arrayList;
        }
        for (String str : this.m.split("!#")) {
            arrayList.add(new cp6(str));
        }
        return arrayList;
    }

    public boolean p() {
        return !TextUtils.isEmpty(this.l);
    }

    public void q(Cursor cursor) {
        if (cursor == null) {
            return;
        }
        this.e = cursor.getLong(cursor.getColumnIndex("_id"));
        this.f = cursor.getString(cursor.getColumnIndex("uid"));
        this.g = cursor.getLong(cursor.getColumnIndex("sub_id"));
        this.h = cursor.getString(cursor.getColumnIndex("title"));
        this.i = cursor.getString(cursor.getColumnIndex(NSContent.NSTAG));
        this.j = cursor.getString(cursor.getColumnIndex("author"));
        this.k = cursor.getString(cursor.getColumnIndex(NSRSS20.LINK));
        this.l = cursor.getString(cursor.getColumnIndex(NSRSS20.IMAGE));
        this.m = cursor.getString(cursor.getColumnIndex("video"));
        this.n = cursor.getString(cursor.getColumnIndex("audio"));
        this.o = cursor.getString(cursor.getColumnIndex("sharer"));
        this.p = cursor.getLong(cursor.getColumnIndex("published_time"));
        this.q = cursor.getLong(cursor.getColumnIndex("updated_time"));
        this.r = cursor.getInt(cursor.getColumnIndex("starred")) == 1;
        this.s = cursor.getInt(cursor.getColumnIndex("cached")) > 0;
        this.t = cursor.getInt(cursor.getColumnIndex("cached"));
        this.u = cursor.getInt(cursor.getColumnIndex("keep_unread")) == 1;
        this.v = cursor.getInt(cursor.getColumnIndex("read")) == 1;
        this.w = cursor.getLong(cursor.getColumnIndex("read_time"));
        this.x = cursor.getLong(cursor.getColumnIndex("sync_time"));
        int columnIndex = cursor.getColumnIndex("sub_title");
        if (columnIndex > -1) {
            this.A = cursor.getString(columnIndex);
        }
    }

    public ContentValues s() {
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
        contentValues.put("sub_id", Long.valueOf(this.g));
        String str2 = this.h;
        if (str2 == null) {
            str2 = "(No title)";
        }
        contentValues.put("title", str2);
        String str3 = this.i;
        if (str3 == null) {
            str3 = "";
        }
        contentValues.put(NSContent.NSTAG, str3);
        String str4 = this.j;
        if (str4 == null) {
            str4 = "";
        }
        contentValues.put("author", str4);
        String str5 = this.k;
        if (str5 == null) {
            str5 = "";
        }
        contentValues.put(NSRSS20.LINK, str5);
        String str6 = this.l;
        if (str6 == null) {
            str6 = "";
        }
        contentValues.put(NSRSS20.IMAGE, str6);
        String str7 = this.m;
        if (str7 == null) {
            str7 = "";
        }
        contentValues.put("video", str7);
        String str8 = this.n;
        if (str8 == null) {
            str8 = "";
        }
        contentValues.put("audio", str8);
        String str9 = this.o;
        contentValues.put("sharer", str9 != null ? str9 : "");
        contentValues.put("published_time", Long.valueOf(this.p));
        contentValues.put("starred", Integer.valueOf(this.r ? 1 : 0));
        contentValues.put("read", Integer.valueOf(this.v ? 1 : 0));
        contentValues.put("read_time", Long.valueOf(this.w));
        contentValues.put("sync_time", Long.valueOf(this.x));
        contentValues.put("updated_time", Long.valueOf(this.q));
        return contentValues;
    }

    public String toString() {
        StringBuilder sbW = jo.w(RecyclerView.a0.FLAG_TMP_DETACHED, "Item{id=");
        sbW.append(this.e);
        sbW.append(",uid=");
        sbW.append(this.f);
        sbW.append(",title=");
        sbW.append(this.h);
        return new String(sbW);
    }

    public ap6(Cursor cursor) {
        q(cursor);
    }
}
