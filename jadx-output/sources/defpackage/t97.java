package defpackage;

import defpackage.z97;
import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public final class t97 {
    public static final List<ha7> a = Collections.unmodifiableList(Arrays.asList(ha7.HTTP_2));

    public static SSLSocket a(SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, Socket socket, String str, int i, z97 z97Var) throws IOException {
        c50.A(sSLSocketFactory, "sslSocketFactory");
        c50.A(socket, "socket");
        c50.A(z97Var, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i, true);
        String[] strArr = z97Var.b != null ? (String[]) ja7.a(String.class, z97Var.b, sSLSocket.getEnabledCipherSuites()) : null;
        String[] strArr2 = (String[]) ja7.a(String.class, z97Var.c, sSLSocket.getEnabledProtocols());
        z97.b bVar = new z97.b(z97Var);
        if (!bVar.a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArr == null) {
            bVar.b = null;
        } else {
            bVar.b = (String[]) strArr.clone();
        }
        if (!bVar.a) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArr2 == null) {
            bVar.c = null;
        } else {
            bVar.c = (String[]) strArr2.clone();
        }
        z97 z97VarA = bVar.a();
        sSLSocket.setEnabledProtocols(z97VarA.c);
        String[] strArr3 = z97VarA.b;
        if (strArr3 != null) {
            sSLSocket.setEnabledCipherSuites(strArr3);
        }
        String strC = r97.d.c(sSLSocket, str, z97Var.d ? a : null);
        List<ha7> list = a;
        ha7 ha7Var = ha7.HTTP_1_0;
        if (!strC.equals("http/1.0")) {
            ha7Var = ha7.HTTP_1_1;
            if (!strC.equals("http/1.1")) {
                ha7Var = ha7.HTTP_2;
                if (!strC.equals("h2")) {
                    ha7Var = ha7.SPDY_3;
                    if (!strC.equals("spdy/3.1")) {
                        throw new IOException(jo.n("Unexpected protocol: ", strC));
                    }
                }
            }
        }
        c50.F(list.contains(ha7Var), "Only " + list + " are supported, but negotiated protocol is %s", strC);
        if (hostnameVerifier == null) {
            hostnameVerifier = ba7.a;
        }
        if (hostnameVerifier.verify((str.startsWith("[") && str.endsWith("]")) ? str.substring(1, str.length() - 1) : str, sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException(jo.n("Cannot verify hostname: ", str));
    }
}
