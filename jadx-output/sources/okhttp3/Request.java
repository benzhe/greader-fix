package okhttp3;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.co7;
import defpackage.ek7;
import defpackage.im7;
import defpackage.jo;
import defpackage.rj7;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import org.apache.commons.text.lookup.AbstractStringLookup;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class Request {
    private final RequestBody body;
    private final Headers headers;
    private CacheControl lazyCacheControl;
    private final String method;
    private final Map<Class<?>, Object> tags;
    private final HttpUrl url;

    public static class Builder {
        private RequestBody body;
        private Headers.Builder headers;
        private String method;
        private Map<Class<?>, Object> tags;
        private HttpUrl url;

        public Builder() {
            this.tags = new LinkedHashMap();
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i & 1) != 0) {
                requestBody = Util.EMPTY_REQUEST;
            }
            return builder.delete(requestBody);
        }

        public Builder addHeader(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            this.headers.add(str, str2);
            return this;
        }

        public Request build() {
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new Request(httpUrl, this.method, this.headers.build(), this.body, Util.toImmutableMap(this.tags));
            }
            throw new IllegalStateException("url == null".toString());
        }

        public Builder cacheControl(CacheControl cacheControl) {
            im7.e(cacheControl, "cacheControl");
            String string = cacheControl.toString();
            return string.length() == 0 ? removeHeader("Cache-Control") : header("Cache-Control", string);
        }

        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        public Builder delete(RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        public Builder get() {
            return method("GET", null);
        }

        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        public final String getMethod$okhttp() {
            return this.method;
        }

        public final Map<Class<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        public Builder head() {
            return method("HEAD", null);
        }

        public Builder header(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            this.headers.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            im7.e(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder method(String str, RequestBody requestBody) {
            im7.e(str, "method");
            if (!(str.length() > 0)) {
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            if (requestBody == null) {
                if (!(!HttpMethod.requiresRequestBody(str))) {
                    throw new IllegalArgumentException(jo.o("method ", str, " must have a request body.").toString());
                }
            } else if (!HttpMethod.permitsRequestBody(str)) {
                throw new IllegalArgumentException(jo.o("method ", str, " must not have a request body.").toString());
            }
            this.method = str;
            this.body = requestBody;
            return this;
        }

        public Builder patch(RequestBody requestBody) {
            im7.e(requestBody, "body");
            return method("PATCH", requestBody);
        }

        public Builder post(RequestBody requestBody) {
            im7.e(requestBody, "body");
            return method("POST", requestBody);
        }

        public Builder put(RequestBody requestBody) {
            im7.e(requestBody, "body");
            return method("PUT", requestBody);
        }

        public Builder removeHeader(String str) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            this.headers.removeAll(str);
            return this;
        }

        public final void setBody$okhttp(RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(Headers.Builder builder) {
            im7.e(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(String str) {
            im7.e(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(Map<Class<?>, Object> map) {
            im7.e(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        public Builder tag(Object obj) {
            return tag(Object.class, obj);
        }

        public Builder url(HttpUrl httpUrl) {
            im7.e(httpUrl, "url");
            this.url = httpUrl;
            return this;
        }

        public <T> Builder tag(Class<? super T> cls, T t) {
            im7.e(cls, NSRSS20.ENC_TYPE);
            if (t == null) {
                this.tags.remove(cls);
            } else {
                if (this.tags.isEmpty()) {
                    this.tags = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.tags;
                T tCast = cls.cast(t);
                im7.c(tCast);
                map.put(cls, tCast);
            }
            return this;
        }

        public Builder url(String str) {
            im7.e(str, "url");
            if (co7.x(str, "ws:", true)) {
                StringBuilder sbZ = jo.z("http:");
                String strSubstring = str.substring(3);
                im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                sbZ.append(strSubstring);
                str = sbZ.toString();
            } else if (co7.x(str, "wss:", true)) {
                StringBuilder sbZ2 = jo.z("https:");
                String strSubstring2 = str.substring(4);
                im7.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                sbZ2.append(strSubstring2);
                str = sbZ2.toString();
            }
            return url(HttpUrl.Companion.get(str));
        }

        public Builder(Request request) {
            Map<Class<?>, Object> mapX;
            im7.e(request, "request");
            this.tags = new LinkedHashMap();
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            if (request.getTags$okhttp().isEmpty()) {
                mapX = new LinkedHashMap<>();
            } else {
                mapX = ek7.x(request.getTags$okhttp());
            }
            this.tags = mapX;
            this.headers = request.headers().newBuilder();
        }

        public Builder url(URL url) {
            im7.e(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String string = url.toString();
            im7.d(string, "url.toString()");
            return url(companion.get(string));
        }
    }

    public Request(HttpUrl httpUrl, String str, Headers headers, RequestBody requestBody, Map<Class<?>, ? extends Object> map) {
        im7.e(httpUrl, "url");
        im7.e(str, "method");
        im7.e(headers, "headers");
        im7.e(map, "tags");
        this.url = httpUrl;
        this.method = str;
        this.headers = headers;
        this.body = requestBody;
        this.tags = map;
    }

    /* renamed from: -deprecated_body, reason: not valid java name */
    public final RequestBody m116deprecated_body() {
        return this.body;
    }

    /* renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m117deprecated_cacheControl() {
        return cacheControl();
    }

    /* renamed from: -deprecated_headers, reason: not valid java name */
    public final Headers m118deprecated_headers() {
        return this.headers;
    }

    /* renamed from: -deprecated_method, reason: not valid java name */
    public final String m119deprecated_method() {
        return this.method;
    }

    /* renamed from: -deprecated_url, reason: not valid java name */
    public final HttpUrl m120deprecated_url() {
        return this.url;
    }

    public final RequestBody body() {
        return this.body;
    }

    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl cacheControl2 = CacheControl.Companion.parse(this.headers);
        this.lazyCacheControl = cacheControl2;
        return cacheControl2;
    }

    public final Map<Class<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    public final String header(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        return this.headers.get(str);
    }

    public final Headers headers() {
        return this.headers;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    public final String method() {
        return this.method;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final Object tag() {
        return tag(Object.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        StringBuilder sbZ = jo.z("Request{method=");
        sbZ.append(this.method);
        sbZ.append(", url=");
        sbZ.append(this.url);
        if (this.headers.size() != 0) {
            sbZ.append(", headers=[");
            int i = 0;
            for (rj7<? extends String, ? extends String> rj7Var : this.headers) {
                int i2 = i + 1;
                if (i < 0) {
                    ek7.q();
                    throw null;
                }
                rj7<? extends String, ? extends String> rj7Var2 = rj7Var;
                String str = (String) rj7Var2.e;
                String str2 = (String) rj7Var2.f;
                if (i > 0) {
                    sbZ.append(", ");
                }
                sbZ.append(str);
                sbZ.append(AbstractStringLookup.SPLIT_CH);
                sbZ.append(str2);
                i = i2;
            }
            sbZ.append(']');
        }
        if (!this.tags.isEmpty()) {
            sbZ.append(", tags=");
            sbZ.append(this.tags);
        }
        sbZ.append('}');
        String string = sbZ.toString();
        im7.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final HttpUrl url() {
        return this.url;
    }

    public final List<String> headers(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        return this.headers.values(str);
    }

    public final <T> T tag(Class<? extends T> cls) {
        im7.e(cls, NSRSS20.ENC_TYPE);
        return cls.cast(this.tags.get(cls));
    }
}
