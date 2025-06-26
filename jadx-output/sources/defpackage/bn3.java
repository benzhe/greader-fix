package defpackage;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* loaded from: classes.dex */
public final class bn3 implements Runnable {
    public ValueCallback<String> e = new en3(this);
    public final /* synthetic */ tm3 f;
    public final /* synthetic */ WebView g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ zm3 i;

    public bn3(zm3 zm3Var, tm3 tm3Var, WebView webView, boolean z) {
        this.i = zm3Var;
        this.f = tm3Var;
        this.g = webView;
        this.h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.g.getSettings().getJavaScriptEnabled()) {
            try {
                this.g.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.e);
            } catch (Throwable unused) {
                this.e.onReceiveValue("");
            }
        }
    }
}
