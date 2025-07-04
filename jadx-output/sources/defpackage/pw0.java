package defpackage;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zza;

/* loaded from: classes.dex */
public final class pw0 extends WebChromeClient {
    public final xw0 a;

    public pw0(xw0 xw0Var) {
        this.a = xw0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Context a(WebView webView) {
        if (!(webView instanceof xw0)) {
            return webView.getContext();
        }
        xw0 xw0Var = (xw0) webView;
        Activity activityA = xw0Var.a();
        return activityA != null ? activityA : xw0Var.getContext();
    }

    public final boolean b(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        xw0 xw0Var;
        zza zzaVar;
        try {
            xw0Var = this.a;
        } catch (WindowManager.BadTokenException e) {
            is0.zzd("Fail to display Dialog.", e);
        }
        if (xw0Var != null && xw0Var.I() != null && ((ww0) this.a.I()).u != null && (zzaVar = ((ww0) this.a.I()).u) != null && !zzaVar.zzkc()) {
            StringBuilder sb = new StringBuilder(str.length() + 11 + String.valueOf(str3).length());
            sb.append("window.");
            sb.append(str);
            sb.append("('");
            sb.append(str3);
            sb.append("')");
            zzaVar.zzbk(sb.toString());
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str2);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            textView.setText(str3);
            EditText editText = new EditText(context);
            editText.setText(str4);
            linearLayout.addView(textView);
            linearLayout.addView(editText);
            builder.setView(linearLayout).setPositiveButton(R.string.ok, new vw0(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new sw0(jsPromptResult)).setOnCancelListener(new tw0(jsPromptResult)).create().show();
        } else {
            builder.setMessage(str3).setPositiveButton(R.string.ok, new qw0(jsResult)).setNegativeButton(R.string.cancel, new rw0(jsResult)).setOnCancelListener(new ow0(jsResult)).create().show();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof xw0)) {
            is0.zzez("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        zze zzeVarN0 = ((xw0) webView).n0();
        if (zzeVarN0 == null) {
            is0.zzez("Tried to close an AdWebView not associated with an overlay.");
        } else {
            zzeVarN0.close();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage = consoleMessage.message();
        String strSourceId = consoleMessage.sourceId();
        int iLineNumber = consoleMessage.lineNumber();
        StringBuilder sbY = jo.y(jo.x(strSourceId, jo.x(strMessage, 19)), "JS: ", strMessage, " (", strSourceId);
        sbY.append(":");
        sbY.append(iLineNumber);
        sbY.append(")");
        String string = sbY.toString();
        if (string.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = uw0.a[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            is0.zzex(string);
        } else if (i == 2) {
            is0.zzez(string);
        } else if (i == 3 || i == 4 || i != 5) {
            is0.zzey(string);
        } else {
            is0.zzdz(string);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        if (this.a.T() != null) {
            webView2.setWebViewClient(this.a.T());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j != 0) {
            if (j2 == 0) {
                j = Math.min(Math.min(PlaybackStateCompat.ACTION_PREPARE_FROM_URI, j4) + j, 1048576L);
            } else if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        } else if (j2 > j4 || j2 > 1048576) {
            j2 = 0;
        }
        quotaUpdater.updateQuota(j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    @Override // android.webkit.WebChromeClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onGeolocationPermissionsShowPrompt(java.lang.String r4, android.webkit.GeolocationPermissions.Callback r5) {
        /*
            r3 = this;
            if (r5 == 0) goto L2c
            com.google.android.gms.ads.internal.zzr.zzkv()
            xw0 r0 = r3.a
            android.content.Context r0 = r0.getContext()
            java.lang.String r1 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r1)
            r1 = 1
            if (r0 != 0) goto L28
            com.google.android.gms.ads.internal.zzr.zzkv()
            xw0 r0 = r3.a
            android.content.Context r0 = r0.getContext()
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r2)
            if (r0 == 0) goto L26
            goto L28
        L26:
            r0 = 0
            goto L29
        L28:
            r0 = 1
        L29:
            r5.invoke(r4, r0, r1)
        L2c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pw0.onGeolocationPermissionsShowPrompt(java.lang.String, android.webkit.GeolocationPermissions$Callback):void");
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        zze zzeVarN0 = this.a.n0();
        if (zzeVarN0 == null) {
            is0.zzez("Could not get ad overlay when hiding custom view.");
        } else {
            zzeVarN0.zzwf();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return b(a(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return b(a(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return b(a(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return b(a(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        long j3 = 5242880 - j2;
        long j4 = j + PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        if (j3 < j4) {
            quotaUpdater.updateQuota(0L);
        } else {
            quotaUpdater.updateQuota(j4);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }

    @Override // android.webkit.WebChromeClient
    @Deprecated
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        zze zzeVarN0 = this.a.n0();
        if (zzeVarN0 == null) {
            is0.zzez("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        } else {
            zzeVarN0.zza(view, customViewCallback);
            zzeVarN0.setRequestedOrientation(i);
        }
    }
}
