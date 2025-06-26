package defpackage;

import android.net.NetworkInfo;
import android.os.Handler;
import defpackage.e27;
import defpackage.j27;
import java.io.IOException;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes2.dex */
public class c27 extends j27 {
    public final u17 a;
    public final l27 b;

    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public static final class b extends IOException {
        public final int e;
        public final int f;

        public b(int i, int i2) {
            super(jo.g("HTTP ", i));
            this.e = i;
            this.f = i2;
        }
    }

    public c27(u17 u17Var, l27 l27Var) {
        this.a = u17Var;
        this.b = l27Var;
    }

    @Override // defpackage.j27
    public boolean c(h27 h27Var) {
        String scheme = h27Var.c.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // defpackage.j27
    public int e() {
        return 2;
    }

    @Override // defpackage.j27
    public j27.a f(h27 h27Var, int i) throws IOException {
        CacheControl cacheControlBuild;
        e27.d dVar = e27.d.NETWORK;
        e27.d dVar2 = e27.d.DISK;
        if (i != 0) {
            if ((i & 4) != 0) {
                cacheControlBuild = CacheControl.FORCE_CACHE;
            } else {
                CacheControl.Builder builder = new CacheControl.Builder();
                if (!((i & 1) == 0)) {
                    builder.noCache();
                }
                if (!((i & 2) == 0)) {
                    builder.noStore();
                }
                cacheControlBuild = builder.build();
            }
        } else {
            cacheControlBuild = null;
        }
        Request.Builder builderUrl = new Request.Builder().url(h27Var.c.toString());
        if (cacheControlBuild != null) {
            builderUrl.cacheControl(cacheControlBuild);
        }
        Response responseExecute = ((d27) this.a).a.newCall(builderUrl.build()).execute();
        ResponseBody responseBodyBody = responseExecute.body();
        if (!responseExecute.isSuccessful()) {
            responseBodyBody.close();
            throw new b(responseExecute.code(), 0);
        }
        e27.d dVar3 = responseExecute.cacheResponse() == null ? dVar : dVar2;
        if (dVar3 == dVar2 && responseBodyBody.contentLength() == 0) {
            responseBodyBody.close();
            throw new a("Received response with 0 content-length header.");
        }
        if (dVar3 == dVar && responseBodyBody.contentLength() > 0) {
            l27 l27Var = this.b;
            long jContentLength = responseBodyBody.contentLength();
            Handler handler = l27Var.c;
            handler.sendMessage(handler.obtainMessage(4, Long.valueOf(jContentLength)));
        }
        return new j27.a(responseBodyBody.source(), dVar3);
    }

    @Override // defpackage.j27
    public boolean g(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // defpackage.j27
    public boolean h() {
        return true;
    }
}
