package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.ep6;
import defpackage.gw6;
import defpackage.rn6;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes2.dex */
public class sn6 extends rn6 {
    public String a;

    public class a extends FilterInputStream {
        public a(sn6 sn6Var, InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
        }
    }

    public sn6(Context context) {
        super(context);
        this.mClient = n56.M(40000);
    }

    public static String h(String[] strArr, String str) {
        if (strArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(str);
            }
            sb.append(n56.u0(strArr[i]));
        }
        return sb.toString();
    }

    public static String s(String str) {
        return str == null ? "" : str.replace("&amp;", "&").replace("&#39;", "'").replace("&quot;", "\"");
    }

    public boolean a(String str) throws JSONException, gw6, IOException {
        i();
        Request.Builder builderUrl = new Request.Builder().url(str);
        StringBuilder sbZ = jo.z("OAuth ");
        sbZ.append(this.a);
        Response responseExecute = this.mClient.newCall(builderUrl.header("Authorization", sbZ.toString()).delete().build()).execute();
        int iCode = responseExecute.code();
        if (iCode == 403) {
            throw new gw6.b("Login failure");
        }
        if (iCode == 401) {
            throw new gw6.b("Authentication fails (" + iCode + "): " + str);
        }
        if (iCode == 200) {
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                throw new gw6("null response body");
            }
            responseBodyBody.close();
            return true;
        }
        throw new gw6("Invalid http status " + iCode + ": " + str);
    }

    public InputStream b(String str) throws JSONException, gw6, IOException {
        i();
        Request.Builder builderHeader = new Request.Builder().url(str).header("Accept", "application/json").header(HttpConnection.CONTENT_TYPE, "application/json");
        StringBuilder sbZ = jo.z("OAuth ");
        sbZ.append(this.a);
        Response responseExecute = this.mClient.newCall(builderHeader.header("Authorization", sbZ.toString()).build()).execute();
        int iCode = responseExecute.code();
        if (iCode == 403) {
            throw new gw6.b("Login failure");
        }
        if (iCode == 401) {
            throw new gw6.b("Authentication fails (" + iCode + "): " + str);
        }
        if (iCode == 400) {
            throw new gw6("Bad request: " + str + " (" + responseExecute.body().string() + ")");
        }
        if (iCode == 200) {
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody != null) {
                return new a(this, responseBodyBody.byteStream());
            }
            throw new gw6("null response body");
        }
        throw new gw6("Invalid http status " + iCode + ": " + str);
    }

    public Reader c(String str) throws gw6, IOException {
        return new InputStreamReader(b(str), "UTF-8");
    }

    public boolean d(String str, String str2) throws JSONException, gw6, IOException {
        e(3, str, str2);
        return true;
    }

    @Override // defpackage.rn6
    public boolean disableTag(String str, String str2) throws JSONException, gw6, IOException {
        if (str.startsWith("user") && str.contains("/category/")) {
            StringBuilder sbZ = jo.z("https://feedly.com/v3/categories/");
            sbZ.append(n56.u0(str));
            a(sbZ.toString());
            return true;
        }
        if (str.startsWith("user") && str.contains("/tag/")) {
            StringBuilder sbZ2 = jo.z("https://feedly.com/v3/tags/");
            sbZ2.append(n56.u0(str));
            a(sbZ2.toString());
            return true;
        }
        Log.e("FeedlyClient", "disableTag: " + str + " not supported");
        return true;
    }

    public boolean e(int i, String str, String str2) throws JSONException, gw6, IOException {
        if (TextUtils.isEmpty(str2)) {
            throw new gw6("no data content");
        }
        i();
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), str2);
        Request.Builder builderUrl = new Request.Builder().url(str);
        StringBuilder sbZ = jo.z("OAuth ");
        sbZ.append(this.a);
        Request.Builder builderHeader = builderUrl.header("Authorization", sbZ.toString());
        if (i == 3) {
            builderHeader.post(requestBodyCreate);
        } else {
            if (i != 4) {
                throw new gw6("no http action");
            }
            builderHeader.put(requestBodyCreate);
        }
        Response responseExecute = this.mClient.newCall(builderHeader.build()).execute();
        int iCode = responseExecute.code();
        if (iCode == 403) {
            throw new gw6.b("Login failure");
        }
        if (iCode == 401) {
            throw new gw6.b("Authentication fails (" + iCode + "): " + str);
        }
        if (iCode == 200) {
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                throw new gw6("null response body");
            }
            responseBodyBody.close();
            return true;
        }
        throw new gw6("Invalid http status " + iCode + ": " + str);
    }

    @Override // defpackage.rn6
    public boolean editItemTag(String[] strArr, String[] strArr2, String[] strArr3, int i) throws JSONException, gw6, IOException {
        int i2 = 0;
        if (i != 1) {
            if (i != 2) {
                if (i == 3 && strArr3 != null && strArr3.length > 0) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONArray jSONArray = new JSONArray();
                        for (String str : strArr) {
                            jSONArray.put(str);
                        }
                        jSONObject.put("entryIds", jSONArray);
                        StringBuilder sb = new StringBuilder("https://feedly.com/v3/tags");
                        sb.append("/");
                        while (i2 < strArr3.length) {
                            sb.append(i2 > 0 ? "," : "");
                            sb.append(n56.u0(getTagUid(strArr3[i2])));
                            i2++;
                        }
                        e(4, sb.toString(), jSONObject.toString());
                        return true;
                    } catch (JSONException e) {
                        e.printStackTrace();
                        throw new gw6("connection error", e);
                    }
                }
            } else if (strArr3 != null && strArr3.length > 0) {
                StringBuilder sbZ = jo.z("https://feedly.com/v3/tags/");
                sbZ.append(h(strArr3, ","));
                sbZ.append("/");
                sbZ.append(h(strArr, ","));
                a(sbZ.toString());
                return true;
            }
        } else if (strArr3 != null && strArr3.length > 0) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray2 = new JSONArray();
                int length = strArr.length;
                while (i2 < length) {
                    jSONArray2.put(strArr[i2]);
                    i2++;
                }
                jSONObject2.put("entryIds", jSONArray2);
                StringBuilder sbZ2 = jo.z("https://feedly.com/v3/tags/");
                sbZ2.append(h(strArr3, ","));
                e(4, sbZ2.toString(), jSONObject2.toString());
                return true;
            } catch (JSONException e2) {
                e2.printStackTrace();
                throw new gw6("connection error", e2);
            }
        }
        return false;
    }

    @Override // defpackage.rn6
    public boolean editSubscription(String str, String str2, String str3, String[] strArr, int i) throws JSONException, gw6, IOException {
        if (i == 1) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("id", str);
                jSONObject.put("title", str2);
                jSONObject.put("updated", System.currentTimeMillis());
                e(3, "https://feedly.com/v3/subscriptions", jSONObject.toString());
                return true;
            } catch (JSONException e) {
                e.printStackTrace();
                return false;
            }
        }
        if (i != 2) {
            if (i == 3) {
                StringBuilder sbZ = jo.z("https://feedly.com/v3/subscriptions/");
                sbZ.append(n56.u0(str));
                a(sbZ.toString());
                return true;
            }
            if (i == 4) {
                r(str, str2, strArr);
            } else if (i == 5) {
                InputStream inputStreamB = b("https://feedly.com/v3/categories");
                String strC = n56.C(inputStreamB);
                inputStreamB.close();
                try {
                    if (new JSONArray(strC).length() == (strArr == null ? 0 : strArr.length)) {
                        r(str, str2, new String[0]);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            return false;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("id", RssReaderClient.USER_FEED + str3);
            jSONObject2.put("title", str2);
            if (strArr != null && strArr.length > 0) {
                for (String str4 : strArr) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", getCategoryUid(str4));
                    jSONObject3.put("label", str4);
                    jSONArray.put(jSONObject3);
                }
                jSONObject2.put("categories", jSONArray);
            }
            e(3, "https://feedly.com/v3/subscriptions", jSONObject2.toString());
            return true;
        } catch (JSONException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public String f(String str) throws gw6, IOException {
        return (str == null || str.equals("user/-/category/global.all")) ? "user/-/category/global.all".replace("-", g(this.mContext)) : str.equals(rn6.STATE_STARRED) ? "user/-/tag/global.saved".replace("-", g(this.mContext)) : str.equals("user/-/tag/global.read") ? "user/-/tag/global.read".replace("-", g(this.mContext)) : str;
    }

    public String g(Context context) throws IllegalAccessException, JSONException, gw6, IOException, IllegalArgumentException, InvocationTargetException {
        JSONObject jSONObject;
        int i = cn6.b;
        String strF = iw6.F(context, "user_id");
        if (strF == null || strF.length() == 0) {
            lp6 lp6VarA = lp6.a(context, NSRSS20.ENC_TYPE, String.valueOf(1), false);
            if (lp6VarA != null) {
                String str = lp6VarA.f;
                strF = str.substring(5, str.indexOf("/tag"));
                iw6.V(context, "user_id", strF);
            } else {
                i();
                try {
                    jSONObject = new JSONObject(n56.C(b("https://feedly.com/v3/profile")));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                strF = jSONObject.has("id") ? jSONObject.getString("id") : null;
                iw6.V(context, "user_id", strF);
            }
        }
        if (strF != null) {
            return strF;
        }
        throw new gw6("Login failure");
    }

    @Override // defpackage.rn6
    public String getCategoryUid(String str) throws gw6, IOException {
        StringBuilder sbZ = jo.z("user/");
        sbZ.append(g(this.mContext));
        sbZ.append("/category/");
        sbZ.append(str);
        return sbZ.toString();
    }

    @Override // defpackage.rn6
    public String getClientName() {
        return "feedly";
    }

    @Override // defpackage.rn6
    public int getClientService() {
        return 5;
    }

    @Override // defpackage.rn6
    public String getTagUid(String str) throws gw6, IOException {
        StringBuilder sbZ = jo.z("user/");
        sbZ.append(g(this.mContext));
        sbZ.append("/tag/");
        sbZ.append(str);
        return sbZ.toString();
    }

    @Override // defpackage.rn6
    public boolean handleItemIdList(rn6.a aVar, long j) throws gw6, IOException {
        String[] strArrF = aVar.f();
        String strF = null;
        if (strArrF == null || strArrF.length == 0) {
            strF = f(null);
        } else if (strArrF.length > 0) {
            strF = f(strArrF[0]);
        }
        StringBuilder sb = new StringBuilder("https://feedly.com/v3/streams/-/ids".replace("-", n56.u0(strF)));
        sb.append("?ranked=");
        sb.append(aVar.e() ? "newest" : "oldest");
        if (aVar.d()) {
            sb.append("&unreadOnly=true");
        } else {
            sb.append("&unreadOnly=false");
        }
        int iC = aVar.c();
        if (iC > 0) {
            sb.append("&count=");
            sb.append(iC);
        }
        Reader readerC = c(sb.toString());
        try {
            try {
                return m(readerC, aVar) > 0;
            } catch (zo e) {
                e.printStackTrace();
                throw new gw6("data parse error", e);
            }
        } finally {
            readerC.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022 A[Catch: all -> 0x0040, zo -> 0x0042, TryCatch #1 {zo -> 0x0042, blocks: (B:3:0x0009, B:9:0x001e, B:11:0x0022, B:13:0x0028, B:15:0x002e), top: B:26:0x0009, outer: #0 }] */
    @Override // defpackage.rn6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleItemList(rn6.b r8, long r9) throws defpackage.gw6, java.io.IOException {
        /*
            r7 = this;
            long r9 = r8.b()
            r0 = 0
            java.io.Reader r0 = r7.q(r9, r8, r0)
            java.util.Set r1 = r8.g()     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            java.lang.String r2 = r7.n(r0, r8, r1)     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            int r3 = r8.c()     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            r4 = 1000(0x3e8, float:1.401E-42)
            if (r3 <= r4) goto L1a
            goto L1b
        L1a:
            r4 = r3
        L1b:
            r5 = 1
        L1c:
            if (r3 == 0) goto L22
            int r6 = r4 * r5
            if (r3 <= r6) goto L3c
        L22:
            boolean r6 = r8.f()     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            if (r6 == 0) goto L3c
            boolean r6 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            if (r6 != 0) goto L3c
            r0.close()     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            java.io.Reader r0 = r7.q(r9, r8, r2)     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            java.lang.String r2 = r7.n(r0, r8, r1)     // Catch: java.lang.Throwable -> L40 defpackage.zo -> L42
            int r5 = r5 + 1
            goto L1c
        L3c:
            r0.close()
            return
        L40:
            r8 = move-exception
            goto L4e
        L42:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L40
            gw6 r9 = new gw6     // Catch: java.lang.Throwable -> L40
            java.lang.String r10 = "data parse error"
            r9.<init>(r10, r8)     // Catch: java.lang.Throwable -> L40
            throw r9     // Catch: java.lang.Throwable -> L40
        L4e:
            r0.close()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sn6.handleItemList(rn6$b, long):void");
    }

    @Override // defpackage.rn6
    public void handleReaderList(rn6.d dVar, rn6.c cVar, rn6.e eVar, long j) throws gw6, IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(b("https://feedly.com/v3/subscriptions"), "UTF-8");
        try {
            try {
                o(inputStreamReader, cVar, dVar);
                inputStreamReader.close();
                try {
                    try {
                        p(new InputStreamReader(b("https://feedly.com/v3/tags"), "UTF-8"), dVar);
                    } catch (zo e) {
                        e.printStackTrace();
                        throw new gw6("data parse error", e);
                    }
                } finally {
                }
            } catch (zo e2) {
                e2.printStackTrace();
                throw new gw6("data parse error", e2);
            }
        } finally {
        }
    }

    public final String i() throws JSONException, gw6, IOException {
        Context context = this.mContext;
        int i = cn6.b;
        this.a = iw6.F(context, "google_auth");
        long jA = iw6.A(this.mContext, "google_auth_time", 0L);
        if (this.a != null && System.currentTimeMillis() - jA < 899000) {
            return this.a;
        }
        String strF = iw6.F(this.mContext, "oauth2_token_refresh");
        if (strF == null) {
            throw new gw6.b("no login data");
        }
        Response responseExecute = this.mClient.newCall(new Request.Builder().url("https://feedly.com/v3/auth/token").post(new FormBody.Builder().add("refresh_token", strF).add("client_id", "greader").add("client_secret", "1DFHBT3YNACQADNK9IZ0IOXG").add("grant_type", "refresh_token").build()).build()).execute();
        int iCode = responseExecute.code();
        if (iCode == 403) {
            throw new gw6.b("Login failure");
        }
        if (iCode == 401) {
            throw new gw6.b(jo.h("Authentication fails (", iCode, ")"));
        }
        if (iCode != 200) {
            throw new gw6("Invalid http status " + iCode + ": https://feedly.com/v3/auth/token");
        }
        ResponseBody responseBodyBody = responseExecute.body();
        if (responseBodyBody == null) {
            throw new gw6("null response body");
        }
        try {
            String strString = responseBodyBody.string();
            String string = new JSONObject(strString).getString("access_token");
            if (string != null) {
                this.a = string;
                cn6.i0(this.mContext, string, strF, 5);
            } else {
                Log.e("FeedlyClient", strString);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str = this.a;
        if (str == null) {
            throw new gw6("Login Failure");
        }
        cn6.f0(this.mContext, str);
        return this.a;
    }

    public final boolean j(String str, long j) throws JSONException, gw6, IOException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", "markAsRead");
            jSONObject.put(NSRSS20.ENC_TYPE, "categories");
            jSONObject.put("asOf", j + 999);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            jSONObject.put("categoryIds", jSONArray);
            e(3, "https://feedly.com/v3/markers", jSONObject.toString());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean k(String[] strArr) throws JSONException, gw6, IOException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", "markAsRead");
            jSONObject.put(NSRSS20.ENC_TYPE, "entries");
            JSONArray jSONArray = new JSONArray();
            for (String str : strArr) {
                jSONArray.put(str);
            }
            jSONObject.put("entryIds", jSONArray);
            e(3, "https://feedly.com/v3/markers", jSONObject.toString());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean l(String[] strArr) throws JSONException, gw6, IOException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", "keepUnread");
            jSONObject.put(NSRSS20.ENC_TYPE, "entries");
            JSONArray jSONArray = new JSONArray();
            for (String str : strArr) {
                jSONArray.put(str);
            }
            jSONObject.put("entryIds", jSONArray);
            e(3, "https://feedly.com/v3/markers", jSONObject.toString());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final int m(Reader reader, rn6.a aVar) throws IOException {
        ap apVarA = new wo().a(reader);
        ArrayList arrayList = new ArrayList();
        apVarA.g();
        while (apVarA.g() != bp.END_OBJECT) {
            String strB = apVarA.b();
            if (strB != null) {
                apVarA.g();
                if (strB.equals("ids")) {
                    while (apVarA.g() != bp.END_ARRAY) {
                        String strE = apVarA.e();
                        if (strE != null) {
                            arrayList.add(strE);
                        }
                    }
                    aVar.a(arrayList);
                } else {
                    apVarA.i();
                }
            }
        }
        return arrayList.size();
    }

    @Override // defpackage.rn6
    public boolean markAllAsRead(String str, String str2, long j) throws JSONException, gw6, IOException {
        if (str == null) {
            str = f("user/-/category/global.all");
        }
        if (str.startsWith("user") && str.contains("/category/")) {
            return j(str, j);
        }
        if (str.startsWith("user") && str.contains("/tag/")) {
            return j(str, j);
        }
        if (!str.startsWith(RssReaderClient.USER_FEED)) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", "markAsRead");
            jSONObject.put(NSRSS20.ENC_TYPE, "feeds");
            jSONObject.put("asOf", j + 999);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            jSONObject.put("feedIds", jSONArray);
            e(3, "https://feedly.com/v3/markers", jSONObject.toString());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // defpackage.rn6
    public boolean markAsRead(String str, String str2) throws gw6, IOException {
        return k(new String[]{str});
    }

    @Override // defpackage.rn6
    public boolean markAsUnread(String str, String str2, boolean z) throws gw6, IOException {
        return l(new String[]{str});
    }

    /* JADX WARN: Removed duplicated region for block: B:234:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0270 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String n(java.io.Reader r12, rn6.b r13, java.util.Set<java.lang.String> r14) throws gw6.a, java.io.IOException {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sn6.n(java.io.Reader, rn6$b, java.util.Set):java.lang.String");
    }

    public final void o(Reader reader, rn6.c cVar, rn6.d dVar) throws gw6, IOException {
        ap apVarA = new wo().a(reader);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ip6 ip6Var = null;
        lp6 lp6Var = null;
        while (apVarA.g() != bp.END_ARRAY) {
            hp hpVar = (hp) apVarA;
            bp bpVar = hpVar.f;
            if (bpVar == bp.START_OBJECT) {
                ip6Var = new ip6();
            } else if (bpVar == bp.END_OBJECT) {
                arrayList.add(ip6Var);
                ip6Var = null;
            }
            String strB = apVarA.b();
            if (strB != null) {
                apVarA.g();
                if (strB.equals("id")) {
                    ip6Var.f = apVarA.e();
                } else if (strB.equals("title")) {
                    ip6Var.h = s(apVarA.e());
                } else if (strB.equals("sortid")) {
                    ip6Var.g = apVarA.e();
                } else if (strB.equals("website")) {
                    ip6Var.j = apVarA.e();
                } else if (strB.equals("visualUrl")) {
                    ip6Var.k = apVarA.e();
                } else if (strB.equals("updated")) {
                    ip6Var.n = apVarA.c() / 1000;
                } else if (strB.equals("categories")) {
                    while (apVarA.g() != bp.END_ARRAY) {
                        bp bpVar2 = hpVar.f;
                        if (bpVar2 == bp.START_OBJECT) {
                            lp6Var = new lp6();
                        } else if (bpVar2 == bp.END_OBJECT) {
                            if (lp6Var != null) {
                                arrayList2.add(lp6Var);
                            }
                            lp6Var = null;
                        }
                        String strB2 = apVarA.b();
                        if (strB2 != null) {
                            apVarA.g();
                            if (strB2.equals("id")) {
                                ip6Var.l.add(apVarA.e());
                                lp6Var.f = apVarA.e();
                                lp6Var.g = 11;
                            } else if (strB2.equals("label")) {
                                lp6Var.i = apVarA.e();
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
        ((ep6.a) dVar).a(arrayList2);
        ((ep6.b) cVar).a(arrayList);
    }

    public final void p(Reader reader, rn6.d dVar) throws IOException {
        ap apVarA = new wo().a(reader);
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        lp6 lp6Var = null;
        while (apVarA.g() != bp.END_ARRAY) {
            bp bpVar = ((hp) apVarA).f;
            if (bpVar == bp.START_OBJECT) {
                lp6Var = new lp6();
            } else if (bpVar == bp.END_OBJECT) {
                arrayList.add(lp6Var);
                lp6Var = null;
            }
            String strB = apVarA.b();
            if (strB != null) {
                apVarA.g();
                if (strB.equals("id")) {
                    String strE = apVarA.e();
                    lp6Var.f = strE;
                    lp6Var.g = 10;
                    if (strE.endsWith("tag/global.saved")) {
                        lp6Var.i = "tag/global.saved";
                        lp6Var.g = 1;
                        z = true;
                    }
                } else if (strB.equals("label")) {
                    lp6Var.i = apVarA.e();
                } else {
                    apVarA.i();
                }
            }
        }
        if (!z) {
            try {
                lp6 lp6Var2 = new lp6();
                lp6Var2.f = getTagUid("global.saved");
                lp6Var2.i = "tag/global.saved";
                lp6Var2.g = 1;
                arrayList.add(lp6Var2);
            } catch (gw6 unused) {
            }
        }
        try {
            ((ep6.a) dVar).a(arrayList);
        } catch (gw6 e) {
            e.printStackTrace();
        }
    }

    public final Reader q(long j, rn6.b bVar, String str) throws gw6, IOException {
        StringBuilder sb = new StringBuilder("https://feedly.com/v3/streams/-/contents".replace("-", n56.u0(f(bVar.stream()))));
        sb.append("?ranked=");
        sb.append(bVar.e() ? "newest" : "oldest");
        if (bVar.d()) {
            sb.append("&unreadOnly=true");
        } else {
            sb.append("&unreadOnly=false");
        }
        if (str != null && str.length() > 0) {
            sb.append("&continuation=");
            sb.append(str);
        }
        if (j > 0) {
            sb.append("&newerThan=");
            sb.append(j * 1000);
        }
        int iC = bVar.c();
        if (iC > 1000 || iC == 0) {
            iC = 1000;
        }
        if (iC > 0) {
            sb.append("&count=");
            sb.append(iC <= 1000 ? iC : 1000);
        }
        return c(sb.toString());
    }

    public boolean r(String str, String str2, String[] strArr) throws JSONException, gw6, IOException {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject.put("id", str);
            jSONObject.put("title", str2);
            for (String str3 : strArr) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", str3);
                jSONObject2.put("label", str3.substring(str3.indexOf("/category/") + 10));
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("categories", jSONArray);
            e(3, "https://feedly.com/v3/subscriptions", jSONObject.toString());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // defpackage.rn6
    public boolean renameTag(String str, String str2, String str3) throws JSONException, gw6, IOException {
        String string;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("label", str3);
            if (str.startsWith("user") && str.contains("/category/")) {
                StringBuilder sbZ = jo.z("https://feedly.com/v3/categories/");
                sbZ.append(n56.u0(str));
                string = sbZ.toString();
            } else {
                if (!str.startsWith("user") || !str.contains("/tag/")) {
                    Log.e("FeedlyClient", "renameTag: " + str + " not supported");
                    return true;
                }
                StringBuilder sbZ2 = jo.z("https://feedly.com/v3/tags/");
                sbZ2.append(n56.u0(str));
                string = sbZ2.toString();
            }
            d(string, jSONObject.toString());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // defpackage.rn6
    public boolean markAsRead(String[] strArr, String[] strArr2) throws gw6, IOException {
        return k(strArr);
    }

    @Override // defpackage.rn6
    public boolean markAsUnread(String[] strArr, String[] strArr2, boolean z) throws gw6, IOException {
        return l(strArr);
    }
}
