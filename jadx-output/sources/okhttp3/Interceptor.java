package okhttp3;

import defpackage.im7;
import defpackage.pl7;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;

/* loaded from: classes2.dex */
public interface Interceptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    public interface Chain {
        Call call();

        int connectTimeoutMillis();

        Connection connection();

        Response proceed(Request request) throws IOException;

        int readTimeoutMillis();

        Request request();

        Chain withConnectTimeout(int i, TimeUnit timeUnit);

        Chain withReadTimeout(int i, TimeUnit timeUnit);

        Chain withWriteTimeout(int i, TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final Interceptor invoke(final pl7<? super Chain, Response> pl7Var) {
            im7.e(pl7Var, "block");
            return new Interceptor() { // from class: okhttp3.Interceptor$Companion$invoke$1
                @Override // okhttp3.Interceptor
                public final Response intercept(Interceptor.Chain chain) {
                    im7.e(chain, "it");
                    return (Response) pl7Var.invoke(chain);
                }
            };
        }
    }

    Response intercept(Chain chain) throws IOException;
}
