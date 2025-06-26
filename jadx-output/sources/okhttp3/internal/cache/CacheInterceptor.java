package okhttp3.internal.cache;

import defpackage.at7;
import defpackage.co7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.n56;
import defpackage.tt7;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xs7;
import defpackage.zs7;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes2.dex */
public final class CacheInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private final Cache cache;

    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Headers combine(Headers headers, Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String strName = headers.name(i);
                String strValue = headers.value(i);
                if ((!co7.e("Warning", strName, true) || !co7.A(strValue, "1", false, 2)) && (isContentSpecificHeader(strName) || !isEndToEnd(strName) || headers2.get(strName) == null)) {
                    builder.addLenient$okhttp(strName, strValue);
                }
            }
            int size2 = headers2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String strName2 = headers2.name(i2);
                if (!isContentSpecificHeader(strName2) && isEndToEnd(strName2)) {
                    builder.addLenient$okhttp(strName2, headers2.value(i2));
                }
            }
            return builder.build();
        }

        private final boolean isContentSpecificHeader(String str) {
            return co7.e("Content-Length", str, true) || co7.e(HttpConnection.CONTENT_ENCODING, str, true) || co7.e(HttpConnection.CONTENT_TYPE, str, true);
        }

        private final boolean isEndToEnd(String str) {
            return (co7.e("Connection", str, true) || co7.e("Keep-Alive", str, true) || co7.e("Proxy-Authenticate", str, true) || co7.e("Proxy-Authorization", str, true) || co7.e("TE", str, true) || co7.e("Trailers", str, true) || co7.e("Transfer-Encoding", str, true) || co7.e("Upgrade", str, true)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Response stripBody(Response response) {
            return (response != null ? response.body() : null) != null ? response.newBuilder().body(null).build() : response;
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public CacheInterceptor(Cache cache) {
        this.cache = cache;
    }

    private final Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        tt7 tt7VarBody = cacheRequest.body();
        ResponseBody responseBodyBody = response.body();
        im7.c(responseBodyBody);
        final at7 at7VarSource = responseBodyBody.source();
        final zs7 zs7VarO = n56.o(tt7VarBody);
        vt7 vt7Var = new vt7() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1
            private boolean cacheRequestClosed;

            @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                at7VarSource.close();
            }

            @Override // defpackage.vt7
            public long read(xs7 xs7Var, long j) throws IOException {
                im7.e(xs7Var, "sink");
                try {
                    long j2 = at7VarSource.read(xs7Var, j);
                    if (j2 != -1) {
                        xs7Var.e(zs7VarO.h(), xs7Var.f - j2, j2);
                        zs7VarO.O();
                        return j2;
                    }
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        zs7VarO.close();
                    }
                    return -1L;
                } catch (IOException e) {
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        cacheRequest.abort();
                    }
                    throw e;
                }
            }

            @Override // defpackage.vt7
            public wt7 timeout() {
                return at7VarSource.timeout();
            }
        };
        return response.newBuilder().body(new RealResponseBody(Response.header$default(response, HttpConnection.CONTENT_TYPE, null, 2, null), response.body().contentLength(), n56.p(vt7Var))).build();
    }

    public final Cache getCache$okhttp() {
        return this.cache;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        EventListener eventListener$okhttp;
        ResponseBody responseBodyBody;
        ResponseBody responseBodyBody2;
        im7.e(chain, "chain");
        Call call = chain.call();
        Cache cache = this.cache;
        Response response = cache != null ? cache.get$okhttp(chain.request()) : null;
        CacheStrategy cacheStrategyCompute = new CacheStrategy.Factory(System.currentTimeMillis(), chain.request(), response).compute();
        Request networkRequest = cacheStrategyCompute.getNetworkRequest();
        Response cacheResponse = cacheStrategyCompute.getCacheResponse();
        Cache cache2 = this.cache;
        if (cache2 != null) {
            cache2.trackResponse$okhttp(cacheStrategyCompute);
        }
        RealCall realCall = (RealCall) (call instanceof RealCall ? call : null);
        if (realCall == null || (eventListener$okhttp = realCall.getEventListener$okhttp()) == null) {
            eventListener$okhttp = EventListener.NONE;
        }
        if (response != null && cacheResponse == null && (responseBodyBody2 = response.body()) != null) {
            Util.closeQuietly(responseBodyBody2);
        }
        if (networkRequest == null && cacheResponse == null) {
            Response responseBuild = new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(System.currentTimeMillis()).build();
            eventListener$okhttp.satisfactionFailure(call, responseBuild);
            return responseBuild;
        }
        if (networkRequest == null) {
            im7.c(cacheResponse);
            Response responseBuild2 = cacheResponse.newBuilder().cacheResponse(Companion.stripBody(cacheResponse)).build();
            eventListener$okhttp.cacheHit(call, responseBuild2);
            return responseBuild2;
        }
        if (cacheResponse != null) {
            eventListener$okhttp.cacheConditionalHit(call, cacheResponse);
        } else if (this.cache != null) {
            eventListener$okhttp.cacheMiss(call);
        }
        try {
            Response responseProceed = chain.proceed(networkRequest);
            if (responseProceed == null && response != null && responseBodyBody != null) {
            }
            if (cacheResponse != null) {
                if (responseProceed != null && responseProceed.code() == 304) {
                    Response.Builder builderNewBuilder = cacheResponse.newBuilder();
                    Companion companion = Companion;
                    Response responseBuild3 = builderNewBuilder.headers(companion.combine(cacheResponse.headers(), responseProceed.headers())).sentRequestAtMillis(responseProceed.sentRequestAtMillis()).receivedResponseAtMillis(responseProceed.receivedResponseAtMillis()).cacheResponse(companion.stripBody(cacheResponse)).networkResponse(companion.stripBody(responseProceed)).build();
                    ResponseBody responseBodyBody3 = responseProceed.body();
                    im7.c(responseBodyBody3);
                    responseBodyBody3.close();
                    Cache cache3 = this.cache;
                    im7.c(cache3);
                    cache3.trackConditionalCacheHit$okhttp();
                    this.cache.update$okhttp(cacheResponse, responseBuild3);
                    eventListener$okhttp.cacheHit(call, responseBuild3);
                    return responseBuild3;
                }
                ResponseBody responseBodyBody4 = cacheResponse.body();
                if (responseBodyBody4 != null) {
                    Util.closeQuietly(responseBodyBody4);
                }
            }
            im7.c(responseProceed);
            Response.Builder builderNewBuilder2 = responseProceed.newBuilder();
            Companion companion2 = Companion;
            Response responseBuild4 = builderNewBuilder2.cacheResponse(companion2.stripBody(cacheResponse)).networkResponse(companion2.stripBody(responseProceed)).build();
            if (this.cache != null) {
                if (HttpHeaders.promisesBody(responseBuild4) && CacheStrategy.Companion.isCacheable(responseBuild4, networkRequest)) {
                    Response responseCacheWritingResponse = cacheWritingResponse(this.cache.put$okhttp(responseBuild4), responseBuild4);
                    if (cacheResponse != null) {
                        eventListener$okhttp.cacheMiss(call);
                    }
                    return responseCacheWritingResponse;
                }
                if (HttpMethod.INSTANCE.invalidatesCache(networkRequest.method())) {
                    try {
                        this.cache.remove$okhttp(networkRequest);
                    } catch (IOException unused) {
                    }
                }
            }
            return responseBuild4;
        } finally {
            if (response != null && (responseBodyBody = response.body()) != null) {
                Util.closeQuietly(responseBodyBody);
            }
        }
    }
}
