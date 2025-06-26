package defpackage;

import java.security.cert.Certificate;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* loaded from: classes2.dex */
public final class v37 {
    public static final Logger d = Logger.getLogger(v37.class.getName());
    public static final v37 e = new v37();
    public final ConcurrentNavigableMap<Long, x37<Object>> a;
    public final ConcurrentMap<Long, x37<Object>> b;
    public final ConcurrentMap<Long, x37<Object>> c;

    public static final class b {
        public b(SSLSession sSLSession) throws SSLPeerUnverifiedException {
            sSLSession.getCipherSuite();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            if (localCertificates != null) {
                Certificate certificate = localCertificates[0];
            }
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                if (peerCertificates != null) {
                    Certificate certificate2 = peerCertificates[0];
                }
            } catch (SSLPeerUnverifiedException e) {
                v37.d.log(Level.FINE, String.format("Peer cert not available for peerHost=%s", sSLSession.getPeerHost()), (Throwable) e);
            }
        }
    }

    public v37() {
        new ConcurrentSkipListMap();
        this.a = new ConcurrentSkipListMap();
        this.b = new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public static <T extends x37<?>> void a(Map<Long, T> map, T t) {
        map.put(Long.valueOf(t.e().c), t);
    }

    public static <T extends x37<?>> void b(Map<Long, T> map, T t) {
        map.remove(Long.valueOf(t.e().c));
    }
}
