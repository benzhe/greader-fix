package defpackage;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;

/* loaded from: classes.dex */
public final class xx0 extends ay0 {
    public xx0(xw0 xw0Var, ep3 ep3Var, boolean z) {
        super(xw0Var, ep3Var, z);
    }

    @Override // defpackage.ww0, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return Z(webView, str, null);
    }
}
