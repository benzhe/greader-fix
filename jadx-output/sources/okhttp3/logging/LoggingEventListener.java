package okhttp3.logging;

import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;

/* loaded from: classes2.dex */
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Factory(HttpLoggingInterceptor.Logger logger) {
            im7.e(logger, "logger");
            this.logger = logger;
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener create(Call call) {
            im7.e(call, "call");
            return new LoggingEventListener(this.logger, null);
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i, gm7 gm7Var) {
            this((i & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, gm7 gm7Var) {
        this(logger);
    }

    private final void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        this.logger.log('[' + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "cachedResponse");
        logWithTime("cacheConditionalHit: " + response);
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "response");
        logWithTime("cacheHit: " + response);
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        im7.e(call, "call");
        logWithTime("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        im7.e(call, "call");
        logWithTime("callEnd");
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException iOException) {
        im7.e(call, "call");
        im7.e(iOException, "ioe");
        logWithTime("callFailed: " + iOException);
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        im7.e(call, "call");
        this.startNs = System.nanoTime();
        StringBuilder sbZ = jo.z("callStart: ");
        sbZ.append(call.request());
        logWithTime(sbZ.toString());
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        im7.e(call, "call");
        logWithTime("canceled");
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        im7.e(call, "call");
        im7.e(inetSocketAddress, "inetSocketAddress");
        im7.e(proxy, "proxy");
        logWithTime("connectEnd: " + protocol);
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        im7.e(call, "call");
        im7.e(inetSocketAddress, "inetSocketAddress");
        im7.e(proxy, "proxy");
        im7.e(iOException, "ioe");
        logWithTime("connectFailed: " + protocol + ' ' + iOException);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        im7.e(call, "call");
        im7.e(inetSocketAddress, "inetSocketAddress");
        im7.e(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        im7.e(call, "call");
        im7.e(connection, "connection");
        logWithTime("connectionAcquired: " + connection);
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        im7.e(call, "call");
        im7.e(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String str, List<? extends InetAddress> list) {
        im7.e(call, "call");
        im7.e(str, "domainName");
        im7.e(list, "inetAddressList");
        logWithTime("dnsEnd: " + list);
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String str) {
        im7.e(call, "call");
        im7.e(str, "domainName");
        logWithTime("dnsStart: " + str);
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<? extends Proxy> list) {
        im7.e(call, "call");
        im7.e(httpUrl, "url");
        im7.e(list, "proxies");
        logWithTime("proxySelectEnd: " + list);
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        im7.e(call, "call");
        im7.e(httpUrl, "url");
        logWithTime("proxySelectStart: " + httpUrl);
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j) {
        im7.e(call, "call");
        logWithTime("requestBodyEnd: byteCount=" + j);
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        im7.e(call, "call");
        logWithTime("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException iOException) {
        im7.e(call, "call");
        im7.e(iOException, "ioe");
        logWithTime("requestFailed: " + iOException);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        im7.e(call, "call");
        im7.e(request, "request");
        logWithTime("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        im7.e(call, "call");
        logWithTime("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j) {
        im7.e(call, "call");
        logWithTime("responseBodyEnd: byteCount=" + j);
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        im7.e(call, "call");
        logWithTime("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException iOException) {
        im7.e(call, "call");
        im7.e(iOException, "ioe");
        logWithTime("responseFailed: " + iOException);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "response");
        logWithTime("responseHeadersEnd: " + response);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        im7.e(call, "call");
        logWithTime("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "response");
        logWithTime("satisfactionFailure: " + response);
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        im7.e(call, "call");
        logWithTime("secureConnectEnd: " + handshake);
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        im7.e(call, "call");
        logWithTime("secureConnectStart");
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }
}
