package okhttp3;

import defpackage.gm7;
import defpackage.hk7;
import defpackage.im7;
import java.util.List;

/* loaded from: classes2.dex */
public interface CookieJar {
    public static final Companion Companion = new Companion(null);
    public static final CookieJar NO_COOKIES = new Companion.NoCookies();

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = null;

        public static final class NoCookies implements CookieJar {
            @Override // okhttp3.CookieJar
            public List<Cookie> loadForRequest(HttpUrl httpUrl) {
                im7.e(httpUrl, "url");
                return hk7.e;
            }

            @Override // okhttp3.CookieJar
            public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
                im7.e(httpUrl, "url");
                im7.e(list, "cookies");
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    List<Cookie> loadForRequest(HttpUrl httpUrl);

    void saveFromResponse(HttpUrl httpUrl, List<Cookie> list);
}
