package okhttp3;

import defpackage.gm7;
import defpackage.im7;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "cachedResponse");
    }

    public void cacheHit(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "response");
    }

    public void cacheMiss(Call call) {
        im7.e(call, "call");
    }

    public void callEnd(Call call) {
        im7.e(call, "call");
    }

    public void callFailed(Call call, IOException iOException) {
        im7.e(call, "call");
        im7.e(iOException, "ioe");
    }

    public void callStart(Call call) {
        im7.e(call, "call");
    }

    public void canceled(Call call) {
        im7.e(call, "call");
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        im7.e(call, "call");
        im7.e(inetSocketAddress, "inetSocketAddress");
        im7.e(proxy, "proxy");
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        im7.e(call, "call");
        im7.e(inetSocketAddress, "inetSocketAddress");
        im7.e(proxy, "proxy");
        im7.e(iOException, "ioe");
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        im7.e(call, "call");
        im7.e(inetSocketAddress, "inetSocketAddress");
        im7.e(proxy, "proxy");
    }

    public void connectionAcquired(Call call, Connection connection) {
        im7.e(call, "call");
        im7.e(connection, "connection");
    }

    public void connectionReleased(Call call, Connection connection) {
        im7.e(call, "call");
        im7.e(connection, "connection");
    }

    public void dnsEnd(Call call, String str, List<InetAddress> list) {
        im7.e(call, "call");
        im7.e(str, "domainName");
        im7.e(list, "inetAddressList");
    }

    public void dnsStart(Call call, String str) {
        im7.e(call, "call");
        im7.e(str, "domainName");
    }

    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<Proxy> list) {
        im7.e(call, "call");
        im7.e(httpUrl, "url");
        im7.e(list, "proxies");
    }

    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        im7.e(call, "call");
        im7.e(httpUrl, "url");
    }

    public void requestBodyEnd(Call call, long j) {
        im7.e(call, "call");
    }

    public void requestBodyStart(Call call) {
        im7.e(call, "call");
    }

    public void requestFailed(Call call, IOException iOException) {
        im7.e(call, "call");
        im7.e(iOException, "ioe");
    }

    public void requestHeadersEnd(Call call, Request request) {
        im7.e(call, "call");
        im7.e(request, "request");
    }

    public void requestHeadersStart(Call call) {
        im7.e(call, "call");
    }

    public void responseBodyEnd(Call call, long j) {
        im7.e(call, "call");
    }

    public void responseBodyStart(Call call) {
        im7.e(call, "call");
    }

    public void responseFailed(Call call, IOException iOException) {
        im7.e(call, "call");
        im7.e(iOException, "ioe");
    }

    public void responseHeadersEnd(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "response");
    }

    public void responseHeadersStart(Call call) {
        im7.e(call, "call");
    }

    public void satisfactionFailure(Call call, Response response) {
        im7.e(call, "call");
        im7.e(response, "response");
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        im7.e(call, "call");
    }

    public void secureConnectStart(Call call) {
        im7.e(call, "call");
    }
}
