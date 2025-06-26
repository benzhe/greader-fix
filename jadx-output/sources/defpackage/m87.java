package defpackage;

import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class m87 implements t47 {
    public static final Logger d = Logger.getLogger(m87.class.getName());
    public static final c e = new a();
    public static final qd5<ProxySelector> f = new b();
    public final qd5<ProxySelector> a;
    public final c b;
    public final InetSocketAddress c;

    public class a implements c {
        @Override // m87.c
        public PasswordAuthentication a(String str, InetAddress inetAddress, int i, String str2, String str3, String str4) {
            URL url;
            try {
                url = new URL(str2, str, i, "");
            } catch (MalformedURLException unused) {
                m87.d.log(Level.WARNING, String.format("failed to create URL for Authenticator: %s %s", str2, str));
                url = null;
            }
            return Authenticator.requestPasswordAuthentication(str, inetAddress, i, str2, str3, null, url, Authenticator.RequestorType.PROXY);
        }
    }

    public class b implements qd5<ProxySelector> {
        @Override // defpackage.qd5
        public ProxySelector get() {
            return ProxySelector.getDefault();
        }
    }

    public interface c {
        PasswordAuthentication a(String str, InetAddress inetAddress, int i, String str2, String str3, String str4);
    }

    public m87() {
        qd5<ProxySelector> qd5Var = f;
        c cVar = e;
        String str = System.getenv("GRPC_PROXY_EXP");
        Objects.requireNonNull(qd5Var);
        this.a = qd5Var;
        Objects.requireNonNull(cVar);
        this.b = cVar;
        if (str == null) {
            this.c = null;
            return;
        }
        String[] strArrSplit = str.split(":", 2);
        int i = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 80;
        d.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
        this.c = new InetSocketAddress(strArrSplit[0], i);
    }

    @Override // defpackage.t47
    public s47 a(SocketAddress socketAddress) throws IOException {
        if (!(socketAddress instanceof InetSocketAddress)) {
            return null;
        }
        InetSocketAddress inetSocketAddress = this.c;
        if (inetSocketAddress != null) {
            int i = u37.i;
            c50.A(inetSocketAddress, "proxyAddress");
            InetSocketAddress inetSocketAddress2 = (InetSocketAddress) socketAddress;
            c50.A(inetSocketAddress2, "targetAddress");
            return new u37(inetSocketAddress, inetSocketAddress2, null, null, null);
        }
        InetSocketAddress inetSocketAddress3 = (InetSocketAddress) socketAddress;
        try {
            try {
                URI uri = new URI("https", null, u67.c(inetSocketAddress3), inetSocketAddress3.getPort(), null, null, null);
                ProxySelector proxySelector = this.a.get();
                if (proxySelector == null) {
                    d.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                    return null;
                }
                List<Proxy> listSelect = proxySelector.select(uri);
                if (listSelect.size() > 1) {
                    d.warning("More than 1 proxy detected, gRPC will select the first one");
                }
                Proxy proxy = listSelect.get(0);
                if (proxy.type() == Proxy.Type.DIRECT) {
                    return null;
                }
                InetSocketAddress inetSocketAddress4 = (InetSocketAddress) proxy.address();
                PasswordAuthentication passwordAuthenticationA = this.b.a(u67.c(inetSocketAddress4), inetSocketAddress4.getAddress(), inetSocketAddress4.getPort(), "https", "", null);
                InetSocketAddress inetSocketAddress5 = inetSocketAddress4.isUnresolved() ? new InetSocketAddress(InetAddress.getByName(inetSocketAddress4.getHostName()), inetSocketAddress4.getPort()) : inetSocketAddress4;
                int i2 = u37.i;
                c50.A(inetSocketAddress3, "targetAddress");
                c50.A(inetSocketAddress5, "proxyAddress");
                if (passwordAuthenticationA == null) {
                    return new u37(inetSocketAddress5, inetSocketAddress3, null, null, null);
                }
                return new u37(inetSocketAddress5, inetSocketAddress3, passwordAuthenticationA.getUserName(), passwordAuthenticationA.getPassword() != null ? new String(passwordAuthenticationA.getPassword()) : null, null);
            } catch (URISyntaxException e2) {
                d.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e2);
                return null;
            }
        } catch (Throwable th) {
            d.log(Level.WARNING, "Failed to get host for proxy lookup, proceeding without proxy", th);
            return null;
        }
    }
}
