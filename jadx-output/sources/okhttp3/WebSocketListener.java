package okhttp3;

import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import defpackage.bt7;
import defpackage.im7;

/* loaded from: classes2.dex */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i, String str) {
        im7.e(webSocket, "webSocket");
        im7.e(str, "reason");
    }

    public void onClosing(WebSocket webSocket, int i, String str) {
        im7.e(webSocket, "webSocket");
        im7.e(str, "reason");
    }

    public void onFailure(WebSocket webSocket, Throwable th, Response response) {
        im7.e(webSocket, "webSocket");
        im7.e(th, "t");
    }

    public void onMessage(WebSocket webSocket, bt7 bt7Var) {
        im7.e(webSocket, "webSocket");
        im7.e(bt7Var, "bytes");
    }

    public void onMessage(WebSocket webSocket, String str) {
        im7.e(webSocket, "webSocket");
        im7.e(str, AtomText.TYPE_TEXT);
    }

    public void onOpen(WebSocket webSocket, Response response) {
        im7.e(webSocket, "webSocket");
        im7.e(response, "response");
    }
}
