package defpackage;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.provider.ReaderProvider;
import defpackage.gw6;
import defpackage.rn6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
public class ep6 {
    public final Context a;
    public rn6 b;

    public class a implements rn6.d {
        public final /* synthetic */ long a;

        public a(long j) {
            this.a = j;
        }

        public void a(List<lp6> list) throws gw6 {
            ep6 ep6Var = ep6.this;
            long j = this.a;
            ContentResolver contentResolver = ep6Var.a.getContentResolver();
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                Iterator<lp6> it = list.iterator();
                while (it.hasNext()) {
                    ep6Var.U(it.next(), j);
                }
                contentResolver.query(ReaderProvider.i, null, null, null, null);
            } finally {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
            }
        }
    }

    public class b implements rn6.c {
        public final /* synthetic */ long a;

        public b(long j) {
            this.a = j;
        }

        public void a(List<ip6> list) throws gw6 {
            ep6 ep6Var = ep6.this;
            long j = this.a;
            ContentResolver contentResolver = ep6Var.a.getContentResolver();
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                for (ip6 ip6Var : list) {
                    ContentValues contentValuesI = ip6Var.i();
                    contentValuesI.put("sync_time", Long.valueOf(j));
                    long jD = on6.d(ep6Var.a, ip6Var.f);
                    if (jD == 0) {
                        jD = ContentUris.parseId(contentResolver.insert(ip6.A, contentValuesI));
                    } else {
                        contentResolver.update(ContentUris.withAppendedId(ip6.A, jD), contentValuesI, null, null);
                    }
                    List<String> list2 = ip6Var.l;
                    if (list2 != null) {
                        String[] strArr = {String.valueOf(jD), null};
                        for (String str : list2) {
                            contentValuesI.clear();
                            contentValuesI.put("sub_id", Long.valueOf(jD));
                            contentValuesI.put("tag_uid", str);
                            contentValuesI.put("sync_time", Long.valueOf(j));
                            strArr[1] = str;
                            if (jD == 0 || contentResolver.update(kp6.e, contentValuesI, "sub_id = ? AND tag_uid = ?", strArr) == 0) {
                                contentResolver.insert(kp6.e, contentValuesI);
                            }
                        }
                    }
                }
                contentResolver.query(ReaderProvider.i, null, null, null, null);
            } finally {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
            }
        }
    }

    public class c implements rn6.e {
        public c(ep6 ep6Var) {
        }
    }

    public class d implements rn6.b {
        public final /* synthetic */ String a;
        public final /* synthetic */ int b;
        public final /* synthetic */ long c;
        public final /* synthetic */ cw6 d;

        public d(String str, int i, long j, cw6 cw6Var) {
            this.a = str;
            this.b = i;
            this.c = j;
            this.d = cw6Var;
        }

        @Override // rn6.b
        public void a(List<ap6> list) throws Throwable {
            ep6.this.L(list, this.c, this.d, ep6.this.n() == 7 ? 2 : 1);
        }

        @Override // rn6.b
        public long b() {
            return (iw6.z(ep6.this.a) / 1000) - 60;
        }

        @Override // rn6.b
        public int c() {
            return this.b;
        }

        @Override // rn6.b
        public boolean d() {
            return true;
        }

        @Override // rn6.b
        public boolean e() {
            return true;
        }

        @Override // rn6.b
        public boolean f() {
            return true;
        }

        @Override // rn6.b
        public Set<String> g() {
            return null;
        }

        @Override // rn6.b
        public String stream() {
            return this.a;
        }
    }

    public class e implements rn6.b {
        public final /* synthetic */ String a;
        public final /* synthetic */ long b;
        public final /* synthetic */ cw6 c;

        public e(String str, long j, cw6 cw6Var) {
            this.a = str;
            this.b = j;
            this.c = cw6Var;
        }

        @Override // rn6.b
        public void a(List<ap6> list) throws Throwable {
            ep6.this.L(list, this.b, this.c, ep6.this.n() == 7 ? 2 : 1);
        }

        @Override // rn6.b
        public long b() {
            return 0L;
        }

        @Override // rn6.b
        public int c() {
            return 250;
        }

        @Override // rn6.b
        public boolean d() {
            return false;
        }

        @Override // rn6.b
        public boolean e() {
            return true;
        }

        @Override // rn6.b
        public boolean f() {
            return false;
        }

        @Override // rn6.b
        public Set<String> g() {
            return null;
        }

        @Override // rn6.b
        public String stream() {
            return this.a;
        }
    }

    public class f extends AsyncTask<Void, Void, Void> {
        public final ap6 a;
        public final lp6 b;
        public final boolean c;

        public f(ap6 ap6Var, lp6 lp6Var, boolean z) {
            this.a = ap6Var;
            this.b = lp6Var;
            this.c = z;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            long id;
            ContentResolver contentResolver = ep6.this.a.getContentResolver();
            String[] strArr = {this.b.f, this.a.f};
            ContentResolver contentResolver2 = ep6.this.a.getContentResolver();
            Uri uri = jp6.e;
            Cursor cursorQuery = contentResolver2.query(uri, jp6.f, "tag_uid = ? AND item_uid = ?", strArr, null);
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                String[] strArr2 = {String.valueOf(this.a.e)};
                if (this.b.g == 1) {
                    if (this.c) {
                        contentValues.put("starred", (Integer) 1);
                    } else {
                        contentValues.put("starred", (Integer) 0);
                    }
                    contentResolver.update(ap6.B, contentValues, "_id = ?", strArr2);
                }
                contentValues.clear();
                contentValues.put("action", Integer.valueOf(this.c ? 1 : -1));
                if (cursorQuery.moveToNext()) {
                    id = cursorQuery.getLong(0);
                    contentResolver.update(ContentUris.withAppendedId(uri, id), contentValues, null, null);
                } else if (this.c) {
                    contentValues.put("item_uid", this.a.f);
                    contentValues.put("tag_uid", this.b.f);
                    contentValues.put("sync_time", (Integer) 0);
                    id = ContentUris.parseId(contentResolver.insert(uri, contentValues));
                } else {
                    id = 0;
                }
                long j = id;
                ep6.this.Z(new long[]{this.a.g});
                contentResolver.query(ReaderProvider.i, null, null, null, null);
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                cursorQuery.close();
                yd.a(ep6.this.a).c(new Intent("com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"));
                ep6.this.a.sendBroadcast(new Intent("com.noinnion.android.greader.reader.action.WIDGET_UPDATE"));
                ip6 ip6VarC = ip6.c(ep6.this.a, this.a.g, false);
                if (ip6VarC != null) {
                    try {
                        ep6.this.V(j, this.a.f, ip6VarC.f, this.b.f, this.c, System.currentTimeMillis());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                return null;
            } catch (Throwable th2) {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                cursorQuery.close();
                throw th2;
            }
        }
    }

    public class g extends AsyncTask<long[], Void, Void> {
        public boolean a;
        public boolean b;

        public g(boolean z, boolean z2) {
            this.a = false;
            this.b = false;
            this.a = z;
            this.b = z2;
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(long[][] jArr) throws Throwable {
            long[][] jArr2 = jArr;
            try {
                ep6.this.A(jArr2[0], jArr2[1], jArr2[2], this.a, this.b);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public class h extends AsyncTask<Void, Void, Void> {
        public h(dp6 dp6Var) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            try {
                ep6.this.M();
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public ep6(Context context) {
        this.a = context;
    }

    public static Cursor o(Context context, boolean z, String str, boolean z2, boolean z3, String str2, long j) {
        StringBuilder sb = new StringBuilder(v(z, str, j));
        if (z2) {
            sb.append(sb.length() > 0 ? " AND " : "");
            sb.append("item.cached > 0");
        }
        if (z3) {
            sb.append(sb.length() <= 0 ? "" : " AND ");
            sb.append("(item.video <> '' OR item.audio <> '')");
        }
        return context.getContentResolver().query(ReaderProvider.t, null, new String(sb), null, str2);
    }

    public static Cursor p(Context context, String str, boolean z, String str2, String str3, long j) {
        StringBuilder sb = new StringBuilder(v(z, str2, j));
        sb.append(sb.length() > 0 ? " AND " : "");
        sb.append("item.sub_id IN (SELECT tag2sub.sub_id FROM tag2sub WHERE tag2sub.tag_uid = ?)");
        return context.getContentResolver().query(ReaderProvider.t, null, new String(sb), new String[]{str}, str3);
    }

    public static Cursor q(Context context, String str, boolean z, String str2, String str3, long j) {
        StringBuilder sb = new StringBuilder(v(z, str2, j));
        sb.append(sb.length() > 0 ? " AND " : "");
        sb.append("subscription.uid = ?");
        return context.getContentResolver().query(ReaderProvider.t, null, new String(sb), new String[]{str}, str3);
    }

    public static Cursor r(Context context, String str, boolean z, String str2, String str3, long j) {
        StringBuilder sb = new StringBuilder(v(z, str2, j));
        sb.append(sb.length() > 0 ? " AND " : "");
        sb.append("tag2item.item_uid = item.uid AND tag2item.tag_uid = ? AND tag2item.action >= 0");
        return context.getContentResolver().query(ReaderProvider.t, null, new String(sb), new String[]{str}, str3);
    }

    public static Cursor s(Context context, String str, boolean z, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.length() > 0) {
            if (str.contains("@")) {
                int iIndexOf = str.indexOf("@");
                if (iIndexOf > -1) {
                    String strSubstring = str.substring(iIndexOf + 1, str.length());
                    String strSubstring2 = str.substring(0, iIndexOf);
                    return strSubstring2.startsWith(RssReaderClient.USER_FEED) ? q(context, strSubstring2, z, strSubstring, str2, -1L) : strSubstring2.startsWith("user/") ? p(context, strSubstring2, z, strSubstring, str2, -1L) : strSubstring2.startsWith("cached") ? o(context, z, strSubstring, true, false, str2, -1L) : strSubstring2.startsWith("podcast") ? o(context, z, strSubstring, false, true, str2, -1L) : o(context, z, strSubstring, false, false, str2, -1L);
                }
            } else {
                if (str.startsWith("cached")) {
                    return o(context, z, null, true, false, str2, -1L);
                }
                if (str.startsWith("podcast")) {
                    return o(context, z, null, false, true, str2, -1L);
                }
                if (str.startsWith("user/")) {
                    return lp6.d(str) ? r(context, str, z, null, str2, -1L) : p(context, str, z, null, str2, -1L);
                }
                if (str.startsWith(RssReaderClient.USER_FEED)) {
                    return q(context, str, z, null, str2, -1L);
                }
            }
        }
        return o(context, z, null, false, false, str2, -1L);
    }

    public static long[] t(Context context, String str, int i, boolean z) {
        if (i == 0) {
            i = 100;
        }
        String[] strArr = ap6.I;
        Cursor cursorS = s(context, str, z, on6.f(context) + " limit " + i);
        long[] jArr = null;
        if (cursorS == null) {
            return null;
        }
        try {
            if (cursorS.moveToFirst()) {
                jArr = new long[cursorS.getCount()];
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    jArr[i2] = cursorS.getInt(0);
                    if (!cursorS.moveToNext()) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return jArr;
        } finally {
            cursorS.close();
        }
    }

    public static vd u(Context context, boolean z, String str, boolean z2, boolean z3, String str2, long j) {
        StringBuilder sb = new StringBuilder(v(z, str, j));
        if (z2) {
            sb.append(sb.length() > 0 ? " AND " : "");
            sb.append("item.cached > 0");
        }
        if (z3) {
            sb.append(sb.length() <= 0 ? "" : " AND ");
            sb.append("(item.video <> '' OR item.audio <> '')");
        }
        return new vd(context, ReaderProvider.t, null, new String(sb), null, str2);
    }

    public static String v(boolean z, String str, long j) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("(item.read = 0");
            if (j > 0) {
                str2 = " OR item.read_time > " + j + ")";
            } else {
                str2 = ")";
            }
            sb.append(str2);
        }
        if (str != null && str.trim().length() > 0) {
            String strW = w(str.trim().replaceAll("'", ""));
            if (!TextUtils.isEmpty(strW)) {
                jo.H(sb, sb.length() > 0 ? " AND (" : "(", strW, ")");
            }
        }
        return sb.toString();
    }

    public static String w(String str) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str2 : TextUtils.split(str, " \\| ")) {
            String strTrim = str2.trim();
            if (!TextUtils.isEmpty(strTrim)) {
                if (z) {
                    z = false;
                } else {
                    sb.append(" OR ");
                }
                String[] strArrSplit = TextUtils.split(strTrim, " & ");
                StringBuilder sb2 = new StringBuilder();
                boolean z2 = true;
                for (String str3 : strArrSplit) {
                    String strTrim2 = str3.replace("|", "").replace("&", "").trim();
                    if (!TextUtils.isEmpty(strTrim2)) {
                        if (z2) {
                            z2 = false;
                        } else {
                            sb2.append(" AND ");
                        }
                        if (strTrim2.startsWith("!")) {
                            sb2.append("(item.title NOT LIKE '%");
                            sb2.append(strTrim2.replace("!", ""));
                            sb2.append("%' OR item.content NOT LIKE '%");
                            sb2.append(strTrim2.replace("!", ""));
                            sb2.append("%')");
                        } else {
                            jo.J(sb2, "(item.title LIKE '%", strTrim2, "%' OR item.content LIKE '%", strTrim2);
                            sb2.append("%')");
                        }
                    }
                }
                if (!TextUtils.isEmpty(sb2)) {
                    sb.append("(");
                    sb.append((CharSequence) sb2);
                    sb.append(")");
                }
            }
        }
        return sb.toString();
    }

    public static vd x(Context context, String str, boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append("tag2sub.sub_id = subscription._id");
        sb.append(" AND ");
        sb.append("tag2sub.tag_uid = \"");
        sb.append(str);
        sb.append("\"");
        if (!z2) {
            jo.H(sb, " AND ", "subscription.hidden", " = 0");
        }
        if (z) {
            jo.H(sb, " AND ", "subscription.unread_count", " > 0");
        }
        return new vd(context, ip6.A, null, new String(sb), null, on6.e(context));
    }

    public static vd y(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        String string;
        String strS;
        StringBuilder sb = new StringBuilder();
        if (!z3) {
            sb.append("hidden = 0");
        }
        string = "";
        if (z2) {
            if (z) {
                sb.append(sb.length() <= 0 ? "" : " AND ");
                sb.append(" unread_count > 0");
            }
        } else if (z) {
            sb.append(sb.length() <= 0 ? "" : " AND ");
            sb.append("(unread_count > 0");
            sb.append(z4 ? " OR type = 9" : "");
            sb.append(")");
        } else {
            if (!z4) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sb.length() <= 0 ? "" : " AND ");
                sb2.append(" type != ");
                sb2.append(9);
                string = sb2.toString();
            }
            sb.append(string);
        }
        if (z2) {
            strS = on6.e(context);
        } else {
            hw6 hw6VarG = on6.g(context);
            int iB = hw6VarG.b();
            if (iB == 1) {
                strS = "type, title COLLATE NOCASE ASC";
            } else if (iB == 2) {
                strS = "type, title COLLATE NOCASE DESC";
            } else if (iB == 3) {
                strS = "type, newest_item_time ASC";
            } else if (iB != 4) {
                strS = jo.s(new StringBuilder(), hw6VarG.b ? "sort2" : "sort", ", type");
            } else {
                strS = "type, newest_item_time DESC";
            }
        }
        return new vd(context, z2 ? ip6.A : ReaderProvider.s, null, new String(sb), null, strS);
    }

    public void A(long[] jArr, long[] jArr2, long[] jArr3, boolean z, boolean z2) throws Throwable {
        boolean z3;
        long[] jArr4;
        boolean z4 = jArr != null && jArr.length > 0;
        boolean z5 = jArr2 != null && jArr2.length > 0;
        if (z4 || z5) {
            StringBuilder sb = new StringBuilder();
            ContentValues contentValues = new ContentValues();
            ContentResolver contentResolver = this.a.getContentResolver();
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            boolean z6 = z5;
            if (z4) {
                try {
                    sb.append("read");
                    sb.append(" = 0");
                    z3 = z4;
                    if (z) {
                        sb.append(" AND ");
                        sb.append("keep_unread");
                        sb.append(" = 0");
                    }
                    sb.append(" AND ");
                    sb.append("_id");
                    sb.append(" IN (");
                    sb.append(n56.p1(jArr, ","));
                    sb.append(")");
                    contentValues.put("read", (Integer) 1);
                    contentValues.put("keep_unread", (Integer) 0);
                    contentValues.put("read_time", Long.valueOf(System.currentTimeMillis()));
                    contentResolver.update(ap6.B, contentValues, new String(sb), null);
                } catch (Throwable th) {
                    th = th;
                    contentResolver.query(ReaderProvider.j, null, null, null, null);
                    throw th;
                }
            } else {
                z3 = z4;
            }
            if (z6) {
                sb.setLength(0);
                sb.append("_id");
                sb.append(" IN (");
                jArr4 = jArr2;
                sb.append(n56.p1(jArr4, ","));
                sb.append(")");
                contentValues.clear();
                contentValues.put("read", (Integer) 0);
                contentValues.put("read_time", (Integer) 0);
                if (z) {
                    contentValues.put("keep_unread", (Integer) 1);
                }
                contentResolver.update(ap6.B, contentValues, new String(sb), null);
            } else {
                jArr4 = jArr2;
            }
            try {
                Z(jArr3);
                contentResolver.query(ReaderProvider.i, null, null, null, null);
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                n56.I1(this.a, true, true);
                if (z3 && z2) {
                    try {
                        N(jArr);
                    } catch (Throwable unused) {
                    }
                }
                if (z6) {
                    try {
                        P(jArr4, z);
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                throw th;
            }
        }
    }

    public void B(long[] jArr, long[] jArr2, long[] jArr3, boolean z, boolean z2) {
        new g(z, z2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, jArr, jArr2, jArr3);
    }

    public void C(ip6 ip6Var, String str) throws gw6, IOException {
        if (ip6Var == null || TextUtils.isEmpty(str)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String categoryUid = m().getCategoryUid(str);
        lp6 lp6Var = new lp6();
        lp6Var.f = categoryUid;
        lp6Var.i = str;
        lp6Var.h = "";
        lp6Var.g = 11;
        U(lp6Var, jCurrentTimeMillis);
        a(ip6Var, new String[]{categoryUid});
    }

    public void D(ap6 ap6Var, String str) throws gw6, IOException {
        if (ap6Var == null || TextUtils.isEmpty(str)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String tagUid = m().getTagUid(str);
        lp6 lp6Var = new lp6();
        lp6Var.f = tagUid;
        lp6Var.i = str;
        lp6Var.h = "";
        lp6Var.g = 10;
        U(lp6Var, jCurrentTimeMillis);
        c(ap6Var, new String[]{tagUid});
    }

    public void E() {
        try {
            this.a.getContentResolver().query(ReaderProvider.f, null, null, null, null);
            Y();
            n56.I1(this.a, true, true);
        } catch (Exception unused) {
        }
    }

    public void F(ip6 ip6Var, String[] strArr) {
        if (ip6Var == null || strArr == null || strArr.length == 0) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            for (String str : strArr) {
                contentResolver.delete(kp6.e, "sub_id = ? AND tag_uid = ?", new String[]{String.valueOf(ip6Var.e), str});
            }
            Z(new long[]{ip6Var.e});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            K(ip6Var, ip6Var.h, strArr, 5);
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void G(long j) {
        String strF = iw6.F(this.a, "cache_auto_clean_read");
        int i = (strF == null || strF.length() == 0) ? 1 : Integer.parseInt(strF);
        String strF2 = iw6.F(this.a, "cache_auto_clean_unread");
        int i2 = (strF2 == null || strF2.length() == 0) ? -1 : Integer.parseInt(strF2);
        if (i >= 0 || i2 >= 0) {
            ContentResolver contentResolver = this.a.getContentResolver();
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                StringBuilder sb = new StringBuilder();
                sb.append("(");
                if (i >= 0) {
                    long j2 = jCurrentTimeMillis - (i * DateUtils.MILLIS_PER_DAY);
                    sb.append("(item.read = 1 AND ((item.read_time <> 0 AND item.read_time < ");
                    sb.append(j2);
                    sb.append(") OR (item.read_time = 0 AND item.sync_time < ");
                    sb.append(j2);
                    sb.append(")))");
                }
                if (i2 > 0) {
                    long j3 = jCurrentTimeMillis - (i2 * DateUtils.MILLIS_PER_DAY);
                    sb.append(i >= 0 ? " OR " : "");
                    sb.append("(item.read = 0 AND item.sync_time < ");
                    sb.append(j3);
                    sb.append(")");
                }
                sb.append(")");
                if (iw6.f(this.a, "cache_keep_starred", true)) {
                    sb.append(" AND item.starred = 0");
                }
                if (iw6.f(this.a, "cache_keep_cached", false)) {
                    sb.append(" AND item.cached = 0");
                }
                if (n() == 7) {
                    sb.append(" AND item.sync_time < ");
                    sb.append(j);
                }
                if (contentResolver.delete(ap6.B, sb.toString(), null) > 0) {
                    contentResolver.delete(ReaderProvider.r, null, null);
                    Y();
                }
                contentResolver.query(ReaderProvider.i, null, null, null, null);
            } finally {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
            }
        }
    }

    public void H(ap6 ap6Var, String[] strArr) throws gw6, IOException {
        if (ap6Var == null || strArr == null || strArr.length == 0) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            for (String str : strArr) {
                contentResolver.delete(jp6.e, "item_uid = ? AND tag_uid = ?", new String[]{ap6Var.f, str});
            }
            Z(new long[]{ap6Var.g});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            ip6 ip6VarC = ip6.c(this.a, ap6Var.g, false);
            J(new String[]{ap6Var.f}, ip6VarC != null ? new String[]{ip6VarC.f} : null, strArr, 2);
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public cw6 I(long j) throws gw6, IOException {
        String strSubstring;
        String strSubstring2;
        int i;
        long j2;
        long j3;
        boolean z;
        SparseIntArray sparseIntArray;
        Cursor cursorK = new vd(this.a, zo6.h, new String[]{"history._id", "history.type", "history.sync_time", "history.params"}, "history.done = 0 AND history.type != 4", null, "history.sync_time DESC").k();
        int i2 = 3;
        int i3 = 2;
        int i4 = 0;
        int i5 = 1;
        if (cursorK != null) {
            try {
                try {
                    rn6 rn6VarM = m();
                    while (cursorK.moveToNext()) {
                        long j4 = cursorK.getLong(i4);
                        int i6 = cursorK.getInt(i5);
                        long j5 = cursorK.getLong(i3);
                        String string = cursorK.getString(i2);
                        if (i6 == i5 || i6 == i2 || i6 == 2 || i6 == 5) {
                            int iIndexOf = string.indexOf("&t=");
                            if (iIndexOf > 0) {
                                strSubstring2 = string.substring(2, iIndexOf);
                                int iIndexOf2 = string.indexOf("&", iIndexOf + 1);
                                int i7 = iIndexOf + 3;
                                if (iIndexOf2 <= 0) {
                                    iIndexOf2 = string.length();
                                }
                                strSubstring = string.substring(i7, iIndexOf2);
                            } else {
                                strSubstring = null;
                                strSubstring2 = null;
                            }
                            if (i6 == 5) {
                                int iIndexOf3 = string.indexOf("&a=");
                                int iIndexOf4 = string.indexOf("&r=");
                                if (iIndexOf3 > 0) {
                                    i = i6;
                                    j2 = j4;
                                    rn6VarM.editSubscription(strSubstring2, strSubstring, strSubstring2, string.substring(iIndexOf3 + 3, string.length()).split(";"), 4);
                                } else {
                                    i = i6;
                                    j2 = j4;
                                    if (iIndexOf4 > 0) {
                                        rn6VarM.editSubscription(strSubstring2, strSubstring, strSubstring2, string.substring(iIndexOf3 + 3, string.length()).split(";"), 5);
                                    } else {
                                        rn6VarM.editSubscription(strSubstring2, strSubstring, strSubstring2, null, 1);
                                    }
                                }
                            } else {
                                i = i6;
                                j2 = j4;
                                rn6VarM.markAllAsRead(strSubstring2, strSubstring, j5);
                            }
                        } else {
                            if (i6 == 6) {
                                int iIndexOf5 = string.indexOf("&t=");
                                int iIndexOf6 = string.indexOf("&dest=");
                                if (iIndexOf5 > 0 && iIndexOf6 > iIndexOf5) {
                                    rn6VarM.renameTag(string.substring(2, iIndexOf5), string.substring(iIndexOf5 + 3, iIndexOf6), string.substring(iIndexOf6 + 6, string.length()));
                                }
                            } else if (i6 == 7) {
                                int iIndexOf7 = string.indexOf("&t=");
                                if (iIndexOf7 > 0) {
                                    rn6VarM.disableTag(string.substring(2, iIndexOf7), string.substring(iIndexOf7 + 3, string.length()));
                                }
                            } else {
                                if (i6 == 8) {
                                    ArrayList arrayList = new ArrayList();
                                    ArrayList arrayList2 = new ArrayList();
                                    String strSubstring3 = null;
                                    String strSubstring4 = null;
                                    while (string.length() > 0) {
                                        int iIndexOf8 = string.indexOf("&");
                                        String strSubstring5 = iIndexOf8 > 0 ? string.substring(0, iIndexOf8) : string;
                                        long j6 = j4;
                                        if (strSubstring5.startsWith("s=")) {
                                            strSubstring4 = strSubstring5.substring(2);
                                        } else if (strSubstring5.startsWith("i=")) {
                                            strSubstring3 = strSubstring5.substring(2);
                                        } else if (strSubstring5.startsWith("a=")) {
                                            arrayList.add(strSubstring5.substring(2));
                                        } else if (strSubstring5.startsWith("r=")) {
                                            arrayList2.add(strSubstring5.substring(2));
                                        }
                                        string = iIndexOf8 > 0 ? string.substring(iIndexOf8 + 1) : "";
                                        j4 = j6;
                                    }
                                    j3 = j4;
                                    if (arrayList2.size() > 0) {
                                        rn6VarM.editItemTag(new String[]{strSubstring3}, new String[]{strSubstring4}, (String[]) arrayList2.toArray(new String[arrayList2.size()]), 2);
                                    }
                                    if (arrayList.size() > 0) {
                                        rn6VarM.editItemTag(new String[]{strSubstring3}, new String[]{strSubstring4}, (String[]) arrayList.toArray(new String[arrayList.size()]), 1);
                                    }
                                }
                                i = i6;
                                j2 = j3;
                            }
                            j3 = j4;
                            i = i6;
                            j2 = j3;
                        }
                        f(j2);
                        if (i == 1) {
                            break;
                        }
                        i4 = 0;
                        i5 = 1;
                        i2 = 3;
                        i3 = 2;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } finally {
            }
        }
        S(j);
        ContentResolver contentResolver = this.a.getContentResolver();
        Cursor cursorK2 = new vd(this.a, jp6.e, new String[]{"item.uid", "tag2item.tag_uid", "tag2item.action", "tag2item._id", "item.sub_id"}, "item.uid = tag2item.item_uid AND tag2item.action <> 0", null, null).k();
        if (cursorK2 == null) {
            z = true;
        } else {
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            while (cursorK2.moveToNext()) {
                try {
                    String string2 = cursorK2.getString(0);
                    String string3 = cursorK2.getString(1);
                    int i8 = cursorK2.getInt(2);
                    long j7 = cursorK2.getLong(3);
                    ip6 ip6VarC = ip6.c(this.a, cursorK2.getLong(4), false);
                    if (ip6VarC != null) {
                        V(j7, string2, ip6VarC.f, string3, i8 == 1, j);
                    }
                } finally {
                    cursorK2.close();
                    contentResolver.query(ReaderProvider.j, null, null, null, null);
                }
            }
            z = true;
            contentResolver.query(ReaderProvider.i, null, null, null, null);
        }
        M();
        cw6 cw6Var = new cw6();
        if (iw6.f(this.a, "sync_notifiable_custom", z)) {
            cursorK = new vd(this.a, ip6.A, ip6.D, "notification = 1", null, null).k();
            if (cursorK == null) {
                sparseIntArray = null;
            } else {
                sparseIntArray = new SparseIntArray();
                while (cursorK.moveToNext()) {
                    try {
                        sparseIntArray.put(cursorK.getInt(0), 0);
                    } finally {
                    }
                }
            }
            cw6Var.b = sparseIntArray;
        }
        try {
            m().handleItemList(new fp6(this, iw6.I(this.a), j, cw6Var), j);
            this.a.getContentResolver().update(ReaderProvider.n, null, null, null);
            if (iw6.f(this.a, "sync_server_reads", z) && m().handleItemIdList(new dp6(this), j)) {
                n56.I1(this.a, z, z);
            }
            if (iw6.f(this.a, "sync_include_starred", false)) {
                cw6Var.a = W(rn6.STATE_STARRED, j, true, iw6.I(this.a)) + cw6Var.a;
            }
            return cw6Var;
        } catch (gw6.b e3) {
            throw new gw6.b(e3);
        }
    }

    public void J(String[] strArr, String[] strArr2, String[] strArr3, int i) {
        try {
            m().editItemTag(strArr, strArr2, strArr3, i);
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            if (strArr2 != null && strArr2.length > 0) {
                sb.append("s=");
                sb.append(TextUtils.join(",", strArr2));
            }
            sb.append("&i=");
            sb.append(TextUtils.join(",", strArr));
            if (i == 1) {
                sb.append("&a=");
                sb.append(TextUtils.join(",", strArr3));
            } else if (i == 2) {
                sb.append("&r=");
                sb.append(TextUtils.join(",", strArr3));
            } else if (i == 3) {
                sb.append("&n=");
                sb.append(TextUtils.join(",", strArr3));
            }
            z(8, sb.toString(), System.currentTimeMillis());
        }
    }

    public final void K(ip6 ip6Var, String str, String[] strArr, int i) {
        int i2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (strArr != null) {
            try {
                i2 = strArr.length == 0 ? 1 : i;
            } catch (Exception unused) {
                StringBuilder sbZ = jo.z("s=");
                jo.H(sbZ, ip6Var.f, "&t=", str);
                if (strArr != null) {
                    if (i == 4) {
                        sbZ.append("&a=");
                        sbZ.append(TextUtils.join(",", strArr));
                    } else if (i == 5) {
                        sbZ.append("&r=");
                        sbZ.append(TextUtils.join(",", strArr));
                    } else if (i == 6) {
                        sbZ.append("&n=");
                        sbZ.append(TextUtils.join(",", strArr));
                    }
                }
                z(5, sbZ.toString(), jCurrentTimeMillis);
                return;
            }
        }
        m().editSubscription(ip6Var.f, str, null, strArr, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x020f A[Catch: all -> 0x02ea, TryCatch #2 {all -> 0x02ea, blocks: (B:29:0x00d5, B:31:0x00df, B:34:0x00e7, B:38:0x0102, B:54:0x0148, B:57:0x014f, B:67:0x0162, B:69:0x0172, B:72:0x017b, B:74:0x0183, B:78:0x018d, B:80:0x0195, B:82:0x019d, B:84:0x01a5, B:87:0x01ad, B:89:0x01b5, B:90:0x01c6, B:91:0x01c9, B:94:0x01d5, B:96:0x01e0, B:97:0x01e7, B:99:0x01f6, B:101:0x01fa, B:103:0x0201, B:108:0x022b, B:110:0x022f, B:112:0x0235, B:113:0x024a, B:115:0x0250, B:117:0x0273, B:105:0x020f, B:107:0x0213, B:45:0x011b, B:121:0x0287, B:123:0x02c3), top: B:142:0x00d5 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d5 A[Catch: all -> 0x02ea, TRY_ENTER, TryCatch #2 {all -> 0x02ea, blocks: (B:29:0x00d5, B:31:0x00df, B:34:0x00e7, B:38:0x0102, B:54:0x0148, B:57:0x014f, B:67:0x0162, B:69:0x0172, B:72:0x017b, B:74:0x0183, B:78:0x018d, B:80:0x0195, B:82:0x019d, B:84:0x01a5, B:87:0x01ad, B:89:0x01b5, B:90:0x01c6, B:91:0x01c9, B:94:0x01d5, B:96:0x01e0, B:97:0x01e7, B:99:0x01f6, B:101:0x01fa, B:103:0x0201, B:108:0x022b, B:110:0x022f, B:112:0x0235, B:113:0x024a, B:115:0x0250, B:117:0x0273, B:105:0x020f, B:107:0x0213, B:45:0x011b, B:121:0x0287, B:123:0x02c3), top: B:142:0x00d5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void L(java.util.List<defpackage.ap6> r20, long r21, defpackage.cw6 r23, int r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ep6.L(java.util.List, long, cw6, int):void");
    }

    public boolean M() throws gw6, IOException {
        ContentResolver contentResolver = this.a.getContentResolver();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        StringBuilder sb = new StringBuilder();
        sb.append("item.");
        sb.append("sync_time");
        sb.append(" < ");
        sb.append("item.");
        sb.append("read_time");
        jo.J(sb, " AND ", "item.", "read", " = 1");
        sb.append(" AND ");
        sb.append("subscription.");
        sb.append("uid");
        sb.append(" IS NOT NULL");
        StringBuilder sb2 = new StringBuilder();
        int i = 1;
        String string = null;
        int i2 = 1;
        while (i > 0) {
            arrayList.clear();
            arrayList2.clear();
            sb2.setLength(0);
            Cursor cursorQuery = contentResolver.query(ap6.B, ap6.G, new String(sb), null, " limit 250");
            int count = cursorQuery == null ? 0 : cursorQuery.getCount();
            if (count == 0) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return false;
            }
            boolean z = true;
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        if (!z) {
                            sb2.append(",");
                        } else {
                            if (string != null && string.equals(cursorQuery.getString(i2))) {
                                cursorQuery.close();
                                return false;
                            }
                            string = cursorQuery.getString(i2);
                            z = false;
                        }
                        sb2.append(cursorQuery.getLong(0));
                        arrayList.add(cursorQuery.getString(i2));
                        arrayList2.add(cursorQuery.getString(2));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return false;
                    }
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            cursorQuery.close();
            if (arrayList.size() == 0 || !m().markAsRead((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]))) {
                return false;
            }
            int i3 = count;
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("ids", sb2.toString());
                contentResolver.update(ReaderProvider.l, contentValues, null, null);
                contentResolver.query(ReaderProvider.i, null, null, null, null);
                if (i3 < 250) {
                    contentResolver.query(ReaderProvider.j, null, null, null, null);
                    return true;
                }
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                i2 = 1;
                i = i3;
            } catch (Throwable th2) {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                throw th2;
            }
        }
        return true;
    }

    public boolean N(long[] jArr) throws gw6, IOException {
        if (!(jArr != null && jArr.length > 0)) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        ContentResolver contentResolver = this.a.getContentResolver();
        int length = (jArr.length / 250) + 1;
        for (int i = 0; i < length; i++) {
            int i2 = i * 250;
            int i3 = (i2 + 250) - 1;
            StringBuilder sb2 = new StringBuilder();
            int length2 = i3 > jArr.length + (-1) ? jArr.length : i3 + 1;
            for (int i4 = i2; i4 < length2; i4++) {
                if (i4 > i2) {
                    sb2.append(",");
                }
                sb2.append(jArr[i4]);
            }
            String string = sb2.toString();
            sb.setLength(0);
            sb.append("item._id");
            sb.append(" IN (");
            sb.append(string);
            jo.J(sb, ")", " AND ", "subscription.", "uid");
            sb.append(" IS NOT NULL");
            Cursor cursorQuery = contentResolver.query(ap6.B, ap6.G, new String(sb), null, " limit 250");
            if (cursorQuery == null || cursorQuery.getCount() == 0) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(cursorQuery.getString(1));
                    arrayList2.add(cursorQuery.getString(2));
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            cursorQuery.close();
            if (arrayList.size() == 0 || !m().markAsRead((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]))) {
                return false;
            }
            contentResolver.query(ReaderProvider.h, null, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("ids", string);
                contentResolver.update(ReaderProvider.l, contentValues, null, null);
                contentResolver.query(ReaderProvider.i, null, null, null, null);
                contentResolver.query(ReaderProvider.j, null, null, null, null);
            } catch (Throwable th2) {
                contentResolver.query(ReaderProvider.j, null, null, null, null);
                throw th2;
            }
        }
        return true;
    }

    public void O() {
        new h(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public final void P(long[] jArr, boolean z) throws gw6, IOException {
        if (jArr != null && jArr.length > 0) {
            String strP1 = n56.p1(jArr, ",");
            StringBuilder sb = new StringBuilder();
            sb.append("item._id");
            sb.append(" IN (");
            sb.append(strP1);
            sb.append(")");
            sb.append(" AND ");
            jo.H(sb, "subscription.", "uid", " IS NOT NULL");
            Cursor cursorQuery = this.a.getContentResolver().query(ap6.B, ap6.G, new String(sb), null, null);
            if (cursorQuery == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(cursorQuery.getString(1));
                    arrayList2.add(cursorQuery.getString(2));
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            cursorQuery.close();
            m().markAsUnread((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), z);
        }
    }

    public void Q(ip6 ip6Var, long j, boolean z) {
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("read", (Integer) 1);
            contentValues.put("read_time", Long.valueOf(j));
            contentValues.put("sync_time", Long.valueOf(j));
            StringBuilder sb = new StringBuilder();
            sb.append("read");
            sb.append(" = 0 AND ");
            sb.append("keep_unread");
            sb.append(" = 0");
            sb.append(" AND ");
            sb.append("sub_id");
            sb.append(" = ");
            sb.append(ip6Var.e);
            if (!z) {
                sb.append(" AND ");
                sb.append("updated_time");
                sb.append(" < ");
                sb.append(String.valueOf(j / 1000));
            }
            contentResolver.update(ap6.B, contentValues, new String(sb), null);
            Z(new long[]{ip6Var.e});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            n56.I1(this.a, true, true);
            try {
                m().markAllAsRead(ip6Var.f, ip6Var.h, j);
            } catch (Error | Exception unused) {
                StringBuilder sbZ = jo.z("s=");
                sbZ.append(ip6Var.f);
                sbZ.append("&t= ");
                sbZ.append(ip6Var.h);
                z(3, sbZ.toString(), j);
            }
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void R(lp6 lp6Var, long j, boolean z) {
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("tag_uid", lp6Var.f);
            contentValues.put("sync_time", Long.valueOf(j));
            contentValues.put("all", Boolean.valueOf(z));
            contentResolver.update(ReaderProvider.m, contentValues, null, null);
            Z(n56.A(kp6.a(this.a, lp6Var.f)));
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            n56.I1(this.a, true, true);
            try {
                m().markAllAsRead(lp6Var.f, lp6Var.i, j);
            } catch (Error | Exception unused) {
                StringBuilder sbZ = jo.z("s=");
                sbZ.append(lp6Var.f);
                sbZ.append("&t= ");
                sbZ.append(lp6Var.i);
                z(2, sbZ.toString(), j);
            }
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void S(long j) throws gw6, IOException {
        m().handleReaderList(new a(j), new b(j), new c(this), j);
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            String[] strArr = {String.valueOf(j)};
            Uri uri = lp6.n;
            contentResolver.delete(uri, "sync_time <> ? AND type != 9", strArr);
            contentResolver.delete(ip6.A, "sync_time <> ?", strArr);
            contentResolver.delete(kp6.e, "sync_time <> ?", strArr);
            StringBuilder sb = new StringBuilder(128);
            sb.append("uid IN (");
            sb.append("SELECT DISTINCT ");
            sb.append("tag_uid");
            sb.append(" FROM ");
            sb.append("tag2sub");
            sb.append(") AND ");
            sb.append("type = ");
            sb.append(10);
            ContentValues contentValues = new ContentValues();
            contentValues.put(NSRSS20.ENC_TYPE, (Integer) 11);
            contentResolver.update(uri, contentValues, new String(sb), null);
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            yd.a(this.a).c(new Intent("com.noinnion.android.greader.reader.action.REFRESH_SUB_LIST"));
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public int T(ip6 ip6Var, long j, boolean z) throws gw6, IOException {
        rn6 rn6VarM = m();
        cw6 cw6Var = new cw6();
        String str = ip6Var.f;
        long j2 = ip6Var.e;
        ew6 ew6Var = on6.a;
        synchronized (on6.class) {
            if (str != null && j2 != 0) {
                on6.h.put(str, Long.valueOf(j2));
            }
        }
        if (!z) {
            rn6VarM.handleItemList(new gp6(this, ip6Var, j, cw6Var), j);
        }
        long[] jArr = {ip6Var.e};
        ContentValues contentValues = new ContentValues();
        contentValues.put("subIds", n56.p1(jArr, ","));
        this.a.getContentResolver().update(ReaderProvider.n, contentValues, null, null);
        n56.I1(this.a, true, true);
        return cw6Var.a;
    }

    public void U(lp6 lp6Var, long j) {
        if (lp6Var.i == null) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        ContentValues contentValuesG = lp6Var.g();
        contentValuesG.put("sync_time", Long.valueOf(j));
        lp6 lp6VarB = lp6.b(this.a, lp6Var.f, false);
        if (lp6VarB == null) {
            contentResolver.insert(lp6.n, contentValuesG);
            return;
        }
        Uri uriWithAppendedId = ContentUris.withAppendedId(lp6.n, lp6VarB.e);
        contentValuesG.remove(NSRSS20.ENC_TYPE);
        contentValuesG.put("hidden", Integer.valueOf(lp6VarB.m ? 1 : 0));
        contentResolver.update(uriWithAppendedId, contentValuesG, null, null);
    }

    public final void V(long j, String str, String str2, String str3, boolean z, long j2) {
        if (j == 0) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        ContentValues contentValues = new ContentValues();
        try {
            Uri uriWithAppendedId = ContentUris.withAppendedId(jp6.e, j);
            if (z) {
                if (m().editItemTag(new String[]{str}, new String[]{str2}, new String[]{str3}, 1)) {
                    contentValues.put("action", (Integer) 0);
                    contentValues.put("sync_time", Long.valueOf(j2));
                    contentResolver.update(uriWithAppendedId, contentValues, null, null);
                }
            } else if (m().editItemTag(new String[]{str}, new String[]{str2}, new String[]{str3}, 2)) {
                contentResolver.delete(uriWithAppendedId, null, null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public int W(String str, long j, boolean z, int i) throws gw6, IOException {
        rn6 rn6VarM = m();
        cw6 cw6Var = new cw6();
        rn6VarM.handleItemList(new d(str, i, j, cw6Var), j);
        if (!z) {
            rn6VarM.handleItemList(new e(str, j, cw6Var), j);
        }
        if (lp6.d(str)) {
            m().handleItemIdList(new hp6(this, str), j);
            n56.I1(this.a, true, true);
        }
        return cw6Var.a;
    }

    public boolean X(long j, String str, String str2) throws gw6, IOException {
        ip6 ip6VarC = ip6.c(this.a, j, false);
        if (ip6VarC == null) {
            return false;
        }
        boolean zEditSubscription = m().editSubscription(ip6VarC.f, str, str2, null, 3);
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            String[] strArr = {String.valueOf(j)};
            contentResolver.delete(ip6.A, "_id = ?", strArr);
            contentResolver.delete(ap6.B, "sub_id = ?", strArr);
            contentResolver.delete(kp6.e, "sub_id = ?", strArr);
            Z(new long[]{j});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            on6.k(ip6VarC.e);
            String str3 = ip6VarC.f;
            synchronized (on6.class) {
                if (str3 != null) {
                    Map<String, Long> map = on6.h;
                    if (map.containsKey(str3)) {
                        map.remove(str3);
                    }
                }
            }
            return zEditSubscription;
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void Y() {
        this.a.getContentResolver().update(ReaderProvider.o, null, null, null);
        int iE = e();
        iw6.T(this.a, "unread_count", iE);
        n56.N1(this.a, "com.noinnion.android.greader.reader/com.noinnion.android.greader.ui.login.LoginActivity", iE);
    }

    public void Z(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            Y();
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("subIds", n56.p1(jArr, ","));
        this.a.getContentResolver().update(ReaderProvider.o, contentValues, null, null);
        int iE = e();
        iw6.T(this.a, "unread_count", iE);
        n56.N1(this.a, "com.noinnion.android.greader.reader/com.noinnion.android.greader.ui.login.LoginActivity", iE);
    }

    public void a(ip6 ip6Var, String[] strArr) {
        if (ip6Var == null || strArr == null || strArr.length == 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            for (String str : strArr) {
                if (lp6.b(this.a, str, false) != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(NSRSS20.ENC_TYPE, (Integer) 11);
                    contentResolver.update(lp6.n, contentValues, "uid = ?", new String[]{str});
                    String[] strArr2 = {String.valueOf(ip6Var.e), str};
                    contentValues.clear();
                    contentValues.put("sub_id", Long.valueOf(ip6Var.e));
                    contentValues.put("tag_uid", str);
                    contentValues.put("sync_time", Long.valueOf(jCurrentTimeMillis));
                    if (ip6Var.e == 0 || contentResolver.update(kp6.e, contentValues, "sub_id = ? AND tag_uid = ?", strArr2) == 0) {
                        contentResolver.insert(kp6.e, contentValues);
                    }
                }
            }
            Z(new long[]{ip6Var.e});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            K(ip6Var, ip6Var.h, strArr, 4);
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void b(String str, String str2, String str3) {
        if (str == null || str.length() <= 0) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strO = jo.o(str2, "@", str3);
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            lp6 lp6VarA = lp6.a(this.a, "uid", strO, false);
            if (lp6VarA == null) {
                lp6VarA = new lp6();
                lp6VarA.f = strO;
                lp6VarA.i = str;
                lp6VarA.h = "";
            }
            lp6VarA.g = 9;
            ContentValues contentValuesG = lp6VarA.g();
            contentValuesG.put("sync_time", Long.valueOf(jCurrentTimeMillis));
            lp6 lp6VarB = lp6.b(this.a, lp6VarA.f, false);
            if (lp6VarB == null) {
                contentResolver.insert(lp6.n, contentValuesG);
            } else {
                Uri uriWithAppendedId = ContentUris.withAppendedId(lp6.n, lp6VarB.e);
                contentValuesG.remove(NSRSS20.ENC_TYPE);
                contentValuesG.put("hidden", Integer.valueOf(lp6VarB.m ? 1 : 0));
                contentResolver.update(uriWithAppendedId, contentValuesG, null, null);
            }
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            n56.I1(this.a, true, true);
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void c(ap6 ap6Var, String[] strArr) throws gw6, IOException {
        if (ap6Var == null || strArr == null || strArr.length == 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            for (String str : strArr) {
                if (lp6.a(this.a, "uid", str, false) != null) {
                    ContentValues contentValues = new ContentValues();
                    String[] strArr2 = {ap6Var.f, str};
                    contentValues.clear();
                    contentValues.put("item_uid", ap6Var.f);
                    contentValues.put("tag_uid", str);
                    contentValues.put("sync_time", Long.valueOf(jCurrentTimeMillis));
                    if (ap6Var.e == 0 || contentResolver.update(jp6.e, contentValues, "item_uid = ? AND tag_uid = ?", strArr2) == 0) {
                        contentResolver.insert(jp6.e, contentValues);
                    }
                }
            }
            Z(new long[]{ap6Var.g});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            ip6 ip6VarC = ip6.c(this.a, ap6Var.g, false);
            J(new String[]{ap6Var.f}, ip6VarC != null ? new String[]{ip6VarC.f} : null, strArr, 1);
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void d() {
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            contentResolver.delete(zo6.h, null, null);
            contentResolver.query(ReaderProvider.i, null, null, null, null);
        } finally {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
        }
    }

    public int e() {
        Cursor cursorQuery = this.a.getContentResolver().query(ap6.B, ap6.K, "read = 0", null, null);
        if (cursorQuery == null) {
            return 0;
        }
        try {
            return cursorQuery.moveToNext() ? cursorQuery.getInt(0) : 0;
        } finally {
            cursorQuery.close();
        }
    }

    public final void f(long j) {
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            contentResolver.delete(zo6.h, "_id = ?", new String[]{String.valueOf(j)});
            contentResolver.query(ReaderProvider.i, null, null, null, null);
        } finally {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
        }
    }

    public void g(lp6 lp6Var) throws gw6, IOException {
        if (lp6Var == null || lp6Var.e()) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            String[] strArr = {lp6Var.f};
            contentResolver.delete(lp6.n, "uid = ?", strArr);
            contentResolver.delete(kp6.e, "tag_uid = ?", strArr);
            contentResolver.delete(jp6.e, "tag_uid = ?", strArr);
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                m().disableTag(lp6Var.f, lp6Var.i);
            } catch (Exception unused) {
                StringBuilder sbZ = jo.z("s=");
                sbZ.append(lp6Var.f);
                sbZ.append("&t= ");
                sbZ.append(lp6Var.i);
                z(7, sbZ.toString(), jCurrentTimeMillis);
            }
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public boolean h(long j, int i) throws gw6, IOException {
        return j != 0 && i(new long[]{j}, i);
    }

    public boolean i(long[] jArr, int i) throws gw6, IOException {
        if (jArr.length == 0) {
            return false;
        }
        StringBuilder sbB = jo.B("_id", " IN (");
        sbB.append(n56.p1(jArr, ","));
        sbB.append(")");
        ContentValues contentValues = new ContentValues();
        contentValues.put("cached", Integer.valueOf(i));
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            contentResolver.update(ap6.B, contentValues, sbB.toString(), null);
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            n56.I1(this.a, true, false);
            return true;
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void j(ap6 ap6Var, boolean z) {
        lp6 lp6VarA = lp6.a(this.a, NSRSS20.ENC_TYPE, String.valueOf(1), true);
        if (lp6VarA == null) {
            return;
        }
        new f(ap6Var, lp6VarA, z).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void k(ip6 ip6Var, ip6 ip6Var2) throws gw6, IOException {
        if (ip6Var == null || ip6Var2 == null || TextUtils.isEmpty(ip6Var2.h)) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            String[] strArr = {String.valueOf(ip6Var.e)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", ip6Var2.h);
            contentValues.put("sync_excluded", Integer.valueOf(ip6Var2.p ? 1 : 0));
            contentValues.put("hidden", Integer.valueOf(ip6Var2.q ? 1 : 0));
            contentValues.put("notification", Integer.valueOf(ip6Var2.r ? 1 : 0));
            contentValues.put("image_fit", Integer.valueOf(ip6Var2.s ? 1 : 0));
            contentValues.put("javascript", Integer.valueOf(ip6Var2.t ? 1 : 0));
            contentValues.put("offline_content", Integer.valueOf(ip6Var2.u));
            contentValues.put("display_content", Integer.valueOf(ip6Var2.v));
            contentValues.put("link_format", Integer.valueOf(ip6Var2.w));
            contentValues.put("auto_readability", Integer.valueOf(ip6Var2.x));
            contentValues.put("user_agent", Integer.valueOf(ip6Var2.y));
            contentResolver.update(ip6.A, contentValues, "_id = ?", strArr);
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            n56.I1(this.a, true, true);
            if (ip6Var.h.equals(ip6Var2.h)) {
                return;
            }
            K(ip6Var, ip6Var2.h, null, 1);
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public void l(lp6 lp6Var, String str, boolean z, boolean z2) throws gw6, IOException {
        if (lp6Var == null || TextUtils.isEmpty(str)) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            String[] strArr = {lp6Var.f};
            ContentValues contentValues = new ContentValues();
            contentValues.put("label", str);
            contentValues.put("sync_excluded", Integer.valueOf(z ? 1 : 0));
            contentValues.put("hidden", Integer.valueOf(z2 ? 1 : 0));
            if (contentResolver.update(lp6.n, contentValues, "uid = ?", strArr) > 0) {
                this.a.getContentResolver().notifyChange(ReaderProvider.s, null);
            }
            contentResolver.query(ReaderProvider.i, null, null, null, null);
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            n56.I1(this.a, true, true);
            if (lp6Var.i.equals(str)) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                m().renameTag(lp6Var.f, lp6Var.i, str);
            } catch (Exception e2) {
                e2.printStackTrace();
                StringBuilder sb = new StringBuilder();
                sb.append("s=");
                sb.append(lp6Var.f);
                sb.append("&t= ");
                z(6, jo.t(sb, lp6Var.i, "&dest= ", str), jCurrentTimeMillis);
            }
        } catch (Throwable th) {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
            throw th;
        }
    }

    public rn6 m() throws gw6, IOException {
        if (this.b == null) {
            this.b = rn6.getClient(this.a);
        }
        return this.b;
    }

    public int n() {
        try {
            return m().getClientService();
        } catch (gw6 | IOException unused) {
            return 0;
        }
    }

    public final void z(int i, String str, long j) {
        ContentResolver contentResolver = this.a.getContentResolver();
        contentResolver.query(ReaderProvider.h, null, null, null, null);
        try {
            zo6 zo6Var = new zo6();
            zo6Var.e = i;
            zo6Var.f = str;
            zo6Var.g = j;
            contentResolver.insert(zo6.h, zo6Var.a());
            contentResolver.query(ReaderProvider.i, null, null, null, null);
        } finally {
            contentResolver.query(ReaderProvider.j, null, null, null, null);
        }
    }
}
