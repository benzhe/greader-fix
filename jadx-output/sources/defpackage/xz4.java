package defpackage;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public final class xz4 extends my4 {
    public xz4(rx4 rx4Var) {
        super(rx4Var);
    }

    @Override // defpackage.my4
    public final boolean f() {
        return false;
    }

    public final HttpURLConnection n(URL url) throws IOException {
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
