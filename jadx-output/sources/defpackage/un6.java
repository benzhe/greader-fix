package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import defpackage.ep6;
import defpackage.gw6;
import defpackage.rn6;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.InvocationTargetException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import okhttp3.FormBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public abstract class un6 extends rn6 {
    public String a;
    public String b;
    public String c;
    public String d;
    public long e;
    public Set<String> f;

    public class a extends FilterInputStream {
        public a(un6 un6Var, InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
        }
    }

    public un6(Context context) {
        super(context);
        this.f = null;
        this.mClient = n56.M(30000);
        this.a = cn6.b0(this.mContext);
        this.b = iw6.F(this.mContext, "google_passwd");
    }

    public static String g(Context context) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i = cn6.b;
        String strF = iw6.F(context, "user_id");
        if (strF != null && strF.length() != 0) {
            return strF;
        }
        lp6 lp6VarA = lp6.a(context, NSRSS20.ENC_TYPE, String.valueOf(1), false);
        if (lp6VarA == null) {
            return "-";
        }
        String str = lp6VarA.f;
        String strSubstring = str.substring(5, str.indexOf("/state"));
        iw6.V(context, "user_id", strSubstring);
        return strSubstring;
    }

    public InputStream a(String str) throws gw6, IOException {
        Request.Builder builderUrl = new Request.Builder().url(str);
        if (this.c != null) {
            StringBuilder sbZ = jo.z("GoogleLogin auth=");
            sbZ.append(this.c);
            builderUrl.header("Authorization", sbZ.toString());
        }
        p(builderUrl);
        try {
            Response responseExecute = this.mClient.newCall(builderUrl.build()).execute();
            int iCode = responseExecute.code();
            if (iCode == 403) {
                throw new gw6.b("Login failure");
            }
            if (iCode == 401) {
                throw new gw6.b("Authentication fails (" + iCode + "): " + str);
            }
            if (iCode == 502) {
                throw new gw6("The Service Is Currently Undergoing Maintenance");
            }
            if (iCode == 200) {
                ResponseBody responseBodyBody = responseExecute.body();
                if (responseBodyBody != null) {
                    return new a(this, responseBodyBody.byteStream());
                }
                throw new gw6("null response body");
            }
            throw new gw6("Invalid http status " + iCode + ": " + str);
        } catch (SocketTimeoutException unused) {
            throw new SocketTimeoutException("Performance issue, check status.theoldreader.com");
        }
    }

    public Reader b(String str) throws gw6, IOException {
        return new InputStreamReader(a(str), "UTF-8");
    }

    public Reader c(String str, RequestBody requestBody) throws gw6, IOException {
        Request.Builder builderPost = new Request.Builder().url(str).post(requestBody);
        if (this.c != null) {
            StringBuilder sbZ = jo.z("GoogleLogin auth=");
            sbZ.append(this.c);
            builderPost.header("Authorization", sbZ.toString());
        }
        p(builderPost);
        try {
            Response responseExecute = this.mClient.newCall(builderPost.build()).execute();
            int iCode = responseExecute.code();
            if (iCode == 403) {
                throw new gw6.b("Login failure");
            }
            if (iCode == 401) {
                throw new gw6.b("Authentication fails (" + iCode + "): " + str);
            }
            if (iCode == 502) {
                throw new gw6("The Service Is Currently Undergoing Maintenance");
            }
            if (iCode == 200) {
                ResponseBody responseBodyBody = responseExecute.body();
                if (responseBodyBody != null) {
                    return new InputStreamReader(new tn6(this, responseBodyBody.byteStream()), "UTF-8");
                }
                throw new gw6("null response body");
            }
            throw new gw6("Invalid http status " + iCode + ": " + str);
        } catch (SocketTimeoutException unused) {
            throw new SocketTimeoutException("Performance issue?!, Check your internet connection.");
        }
    }

    public int d() {
        return 10000;
    }

    @Override // defpackage.rn6
    public boolean disableTag(String str, String str2) throws gw6, IOException {
        Reader readerC = c(f("/reader/api/0/disable-tag"), new FormBody.Builder().add("T", i()).add("s", str).add("t", str2).build());
        try {
            char[] cArr = new char[128];
            int i = readerC.read(cArr);
            if (i != -1) {
                return new String(cArr, 0, i).equals("OK");
            }
            return false;
        } finally {
            readerC.close();
        }
    }

    public int e() {
        return 1000;
    }

    @Override // defpackage.rn6
    public boolean editItemTag(String[] strArr, String[] strArr2, String[] strArr3, int i) throws gw6, IOException {
        String strI = i();
        FormBody.Builder builder = new FormBody.Builder();
        builder.add("T", strI);
        if (i != 1) {
            if (i != 2) {
                if (i == 3 && strArr3 != null && strArr3.length > 0) {
                    InputStream inputStreamA = a(f("/reader/api/0/user-info"));
                    String string = null;
                    try {
                        try {
                            String strC = n56.C(inputStreamA);
                            if (!TextUtils.isEmpty(strC)) {
                                JSONObject jSONObject = new JSONObject(strC);
                                if (jSONObject.has("userId")) {
                                    string = jSONObject.getString("userId");
                                }
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        inputStreamA.close();
                        inputStreamA = null;
                        for (String str : strArr3) {
                            builder.add("a", "user/" + string + "/label/" + str);
                        }
                    } catch (Throwable th) {
                        inputStreamA.close();
                        throw th;
                    }
                }
            } else if (strArr3 != null && strArr3.length > 0) {
                for (String str2 : strArr3) {
                    builder.add("r", str2);
                }
            }
        } else if (strArr3 != null && strArr3.length > 0) {
            for (String str3 : strArr3) {
                builder.add("a", str3);
            }
        }
        if (strArr != null && strArr.length > 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String strN = strArr[i2];
                if (strN == null) {
                    strN = "";
                } else if (!strN.startsWith("tag")) {
                    strN = jo.n("tag:google.com,2005:reader/item/", strN);
                }
                builder.add("i", strN);
                builder.add("s", strArr2[i2]);
            }
        }
        builder.add("async", "true");
        Reader readerC = c(f("/reader/api/0/edit-tag"), builder.build());
        try {
            char[] cArr = new char[128];
            int i3 = readerC.read(cArr);
            if (i3 != -1) {
                return new String(cArr, 0, i3).equals("OK");
            }
            return false;
        } finally {
            readerC.close();
        }
    }

    @Override // defpackage.rn6
    public boolean editSubscription(String str, String str2, String str3, String[] strArr, int i) throws gw6, IOException {
        String strI = i();
        FormBody.Builder builder = new FormBody.Builder();
        builder.add("T", strI);
        if (str2 != null) {
            builder.add("t", str2);
        }
        if (i == 1) {
            builder.add("ac", "edit");
        } else if (i == 2) {
            builder.add("ac", "subscribe");
            str = RssReaderClient.USER_FEED + str3;
            if (strArr != null && strArr.length > 0 && strArr.length > 0) {
                builder.add("a", getCategoryUid(strArr[0]));
            }
        } else if (i == 3) {
            builder.add("ac", "unsubscribe");
        } else if (i == 4) {
            builder.add("ac", "edit");
            if (strArr.length > 0) {
                builder.add("a", strArr[0]);
            }
        } else if (i == 5) {
            builder.add("ac", "edit");
            if (strArr.length > 0) {
                builder.add("r", strArr[0]);
            }
        }
        if (str != null) {
            builder.add("s", str);
        }
        Reader readerC = c(f("/reader/api/0/subscription/edit"), builder.build());
        try {
            char[] cArr = new char[128];
            int i2 = readerC.read(cArr);
            if (i2 != -1) {
                return new String(cArr, 0, i2).equals("OK");
            }
            return false;
        } finally {
            readerC.close();
        }
    }

    public abstract String f(String str);

    @Override // defpackage.rn6
    public String getCategoryUid(String str) {
        StringBuilder sbZ = jo.z("user/");
        sbZ.append(g(this.mContext));
        sbZ.append("/label/");
        sbZ.append(str);
        return sbZ.toString();
    }

    @Override // defpackage.rn6
    public String getTagUid(String str) {
        StringBuilder sbZ = jo.z("user/");
        sbZ.append(g(this.mContext));
        sbZ.append("/label/");
        sbZ.append(str);
        return sbZ.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
    
        r5.c = r0.substring(5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String h() throws defpackage.gw6, java.io.IOException {
        /*
            r5 = this;
            android.content.Context r0 = r5.mContext
            int r1 = defpackage.cn6.b
            java.lang.String r1 = "google_auth"
            java.lang.String r0 = defpackage.iw6.F(r0, r1)
            r5.c = r0
            android.content.Context r0 = r5.mContext
            java.lang.String r1 = "google_auth_time"
            r2 = 0
            long r0 = defpackage.iw6.A(r0, r1, r2)
            java.lang.String r2 = r5.c
            if (r2 == 0) goto L29
            long r2 = java.lang.System.currentTimeMillis()
            long r2 = r2 - r0
            r0 = 259200000(0xf731400, double:1.280618154E-315)
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 >= 0) goto L29
            java.lang.String r0 = r5.c
            return r0
        L29:
            java.lang.String r0 = r5.a
            if (r0 == 0) goto La0
            java.lang.String r0 = r5.b
            if (r0 == 0) goto La0
            okhttp3.FormBody$Builder r0 = new okhttp3.FormBody$Builder
            r0.<init>()
            java.lang.String r1 = "accountType"
            java.lang.String r2 = "GOOGLE"
            okhttp3.FormBody$Builder r0 = r0.add(r1, r2)
            java.lang.String r1 = r5.a
            java.lang.String r2 = "Email"
            okhttp3.FormBody$Builder r0 = r0.add(r2, r1)
            java.lang.String r1 = r5.b
            java.lang.String r2 = "Passwd"
            okhttp3.FormBody$Builder r0 = r0.add(r2, r1)
            java.lang.String r1 = "service"
            java.lang.String r2 = "reader"
            okhttp3.FormBody$Builder r0 = r0.add(r1, r2)
            okhttp3.FormBody r0 = r0.build()
            java.io.BufferedReader r1 = new java.io.BufferedReader
            java.lang.String r2 = "/accounts/ClientLogin"
            java.lang.String r2 = r5.f(r2)
            java.io.Reader r0 = r5.c(r2, r0)
            r1.<init>(r0)
        L69:
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r0 == 0) goto L85
            java.lang.String r2 = "Auth="
            int r2 = r0.indexOf(r2)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r2 != 0) goto L69
            r2 = 5
            java.lang.String r0 = r0.substring(r2)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r5.c = r0     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            goto L85
        L7f:
            r0 = move-exception
            goto L9c
        L81:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L7f
        L85:
            r1.close()
            java.lang.String r0 = r5.c
            if (r0 == 0) goto L94
            android.content.Context r1 = r5.mContext
            defpackage.cn6.f0(r1, r0)
            java.lang.String r0 = r5.c
            return r0
        L94:
            gw6 r0 = new gw6
            java.lang.String r1 = "Login Failure"
            r0.<init>(r1)
            throw r0
        L9c:
            r1.close()
            throw r0
        La0:
            gw6$b r0 = new gw6$b
            java.lang.String r1 = "no login data"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.un6.h():java.lang.String");
    }

    @Override // defpackage.rn6
    public boolean handleItemIdList(rn6.a aVar, long j) throws gw6, IOException {
        Reader readerR = r(aVar, null);
        try {
            try {
                vn6 vn6VarL = l(readerR, aVar);
                ArrayList arrayList = new ArrayList(vn6VarL.a);
                int iC = aVar.c();
                int iMin = Math.min(iC, d());
                String str = vn6VarL.b;
                int i = 1;
                while (true) {
                    if ((iC != 0 && iC <= iMin * i) || str == null || str.length() <= 0) {
                        break;
                    }
                    readerR.close();
                    readerR = r(aVar, str);
                    vn6 vn6VarL2 = l(readerR, aVar);
                    arrayList.addAll(vn6VarL2.a);
                    str = vn6VarL2.b;
                    i++;
                }
                aVar.a(arrayList);
                readerR.close();
                return arrayList.size() > 0;
            } catch (zo e) {
                throw new gw6("data parse error: parseItemIdList", e);
            }
        } catch (Throwable th) {
            readerR.close();
            throw th;
        }
    }

    @Override // defpackage.rn6
    public void handleItemList(rn6.b bVar, long j) throws Throwable {
        Reader readerQ;
        long jB = bVar.b();
        Reader readerQ2 = q(j, jB, bVar, null);
        try {
            try {
                Set<String> setG = bVar.g();
                String strM = m(readerQ2, bVar, setG);
                int iC = bVar.c();
                int iMin = Math.min(iC, e());
                readerQ = readerQ2;
                String strM2 = strM;
                int i = 1;
                while (true) {
                    if (iC != 0 && iC <= iMin * i) {
                        break;
                    }
                    try {
                        if (!bVar.f() || strM2 == null || strM2.length() <= 0) {
                            break;
                        }
                        readerQ.close();
                        readerQ = q(j, jB, bVar, strM2);
                        strM2 = m(readerQ, bVar, setG);
                        i++;
                    } catch (zo e) {
                        e = e;
                        readerQ2 = readerQ;
                        throw new gw6("data parse error: parseItemList", e);
                    } catch (Throwable th) {
                        th = th;
                        readerQ.close();
                        throw th;
                    }
                }
                readerQ.close();
            } catch (zo e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
            readerQ = readerQ2;
        }
    }

    @Override // defpackage.rn6
    public void handleReaderList(rn6.d dVar, rn6.c cVar, rn6.e eVar, long j) throws gw6, IOException {
        StringBuilder sb;
        h();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f("/reader/api/0/tag/list"));
        sb2.append("&output=json&ck=");
        sb2.append(j);
        InputStreamReader inputStreamReader = new InputStreamReader(a(new String(sb2)), "UTF-8");
        try {
            try {
                o(inputStreamReader, dVar);
                inputStreamReader.close();
                h();
                sb = new StringBuilder();
                sb.append(f("/reader/api/0/subscription/list"));
                sb.append("&output=json&ck=");
                sb.append(j);
            } catch (zo e) {
                throw new gw6("data parse error: parseTagList", e);
            }
            try {
                try {
                    n(new InputStreamReader(a(new String(sb)), "UTF-8"), cVar);
                } catch (zo e2) {
                    throw new gw6("data parse error: parseSubList", e2);
                }
            } finally {
            }
        } finally {
        }
    }

    public final String i() throws gw6, IOException {
        h();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = this.d;
        if (str != null && jCurrentTimeMillis < this.e) {
            return str;
        }
        Reader readerB = b(f("/reader/api/0/token"));
        try {
            char[] cArr = new char[64];
            this.d = new String(cArr, 0, readerB.read(cArr));
            this.e = jCurrentTimeMillis + 900000;
            readerB.close();
            return this.d;
        } catch (Throwable th) {
            readerB.close();
            throw th;
        }
    }

    public boolean j(String str, String str2, boolean z) throws gw6, IOException {
        if (z) {
            this.c = null;
            this.d = null;
        }
        this.a = str;
        this.b = str2;
        h();
        return this.c != null;
    }

    public String k(String str) {
        return str;
    }

    public final vn6 l(Reader reader, rn6.a aVar) throws IOException {
        ap apVarA = new wo().a(reader);
        ArrayList arrayList = new ArrayList();
        apVarA.g();
        String strE = null;
        while (apVarA.g() != bp.END_OBJECT) {
            String strB = apVarA.b();
            apVarA.g();
            if ("continuation".equals(strB)) {
                strE = apVarA.e();
            } else if (strB.equals("itemRefs")) {
                while (apVarA.g() != bp.END_ARRAY) {
                    String strB2 = apVarA.b();
                    if (strB2 != null) {
                        apVarA.g();
                        if (strB2.equals("id")) {
                            arrayList.add(k(apVarA.e()));
                        } else {
                            apVarA.i();
                        }
                    }
                }
                aVar.a(arrayList);
            } else {
                apVarA.i();
            }
        }
        return new vn6(arrayList, strE);
    }

    public final String m(Reader reader, rn6.b bVar, Set<String> set) throws gw6.a, IOException {
        boolean zContains;
        ap apVarA = new wo().a(reader);
        cp6 cp6Var = new cp6();
        ArrayList arrayList = new ArrayList();
        apVarA.g();
        String strE = null;
        ap6 ap6Var = null;
        while (apVarA.g() != bp.END_OBJECT) {
            String strB = apVarA.b();
            apVarA.g();
            if ("continuation".equals(strB)) {
                strE = apVarA.e();
            } else if ("items".equals(strB)) {
                while (apVarA.g() != bp.END_ARRAY) {
                    if (this.mRequestStop) {
                        throw new gw6.a();
                    }
                    hp hpVar = (hp) apVarA;
                    bp bpVar = hpVar.f;
                    if (bpVar == bp.START_OBJECT) {
                        ap6Var = new ap6();
                    } else if (bpVar == bp.END_OBJECT) {
                        if (ap6Var != null && ap6Var.f.length() > 0) {
                            arrayList.add(ap6Var);
                        }
                        if (arrayList.size() % 200 == 0) {
                            bVar.a(arrayList);
                            arrayList.clear();
                        }
                        ap6Var = null;
                    }
                    String strB2 = apVarA.b();
                    if (strB2 != null && ap6Var != null) {
                        apVarA.g();
                        if (strB2.equals("id")) {
                            String strE2 = apVarA.e();
                            ap6Var.f = strE2 != null ? strE2.replaceFirst("tag:google.com,2005:reader/item/", "") : "";
                        } else if (strB2.equals("crawlTimeMsec")) {
                            ap6Var.q = Long.valueOf(apVarA.e()).longValue() / 1000;
                        } else if (strB2.equals("title")) {
                            ap6Var.h = s(apVarA.e());
                        } else if (strB2.equals("categories")) {
                            while (apVarA.g() != bp.END_ARRAY) {
                                String strE3 = apVarA.e();
                                if (strE3 != null) {
                                    if (strE3.contains("/label/") && strE3.startsWith("user/")) {
                                        if (this.f == null) {
                                            Context context = this.mContext;
                                            Uri uri = lp6.n;
                                            HashSet hashSet = new HashSet();
                                            Cursor cursorQuery = context.getContentResolver().query(lp6.n, null, "type = 10", null, null);
                                            if (cursorQuery != null) {
                                                while (cursorQuery.moveToNext()) {
                                                    try {
                                                        cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                                                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("uid"));
                                                        cursorQuery.getInt(cursorQuery.getColumnIndex(NSRSS20.ENC_TYPE));
                                                        cursorQuery.getString(cursorQuery.getColumnIndex("label"));
                                                        cursorQuery.getInt(cursorQuery.getColumnIndex("unread_count"));
                                                        cursorQuery.getLong(cursorQuery.getColumnIndex("sync_time"));
                                                        cursorQuery.getInt(cursorQuery.getColumnIndex("sync_excluded"));
                                                        cursorQuery.getInt(cursorQuery.getColumnIndex("hidden"));
                                                        hashSet.add(string);
                                                    } finally {
                                                        cursorQuery.close();
                                                    }
                                                }
                                            }
                                            this.f = hashSet;
                                        }
                                        zContains = this.f.contains(strE3);
                                    } else {
                                        if (strE3.endsWith("/state/com.google/starred") && strE3.startsWith("user/")) {
                                            ap6Var.r = true;
                                        } else if (!strE3.contains("itemrecs") || !strE3.startsWith("user/")) {
                                            zContains = false;
                                        }
                                        zContains = true;
                                    }
                                    if (zContains) {
                                        ap6Var.y.add(strE3);
                                    }
                                }
                                if (strE3 != null && strE3.endsWith("/state/com.google/read")) {
                                    ap6Var.v = true;
                                }
                            }
                        } else if (strB2.equals("published")) {
                            ap6Var.p = apVarA.c();
                        } else if (strB2.equals("alternate")) {
                            while (apVarA.g() != bp.END_ARRAY) {
                                String strB3 = apVarA.b();
                                if (strB3 != null) {
                                    apVarA.g();
                                    if (strB3.equals(NSSimpleChapters.HREF)) {
                                        ap6Var.k = apVarA.e();
                                    } else {
                                        apVarA.i();
                                    }
                                }
                            }
                        } else if (strB2.equals(NSRSS20.ENCLOSURE)) {
                            cp6Var.a();
                            while (apVarA.g() != bp.END_ARRAY) {
                                bp bpVar2 = hpVar.f;
                                if (bpVar2 == bp.START_OBJECT) {
                                    cp6Var.a();
                                } else if (bpVar2 == bp.END_OBJECT) {
                                    ap6Var.i(cp6Var);
                                }
                                String strB4 = apVarA.b();
                                if (strB4 != null) {
                                    apVarA.g();
                                    if (strB4.equals(NSSimpleChapters.HREF)) {
                                        cp6Var.a = apVarA.e();
                                    } else if (strB4.equals(NSRSS20.ENC_TYPE)) {
                                        String strE4 = apVarA.e();
                                        cp6Var.b = strE4;
                                        if (strE4.startsWith(NSRSS20.IMAGE)) {
                                            cp6Var.b = "image/thumbnail";
                                        }
                                    } else {
                                        apVarA.i();
                                    }
                                }
                            }
                        } else if (strB2.equals("summary") || strB2.equals(NSContent.NSTAG)) {
                            while (apVarA.g() != bp.END_OBJECT) {
                                String strB5 = apVarA.b();
                                if (strB5 != null) {
                                    apVarA.g();
                                    if (strB5.equals(NSContent.NSTAG)) {
                                        ap6Var.i = s(apVarA.e());
                                    } else {
                                        apVarA.i();
                                    }
                                }
                            }
                        } else if (strB2.equals("author")) {
                            ap6Var.j = apVarA.e();
                        } else if (strB2.equals("origin")) {
                            while (apVarA.g() != bp.END_OBJECT) {
                                String strB6 = apVarA.b();
                                if (strB6 != null) {
                                    apVarA.g();
                                    if (strB6.equals("streamId")) {
                                        String strE5 = apVarA.e();
                                        if (strE5 == null || (set != null && set.contains(strE5))) {
                                            ap6Var.f = "";
                                        } else {
                                            ap6Var.z = strE5;
                                        }
                                    } else {
                                        apVarA.i();
                                    }
                                }
                            }
                        } else {
                            apVarA.i();
                        }
                    }
                }
                bVar.a(arrayList);
                arrayList.clear();
            } else {
                apVarA.i();
            }
        }
        return strE;
    }

    @Override // defpackage.rn6
    public boolean markAllAsRead(String str, String str2, long j) throws gw6, IOException {
        if (str == null) {
            str = "user/-/state/com.google/reading-list";
            str2 = "all";
        }
        Reader readerC = c(f("/reader/api/0/mark-all-as-read"), new FormBody.Builder().add("T", i()).add("s", str).add("t", str2).add("ts", j + "999").build());
        try {
            char[] cArr = new char[128];
            int i = readerC.read(cArr);
            if (i != -1) {
                return new String(cArr, 0, i).equals("OK");
            }
            return false;
        } finally {
            readerC.close();
        }
    }

    @Override // defpackage.rn6
    public boolean markAsRead(String str, String str2) throws gw6, IOException {
        return editItemTag(new String[]{str}, new String[]{str2}, new String[]{"user/-/state/com.google/read"}, 1);
    }

    @Override // defpackage.rn6
    public boolean markAsUnread(String str, String str2, boolean z) throws gw6, IOException {
        return editItemTag(new String[]{str}, new String[]{str2}, new String[]{"user/-/state/com.google/read"}, 2);
    }

    public final void n(Reader reader, rn6.c cVar) throws IOException {
        ap apVarA = new wo().a(reader);
        ArrayList arrayList = new ArrayList();
        apVarA.g();
        ip6 ip6Var = null;
        while (apVarA.g() != bp.END_OBJECT) {
            String strB = apVarA.b();
            apVarA.g();
            if (strB.equals("subscriptions")) {
                while (apVarA.g() != bp.END_ARRAY) {
                    bp bpVar = ((hp) apVarA).f;
                    if (bpVar == bp.START_OBJECT) {
                        ip6Var = new ip6();
                    } else if (bpVar == bp.END_OBJECT) {
                        arrayList.add(ip6Var);
                        ip6Var = null;
                    }
                    String strB2 = apVarA.b();
                    if (strB2 != null) {
                        apVarA.g();
                        if (strB2.equals("id")) {
                            ip6Var.f = apVarA.e();
                        } else if (strB2.equals("title")) {
                            ip6Var.h = s(apVarA.e());
                        } else if (strB2.equals("sortid")) {
                            ip6Var.g = apVarA.e();
                        } else if (strB2.equals("url")) {
                            ip6Var.i = apVarA.e();
                        } else if (strB2.equals("htmlUrl")) {
                            ip6Var.j = apVarA.e();
                        } else if (strB2.equals("iconUrl")) {
                            ip6Var.k = apVarA.e();
                        } else if (strB2.equals("categories")) {
                            while (apVarA.g() != bp.END_ARRAY) {
                                String strB3 = apVarA.b();
                                if (strB3 != null) {
                                    apVarA.g();
                                    if (strB3.equals("id")) {
                                        ip6Var.l.add(apVarA.e());
                                    } else {
                                        apVarA.i();
                                    }
                                }
                            }
                        } else {
                            apVarA.i();
                        }
                    }
                }
                try {
                    ((ep6.b) cVar).a(arrayList);
                } catch (gw6 e) {
                    e.printStackTrace();
                }
            } else {
                apVarA.i();
            }
        }
    }

    public final void o(Reader reader, rn6.d dVar) throws IOException {
        ap apVarA = new wo().a(reader);
        ArrayList arrayList = new ArrayList();
        apVarA.g();
        lp6 lp6Var = null;
        while (apVarA.g() != bp.END_OBJECT) {
            String strB = apVarA.b();
            apVarA.g();
            if (strB.equals("tags")) {
                while (apVarA.g() != bp.END_ARRAY) {
                    bp bpVar = ((hp) apVarA).f;
                    if (bpVar == bp.START_OBJECT) {
                        lp6Var = new lp6();
                    } else if (bpVar == bp.END_OBJECT) {
                        arrayList.add(lp6Var);
                        lp6Var = null;
                    }
                    String strB2 = apVarA.b();
                    if (strB2 != null) {
                        apVarA.g();
                        if (strB2.equals("id")) {
                            String strE = apVarA.e();
                            lp6Var.f = strE;
                            int iIndexOf = strE.indexOf("/label/");
                            if (iIndexOf != -1) {
                                lp6Var.i = lp6Var.f.substring(iIndexOf + 7);
                                lp6Var.g = 10;
                            } else if (lp6Var.f.endsWith("state/com.google/starred")) {
                                lp6Var.i = "state/com.google/starred";
                                lp6Var.g = 1;
                            }
                        } else if (strB2.equals("sortid")) {
                            lp6Var.h = apVarA.e();
                        } else {
                            apVarA.i();
                        }
                    }
                }
                try {
                    ((ep6.a) dVar).a(arrayList);
                } catch (gw6 unused) {
                }
            } else {
                apVarA.i();
            }
        }
    }

    public abstract void p(Request.Builder builder);

    public final Reader q(long j, long j2, rn6.b bVar, String str) throws gw6, IOException {
        h();
        StringBuilder sb = new StringBuilder();
        sb.append(f("/reader/api/0/stream/contents"));
        sb.append("&output=json&ck=");
        sb.append(j);
        String strStream = bVar.stream();
        if (strStream == null) {
            strStream = "user/-/state/com.google/reading-list";
        } else if (strStream.equals(rn6.STATE_STARRED)) {
            strStream = "user/-/state/com.google/starred";
        }
        sb.append("&s=");
        sb.append(n56.u0(strStream));
        if (bVar.d()) {
            sb.append("&xt=");
            sb.append("user/-/state/com.google/read");
        }
        if (str != null && str.length() > 0) {
            sb.append("&c=");
            sb.append(str);
        }
        if (j2 > 0) {
            sb.append("&ot=");
            sb.append(j2);
        }
        sb.append("&r=");
        sb.append(bVar.e() ? "n" : "o");
        int iC = bVar.c();
        int iE = e();
        if (iC > iE || iC == 0) {
            iC = iE;
        }
        if (iC > 0) {
            sb.append("&n=");
            sb.append(Math.min(iC, iE));
        }
        return b(sb.toString());
    }

    public final Reader r(rn6.a aVar, String str) throws gw6, IOException {
        h();
        StringBuilder sb = new StringBuilder();
        sb.append(f("/reader/api/0/stream/items/ids"));
        sb.append("&output=json");
        String[] strArrF = aVar.f();
        if (strArrF == null || strArrF.length == 0) {
            sb.append("&s=");
            sb.append(n56.u0("user/-/state/com.google/reading-list"));
        } else {
            for (String str2 : strArrF) {
                if (str2.equals(rn6.STATE_STARRED)) {
                    str2 = "user/-/state/com.google/starred";
                }
                sb.append("&s=");
                sb.append(n56.u0(str2));
            }
            if (strArrF.length > 1) {
                sb.append("&merge=true&includeAllDirectStreamIds=true");
            }
        }
        if (aVar.d()) {
            sb.append("&xt=");
            sb.append("user/-/state/com.google/read");
        }
        if (str != null && str.length() > 0) {
            sb.append("&c=");
            sb.append(str);
        }
        long jB = aVar.b();
        if (jB > 0) {
            sb.append("&ot=");
            sb.append(jB);
        }
        sb.append("&r=");
        sb.append(aVar.e() ? "n" : "o");
        int iC = aVar.c();
        if (iC > 0) {
            sb.append("&n=");
            sb.append(iC);
        }
        return b(sb.toString());
    }

    @Override // defpackage.rn6
    public boolean renameTag(String str, String str2, String str3) throws gw6, IOException {
        Reader readerC = c(f("/reader/api/0/rename-tag"), new FormBody.Builder().add("T", i()).add("s", str).add("t", str2).add("dest", str.substring(0, str.indexOf("/label/") + 7) + str3).build());
        try {
            char[] cArr = new char[128];
            int i = readerC.read(cArr);
            if (i != -1) {
                return new String(cArr, 0, i).equals("OK");
            }
            return false;
        } finally {
            readerC.close();
        }
    }

    public final String s(String str) {
        return str == null ? "" : str.replace("&amp;", "&").replace("&#39;", "'").replace("&quot;", "\"");
    }

    @Override // defpackage.rn6
    public boolean markAsRead(String[] strArr, String[] strArr2) throws gw6, IOException {
        return editItemTag(strArr, strArr2, new String[]{"user/-/state/com.google/read"}, 1);
    }

    @Override // defpackage.rn6
    public boolean markAsUnread(String[] strArr, String[] strArr2, boolean z) throws gw6, IOException {
        return editItemTag(strArr, strArr2, new String[]{"user/-/state/com.google/read"}, 2);
    }
}
