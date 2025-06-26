package okhttp3;

import defpackage.gm7;
import defpackage.im7;
import java.io.IOException;
import okhttp3.internal.authenticator.JavaNetAuthenticator;

/* loaded from: classes2.dex */
public interface Authenticator {
    public static final Companion Companion = new Companion(null);
    public static final Authenticator NONE = new Companion.AuthenticatorNone();
    public static final Authenticator JAVA_NET_AUTHENTICATOR = new JavaNetAuthenticator(null, 1, null);

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = null;

        public static final class AuthenticatorNone implements Authenticator {
            @Override // okhttp3.Authenticator
            public Request authenticate(Route route, Response response) {
                im7.e(response, "response");
                return null;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    Request authenticate(Route route, Response response) throws IOException;
}
