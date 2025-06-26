package okhttp3;

import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import defpackage.n56;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/* loaded from: classes2.dex */
public interface Dns {
    public static final Companion Companion = new Companion(null);
    public static final Dns SYSTEM = new Companion.DnsSystem();

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = null;

        public static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            public List<InetAddress> lookup(String str) throws UnknownHostException {
                im7.e(str, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    im7.d(allByName, "InetAddress.getAllByName(hostname)");
                    return n56.v2(allByName);
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException(jo.n("Broken system behaviour for dns lookup of ", str));
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    List<InetAddress> lookup(String str) throws UnknownHostException;
}
