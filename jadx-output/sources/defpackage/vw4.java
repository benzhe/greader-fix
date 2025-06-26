package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public final class vw4 extends b25 {
    public vw4(j25 j25Var) {
        super(j25Var);
    }

    @Override // defpackage.b25
    public final boolean h() {
        return false;
    }

    public final boolean i() {
        NetworkInfo activeNetworkInfo;
        f();
        try {
            activeNetworkInfo = ((ConnectivityManager) this.a.a.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final HttpURLConnection k(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain HTTP connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setDefaultUseCaches(false);
        cs4 cs4Var = this.a.g;
        httpURLConnection.setConnectTimeout(60000);
        cs4 cs4Var2 = this.a.g;
        httpURLConnection.setReadTimeout(61000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }
}
