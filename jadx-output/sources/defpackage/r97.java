package defpackage;

import defpackage.ga7;
import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public class r97 {
    public static final Logger b = Logger.getLogger(r97.class.getName());
    public static final ga7 c = ga7.d;
    public static r97 d;
    public final ga7 a;

    public static final class a extends r97 {
        public static final ca7<Socket> e = new ca7<>(null, "setUseSessionTickets", Boolean.TYPE);
        public static final ca7<Socket> f = new ca7<>(null, "setHostname", String.class);
        public static final ca7<Socket> g = new ca7<>(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
        public static final ca7<Socket> h = new ca7<>(null, "setAlpnProtocols", byte[].class);
        public static final ca7<Socket> i = new ca7<>(byte[].class, "getNpnSelectedProtocol", new Class[0]);
        public static final ca7<Socket> j = new ca7<>(null, "setNpnProtocols", byte[].class);

        public a(ga7 ga7Var) {
            super(ga7Var);
        }

        @Override // defpackage.r97
        public void a(SSLSocket sSLSocket, String str, List<ha7> list) throws NoSuchMethodException, SecurityException {
            if (str != null) {
                e.d(sSLSocket, Boolean.TRUE);
                f.d(sSLSocket, str);
            }
            Object[] objArr = {ga7.b(list)};
            if (this.a.e() == ga7.e.ALPN_AND_NPN) {
                h.e(sSLSocket, objArr);
            }
            if (this.a.e() == ga7.e.NONE) {
                throw new RuntimeException("We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS");
            }
            j.e(sSLSocket, objArr);
        }

        @Override // defpackage.r97
        public String b(SSLSocket sSLSocket) {
            if (this.a.e() == ga7.e.ALPN_AND_NPN) {
                try {
                    byte[] bArr = (byte[]) g.e(sSLSocket, new Object[0]);
                    if (bArr != null) {
                        return new String(bArr, ja7.b);
                    }
                } catch (Exception e2) {
                    r97.b.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e2);
                }
            }
            if (this.a.e() == ga7.e.NONE) {
                return null;
            }
            try {
                byte[] bArr2 = (byte[]) i.e(sSLSocket, new Object[0]);
                if (bArr2 != null) {
                    return new String(bArr2, ja7.b);
                }
                return null;
            } catch (Exception e3) {
                r97.b.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e3);
                return null;
            }
        }

        @Override // defpackage.r97
        public String c(SSLSocket sSLSocket, String str, List<ha7> list) throws IOException {
            String strB = b(sSLSocket);
            return strB == null ? super.c(sSLSocket, str, list) : strB;
        }
    }

    static {
        boolean z;
        ClassLoader classLoader = r97.class.getClassLoader();
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e) {
            b.log(Level.FINE, "Unable to find Conscrypt. Skipping", (Throwable) e);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e2) {
                b.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e2);
                z = false;
            }
        }
        z = true;
        d = z ? new a(c) : new r97(c);
    }

    public r97(ga7 ga7Var) {
        c50.A(ga7Var, "platform");
        this.a = ga7Var;
    }

    public void a(SSLSocket sSLSocket, String str, List<ha7> list) {
        this.a.c(sSLSocket, str, list);
    }

    public String b(SSLSocket sSLSocket) {
        return this.a.d(sSLSocket);
    }

    public String c(SSLSocket sSLSocket, String str, List<ha7> list) throws IOException {
        if (list != null) {
            a(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String strB = b(sSLSocket);
            if (strB != null) {
                return strB;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } finally {
            this.a.a(sSLSocket);
        }
    }
}
