package defpackage;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;

/* loaded from: classes.dex */
public final class zx0 extends ay0 {
    public zx0(xw0 xw0Var, ep3 ep3Var, boolean z) {
        super(xw0Var, ep3Var, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return Z(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
