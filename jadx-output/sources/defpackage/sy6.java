package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes2.dex */
public final class sy6 {
    public URL a;
    public URL b;
    public String c;
    public final String d;
    public final String e;
    public final String f;
    public final OkHttpClient g;

    public sy6(String str) throws IOException {
        this(str, null, null, null, 14);
    }

    /* JADX WARN: Finally extract failed */
    public sy6(String str, String str2, String str3, OkHttpClient okHttpClient, int i) throws IOException {
        String strU;
        MediaType mediaTypeContentType;
        String strHeader$default;
        str2 = (i & 2) != 0 ? "UTF-8" : str2;
        str3 = (i & 4) != 0 ? "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16" : str3;
        int i2 = i & 8;
        im7.e(str, "url");
        this.d = str;
        this.e = str2;
        this.f = str3;
        InputStream inputStreamByteStream = null;
        this.g = null;
        im7.e(str, "str");
        try {
            strU = co7.u(co7.u(co7.u(co7.u(co7.u(co7.u(co7.u(co7.u(co7.u(co7.u(co7.F(str).toString(), "\\", "%5C", false, 4), "<", "%3C", false, 4), ">", "%3E", false, 4), "[", "%5B", false, 4), "]", "%5D", false, 4), "{", "%7B", false, 4), StringSubstitutor.DEFAULT_VAR_END, "%7D", false, 4), "`", "%60", false, 4), StringUtils.SPACE, "%20", false, 4), "|", "%7C", false, 4);
        } catch (Exception e) {
            e.printStackTrace();
            strU = null;
        }
        this.a = new URL(strU);
        this.c = "";
        OkHttpClient okHttpClientBuild = this.g;
        if (okHttpClientBuild == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            long j = 20000;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            okHttpClientBuild = builder.connectTimeout(j, timeUnit).writeTimeout(j, timeUnit).readTimeout(j, timeUnit).followRedirects(true).followSslRedirects(true).build();
        }
        Request.Builder builder2 = new Request.Builder();
        builder2.url(this.d);
        String str4 = this.f;
        if (str4 != null) {
            builder2.header("User-Agent", str4);
        }
        try {
            Response responseExecute = okHttpClientBuild.newCall(builder2.build()).execute();
            if (responseExecute.isRedirect() && (strHeader$default = Response.header$default(responseExecute, "Location", null, 2, null)) != null) {
                try {
                    this.b = new URL(strHeader$default);
                } catch (Exception unused) {
                }
            }
            if (!responseExecute.isSuccessful()) {
                throw new IOException(String.valueOf(responseExecute.code()) + " SC_BAD_REQUEST: " + this.d);
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody != null) {
                MediaType mediaTypeContentType2 = responseBodyBody.contentType();
                String string = mediaTypeContentType2 != null ? mediaTypeContentType2.toString() : null;
                if (string == null || co7.A(string, "text/", false, 2) || co7.A(string, "application/json", false, 2) || co7.A(string, "application/xhtml", false, 2)) {
                    String strName = this.e;
                    if (strName == null) {
                        ResponseBody responseBodyBody2 = responseExecute.body();
                        Charset charsetCharset$default = (responseBodyBody2 == null || (mediaTypeContentType = responseBodyBody2.contentType()) == null) ? null : MediaType.charset$default(mediaTypeContentType, null, 1, null);
                        if (charsetCharset$default != null) {
                            strName = charsetCharset$default.name();
                        }
                    }
                    try {
                        inputStreamByteStream = responseBodyBody.byteStream();
                        String strD = n56.D(inputStreamByteStream, strName);
                        im7.d(strD, "StreamUtils.convertStrea…putStream, streamCharset)");
                        this.c = strD;
                        if (inputStreamByteStream != null) {
                            inputStreamByteStream.close();
                        }
                    } catch (Throwable th) {
                        if (inputStreamByteStream != null) {
                            inputStreamByteStream.close();
                        }
                        throw th;
                    }
                }
            }
        } finally {
            okHttpClientBuild.connectionPool().evictAll();
        }
    }

    public final URL a() {
        URL url = this.b;
        return url != null ? url : this.a;
    }
}
