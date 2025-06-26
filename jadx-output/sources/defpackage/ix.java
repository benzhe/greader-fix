package defpackage;

import android.net.Uri;
import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzl;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class ix extends AsyncTask<Void, Void, String> {
    public final /* synthetic */ zzl a;

    public ix(zzl zzlVar, hx hxVar) {
        this.a = zzlVar;
    }

    @Override // android.os.AsyncTask
    public final String doInBackground(Void[] voidArr) {
        try {
            zzl zzlVar = this.a;
            zzlVar.l = zzlVar.g.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            is0.zzd("", e);
        }
        zzl zzlVar2 = this.a;
        Objects.requireNonNull(zzlVar2);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(i60.d.a());
        builder.appendQueryParameter("query", zzlVar2.i.d);
        builder.appendQueryParameter("pubId", zzlVar2.i.b);
        Map<String, String> map = zzlVar2.i.c;
        for (String str : map.keySet()) {
            builder.appendQueryParameter(str, map.get(str));
        }
        Uri uriBuild = builder.build();
        d23 d23Var = zzlVar2.l;
        if (d23Var != null) {
            try {
                uriBuild = d23Var.b(uriBuild, d23Var.b.zzb(zzlVar2.h));
            } catch (f13 e2) {
                is0.zzd("Unable to process ad data", e2);
            }
        }
        String strX6 = zzlVar2.X6();
        String encodedQuery = uriBuild.getEncodedQuery();
        return jo.c(jo.x(encodedQuery, jo.x(strX6, 1)), strX6, "#", encodedQuery);
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        WebView webView = this.a.j;
        if (webView == null || str2 == null) {
            return;
        }
        webView.loadUrl(str2);
    }
}
