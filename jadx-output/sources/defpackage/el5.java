package defpackage;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* loaded from: classes.dex */
public class el5 {
    public static final OkHttpClient f = new OkHttpClient().newBuilder().callTimeout(10000, TimeUnit.MILLISECONDS).build();
    public final dl5 a;
    public final String b;
    public final Map<String, String> c;
    public MultipartBody.Builder e = null;
    public final Map<String, String> d = new HashMap();

    public el5(dl5 dl5Var, String str, Map<String, String> map) {
        this.a = dl5Var;
        this.b = str;
        this.c = map;
    }

    public gl5 a() throws IOException {
        Request.Builder builderCacheControl = new Request.Builder().cacheControl(new CacheControl.Builder().noCache().build());
        HttpUrl.Builder builderNewBuilder = HttpUrl.parse(this.b).newBuilder();
        for (Map.Entry<String, String> entry : this.c.entrySet()) {
            builderNewBuilder = builderNewBuilder.addEncodedQueryParameter(entry.getKey(), entry.getValue());
        }
        Request.Builder builderUrl = builderCacheControl.url(builderNewBuilder.build());
        for (Map.Entry<String, String> entry2 : this.d.entrySet()) {
            builderUrl = builderUrl.header(entry2.getKey(), entry2.getValue());
        }
        MultipartBody.Builder builder = this.e;
        Response responseExecute = f.newCall(builderUrl.method(this.a.name(), builder == null ? null : builder.build()).build()).execute();
        return new gl5(responseExecute.code(), responseExecute.body() != null ? responseExecute.body().string() : null, responseExecute.headers());
    }

    public el5 b(String str, String str2) {
        if (this.e == null) {
            this.e = new MultipartBody.Builder().setType(MultipartBody.FORM);
        }
        this.e = this.e.addFormDataPart(str, str2);
        return this;
    }

    public el5 c(String str, String str2, String str3, File file) {
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse(str3), file);
        if (this.e == null) {
            this.e = new MultipartBody.Builder().setType(MultipartBody.FORM);
        }
        this.e = this.e.addFormDataPart(str, str2, requestBodyCreate);
        return this;
    }
}
