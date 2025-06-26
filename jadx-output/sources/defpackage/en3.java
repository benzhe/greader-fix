package defpackage;

import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzr;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class en3 implements ValueCallback<String> {
    public final /* synthetic */ bn3 a;

    public en3(bn3 bn3Var) {
        this.a = bn3Var;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(String str) {
        String str2 = str;
        bn3 bn3Var = this.a;
        zm3 zm3Var = bn3Var.i;
        tm3 tm3Var = bn3Var.f;
        WebView webView = bn3Var.g;
        boolean z = bn3Var.h;
        Objects.requireNonNull(zm3Var);
        synchronized (tm3Var.g) {
            tm3Var.m--;
        }
        try {
            boolean z2 = true;
            if (!TextUtils.isEmpty(str2)) {
                String strOptString = new JSONObject(str2).optString(AtomText.TYPE_TEXT);
                if (zm3Var.r || TextUtils.isEmpty(webView.getTitle())) {
                    tm3Var.b(strOptString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(strOptString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(strOptString);
                    tm3Var.b(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            synchronized (tm3Var.g) {
                if (tm3Var.m != 0) {
                    z2 = false;
                }
            }
            if (z2) {
                zm3Var.h.a(tm3Var);
            }
        } catch (JSONException unused) {
            is0.zzdz("Json string may be malformed.");
        } catch (Throwable th) {
            is0.zzb("Failed to get webview content.", th);
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(th, "ContentFetchTask.processWebViewContent");
        }
    }
}
