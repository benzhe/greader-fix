package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import defpackage.gc6;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* loaded from: classes.dex */
public class dc6 {
    public static final long i = TimeUnit.HOURS.toSeconds(12);
    public static final int[] j = {2, 4, 8, 16, 32, 64, 128, RecyclerView.a0.FLAG_TMP_DETACHED};
    public final z96 a;
    public final bf5 b;
    public final Executor c;
    public final Random d;
    public final xb6 e;
    public final ConfigFetchHttpClient f;
    public final gc6 g;
    public final Map<String, String> h;

    public static class a {
        public final int a;
        public final yb6 b;
        public final String c;

        public a(Date date, int i, yb6 yb6Var, String str) {
            this.a = i;
            this.b = yb6Var;
            this.c = str;
        }
    }

    public dc6(z96 z96Var, bf5 bf5Var, Executor executor, b20 b20Var, Random random, xb6 xb6Var, ConfigFetchHttpClient configFetchHttpClient, gc6 gc6Var, Map<String, String> map) {
        this.a = z96Var;
        this.b = bf5Var;
        this.c = executor;
        this.d = random;
        this.e = xb6Var;
        this.f = configFetchHttpClient;
        this.g = gc6Var;
        this.h = map;
    }

    public final a a(String str, String str2, Date date) throws lb6, JSONException, IOException {
        String str3;
        try {
            HttpURLConnection httpURLConnectionB = this.f.b();
            ConfigFetchHttpClient configFetchHttpClient = this.f;
            HashMap map = new HashMap();
            bf5 bf5Var = this.b;
            if (bf5Var != null) {
                for (Map.Entry<String, Object> entry : bf5Var.a(false).entrySet()) {
                    map.put(entry.getKey(), entry.getValue().toString());
                }
            }
            a aVarFetch = configFetchHttpClient.fetch(httpURLConnectionB, str, str2, map, this.g.a.getString("last_fetch_etag", null), this.h, date);
            String str4 = aVarFetch.c;
            if (str4 != null) {
                gc6 gc6Var = this.g;
                synchronized (gc6Var.b) {
                    gc6Var.a.edit().putString("last_fetch_etag", str4).apply();
                }
            }
            this.g.b(0, gc6.e);
            return aVarFetch;
        } catch (nb6 e) {
            int i2 = e.e;
            if (i2 == 429 || i2 == 502 || i2 == 503 || i2 == 504) {
                int i3 = this.g.a().a + 1;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                int[] iArr = j;
                this.g.b(i3, new Date(date.getTime() + (timeUnit.toMillis(iArr[Math.min(i3, iArr.length) - 1]) / 2) + this.d.nextInt((int) r3)));
            }
            gc6.a aVarA = this.g.a();
            int i4 = e.e;
            if (aVarA.a > 1 || i4 == 429) {
                throw new mb6(aVarA.b.getTime());
            }
            if (i4 == 401) {
                str3 = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
            } else if (i4 == 403) {
                str3 = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
            } else {
                if (i4 == 429) {
                    throw new kb6("The throttled response from the server was not handled correctly by the FRC SDK.");
                }
                if (i4 != 500) {
                    switch (i4) {
                        case 502:
                        case 503:
                        case 504:
                            str3 = "The server is unavailable. Please try again later.";
                            break;
                        default:
                            str3 = "The server returned an unexpected error.";
                            break;
                    }
                } else {
                    str3 = "There was an internal server error.";
                }
            }
            throw new nb6(e.e, jo.n("Fetch failed: ", str3), e);
        }
    }
}
