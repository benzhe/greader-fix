package defpackage;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public class ay0 extends ww0 {
    public ay0(xw0 xw0Var, ep3 ep3Var, boolean z) {
        super(xw0Var, ep3Var, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebResourceResponse Z(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof xw0)) {
            is0.zzez("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        xw0 xw0Var = (xw0) webView;
        np0 np0Var = this.w;
        if (np0Var != null) {
            np0Var.c(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return U(str, map);
        }
        if (xw0Var.I() != null) {
            final ww0 ww0Var = (ww0) xw0Var.I();
            synchronized (ww0Var.h) {
                ww0Var.o = false;
                ww0Var.p = true;
                ms0.e.execute(new Runnable(ww0Var) { // from class: zw0
                    public final ww0 e;

                    {
                        this.e = ww0Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws JSONException {
                        ww0 ww0Var2 = this.e;
                        ww0Var2.e.G();
                        zze zzeVarN0 = ww0Var2.e.n0();
                        if (zzeVarN0 != null) {
                            zzeVarN0.zzwi();
                        }
                    }
                });
            }
        }
        if (xw0Var.c().b()) {
            str2 = (String) os3.j.f.a(y40.H);
        } else if (xw0Var.E0()) {
            str2 = (String) os3.j.f.a(y40.G);
        } else {
            str2 = (String) os3.j.f.a(y40.F);
        }
        zzr.zzkv();
        return zzj.zzd(xw0Var.getContext(), xw0Var.b().e, str2);
    }
}
