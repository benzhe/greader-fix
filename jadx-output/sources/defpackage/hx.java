package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.zzl;
import java.util.Objects;

/* loaded from: classes.dex */
public final class hx extends WebViewClient {
    public final /* synthetic */ zzl a;

    public hx(zzl zzlVar) {
        this.a = zzlVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        us3 us3Var = this.a.k;
        if (us3Var != null) {
            try {
                us3Var.onAdFailedToLoad(0);
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int iK = 0;
        if (str.startsWith(this.a.X6())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            us3 us3Var = this.a.k;
            if (us3Var != null) {
                try {
                    us3Var.onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
            this.a.W6(0);
            return true;
        }
        if (str.startsWith("gmsg://scriptLoadFailed")) {
            us3 us3Var2 = this.a.k;
            if (us3Var2 != null) {
                try {
                    us3Var2.onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    is0.zze("#007 Could not call remote method.", e2);
                }
            }
            this.a.W6(0);
            return true;
        }
        if (str.startsWith("gmsg://adResized")) {
            us3 us3Var3 = this.a.k;
            if (us3Var3 != null) {
                try {
                    us3Var3.onAdLoaded();
                } catch (RemoteException e3) {
                    is0.zze("#007 Could not call remote method.", e3);
                }
            }
            zzl zzlVar = this.a;
            Objects.requireNonNull(zzlVar);
            String queryParameter = Uri.parse(str).getQueryParameter("height");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    zr0 zr0Var = os3.j.a;
                    iK = zr0.k(zzlVar.h, Integer.parseInt(queryParameter));
                } catch (NumberFormatException unused) {
                }
            }
            this.a.W6(iK);
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        us3 us3Var4 = this.a.k;
        if (us3Var4 != null) {
            try {
                us3Var4.onAdLeftApplication();
            } catch (RemoteException e4) {
                is0.zze("#007 Could not call remote method.", e4);
            }
        }
        zzl zzlVar2 = this.a;
        if (zzlVar2.l != null) {
            Uri uriA = Uri.parse(str);
            try {
                uriA = zzlVar2.l.a(uriA, zzlVar2.h, null, null);
            } catch (f13 e5) {
                is0.zzd("Unable to process ad data", e5);
            }
            str = uriA.toString();
        }
        zzl zzlVar3 = this.a;
        Objects.requireNonNull(zzlVar3);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzlVar3.h.startActivity(intent);
        return true;
    }
}
