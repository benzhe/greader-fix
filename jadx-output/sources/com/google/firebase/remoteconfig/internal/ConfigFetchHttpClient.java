package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import defpackage.kb6;
import defpackage.lb6;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ConfigFetchHttpClient {
    public static final Pattern h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    public final Context a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.a = context;
        this.b = str;
        this.c = str2;
        Matcher matcher = h.matcher(str);
        this.d = matcher.matches() ? matcher.group(1) : null;
        this.e = str3;
        this.f = j;
        this.g = j2;
    }

    public final JSONObject a(String str, String str2, Map<String, String> map) throws PackageManager.NameNotFoundException, kb6 {
        HashMap map2 = new HashMap();
        if (str == null) {
            throw new kb6("Fetch failed: Firebase installation id is null.");
        }
        map2.put("appInstanceId", str);
        map2.put("appInstanceIdToken", str2);
        map2.put("appId", this.b);
        Locale locale = this.a.getResources().getConfiguration().locale;
        map2.put("countryCode", locale.getCountry());
        int i = Build.VERSION.SDK_INT;
        map2.put("languageCode", locale.toLanguageTag());
        map2.put("platformVersion", Integer.toString(i));
        map2.put("timeZone", TimeZone.getDefault().getID());
        try {
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
            if (packageInfo != null) {
                map2.put("appVersion", packageInfo.versionName);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        map2.put("packageName", this.a.getPackageName());
        map2.put("sdkVersion", "20.0.2");
        map2.put("analyticsUserProperties", new JSONObject(map));
        return new JSONObject(map2);
    }

    public HttpURLConnection b() throws lb6 {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.d, this.e)).openConnection();
        } catch (IOException e) {
            throw new lb6(e.getMessage());
        }
    }

    public final JSONObject c(URLConnection uRLConnection) throws JSONException, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = bufferedReader.read();
            if (i == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) i);
        }
    }

    public final void d(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00a4 A[LOOP:0: B:12:0x009e->B:14:0x00a4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d6 A[Catch: all -> 0x0170, JSONException -> 0x0172, IOException | JSONException -> 0x0174, TRY_LEAVE, TryCatch #6 {all -> 0x0170, blocks: (B:15:0x00ba, B:17:0x00d6, B:51:0x0166, B:52:0x016f, B:58:0x0175, B:59:0x017c), top: B:78:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0166 A[Catch: all -> 0x0170, JSONException -> 0x0172, IOException | JSONException -> 0x0174, TRY_ENTER, TryCatch #6 {all -> 0x0170, blocks: (B:15:0x00ba, B:17:0x00d6, B:51:0x0166, B:52:0x016f, B:58:0x0175, B:59:0x017c), top: B:78:0x00a2 }] */
    @androidx.annotation.Keep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public dc6.a fetch(java.net.HttpURLConnection r7, java.lang.String r8, java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10, java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12, java.util.Date r13) throws defpackage.lb6, org.json.JSONException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient.fetch(java.net.HttpURLConnection, java.lang.String, java.lang.String, java.util.Map, java.lang.String, java.util.Map, java.util.Date):dc6$a");
    }
}
