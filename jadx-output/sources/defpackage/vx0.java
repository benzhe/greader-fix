package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import defpackage.dy0;
import defpackage.ey0;
import defpackage.yx0;

/* loaded from: classes.dex */
public final class vx0<WebViewT extends yx0 & dy0 & ey0> {
    public final ux0 a;
    public final WebViewT b;

    public vx0(WebViewT webviewt, ux0 ux0Var) {
        this.a = ux0Var;
        this.b = webviewt;
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zzd.zzed("Click string is empty, not proceeding.");
            return "";
        }
        d23 d23VarL = this.b.l();
        if (d23VarL == null) {
            zzd.zzed("Signal utils is empty, ignoring.");
            return "";
        }
        ws2 ws2Var = d23VarL.b;
        if (ws2Var == null) {
            zzd.zzed("Signals object is empty, ignoring.");
            return "";
        }
        if (this.b.getContext() != null) {
            return ws2Var.zza(this.b.getContext(), str, this.b.getView(), this.b.a());
        }
        zzd.zzed("Context is null, ignoring.");
        return "";
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            is0.zzez("URL is empty, ignoring message");
        } else {
            zzj.zzegq.post(new Runnable(this, str) { // from class: wx0
                public final vx0 e;
                public final String f;

                {
                    this.e = this;
                    this.f = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vx0 vx0Var = this.e;
                    String str2 = this.f;
                    ux0 ux0Var = vx0Var.a;
                    Uri uri = Uri.parse(str2);
                    hy0 hy0VarI = ux0Var.a.I();
                    if (hy0VarI == null) {
                        is0.zzex("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        ((ww0) hy0VarI).X(uri);
                    }
                }
            });
        }
    }
}
