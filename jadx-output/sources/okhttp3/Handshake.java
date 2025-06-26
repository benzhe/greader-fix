package okhttp3;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.ek7;
import defpackage.el7;
import defpackage.gm7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jm7;
import defpackage.jo;
import defpackage.n56;
import defpackage.oj7;
import defpackage.uj7;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final class Handshake {
    public static final Companion Companion = new Companion(null);
    private final CipherSuite cipherSuite;
    private final List<Certificate> localCertificates;
    private final oj7 peerCertificates$delegate;
    private final TlsVersion tlsVersion;

    public static final class Companion {
        private Companion() {
        }

        private final List<Certificate> toImmutableList(Certificate[] certificateArr) {
            return certificateArr != null ? Util.immutableListOf((Certificate[]) Arrays.copyOf(certificateArr, certificateArr.length)) : hk7.e;
        }

        /* renamed from: -deprecated_get, reason: not valid java name */
        public final Handshake m51deprecated_get(SSLSession sSLSession) throws IOException {
            im7.e(sSLSession, "sslSession");
            return get(sSLSession);
        }

        public final Handshake get(SSLSession sSLSession) throws IOException {
            List<Certificate> immutableList;
            im7.e(sSLSession, "$this$handshake");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null".toString());
            }
            int iHashCode = cipherSuite.hashCode();
            if (iHashCode == 1019404634 ? cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") : iHashCode == 1208658923 && cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException(jo.n("cipherSuite == ", cipherSuite));
            }
            CipherSuite cipherSuiteForJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null".toString());
            }
            if (im7.a("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            TlsVersion tlsVersionForJavaName = TlsVersion.Companion.forJavaName(protocol);
            try {
                immutableList = toImmutableList(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                immutableList = hk7.e;
            }
            return new Handshake(tlsVersionForJavaName, cipherSuiteForJavaName, toImmutableList(sSLSession.getLocalCertificates()), new Handshake$Companion$handshake$1(immutableList));
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }

        public final Handshake get(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, List<? extends Certificate> list2) {
            im7.e(tlsVersion, "tlsVersion");
            im7.e(cipherSuite, "cipherSuite");
            im7.e(list, "peerCertificates");
            im7.e(list2, "localCertificates");
            return new Handshake(tlsVersion, cipherSuite, Util.toImmutableList(list2), new Handshake$Companion$get$1(Util.toImmutableList(list)));
        }
    }

    /* renamed from: okhttp3.Handshake$peerCertificates$2, reason: invalid class name */
    public static final class AnonymousClass2 extends jm7 implements el7<List<? extends Certificate>> {
        public final /* synthetic */ el7 $peerCertificatesFn;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(el7 el7Var) {
            super(0);
            this.$peerCertificatesFn = el7Var;
        }

        @Override // defpackage.el7
        public final List<? extends Certificate> invoke() {
            try {
                return (List) this.$peerCertificatesFn.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return hk7.e;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, el7<? extends List<? extends Certificate>> el7Var) {
        im7.e(tlsVersion, "tlsVersion");
        im7.e(cipherSuite, "cipherSuite");
        im7.e(list, "localCertificates");
        im7.e(el7Var, "peerCertificatesFn");
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = list;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(el7Var);
        im7.e(anonymousClass2, "initializer");
        this.peerCertificates$delegate = new uj7(anonymousClass2, null, 2);
    }

    public static final Handshake get(SSLSession sSLSession) throws IOException {
        return Companion.get(sSLSession);
    }

    public static final Handshake get(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, List<? extends Certificate> list2) {
        return Companion.get(tlsVersion, cipherSuite, list, list2);
    }

    private final String getName(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        im7.d(type, NSRSS20.ENC_TYPE);
        return type;
    }

    /* renamed from: -deprecated_cipherSuite, reason: not valid java name */
    public final CipherSuite m45deprecated_cipherSuite() {
        return this.cipherSuite;
    }

    /* renamed from: -deprecated_localCertificates, reason: not valid java name */
    public final List<Certificate> m46deprecated_localCertificates() {
        return this.localCertificates;
    }

    /* renamed from: -deprecated_localPrincipal, reason: not valid java name */
    public final Principal m47deprecated_localPrincipal() {
        return localPrincipal();
    }

    /* renamed from: -deprecated_peerCertificates, reason: not valid java name */
    public final List<Certificate> m48deprecated_peerCertificates() {
        return peerCertificates();
    }

    /* renamed from: -deprecated_peerPrincipal, reason: not valid java name */
    public final Principal m49deprecated_peerPrincipal() {
        return peerPrincipal();
    }

    /* renamed from: -deprecated_tlsVersion, reason: not valid java name */
    public final TlsVersion m50deprecated_tlsVersion() {
        return this.tlsVersion;
    }

    public final CipherSuite cipherSuite() {
        return this.cipherSuite;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.tlsVersion == this.tlsVersion && im7.a(handshake.cipherSuite, this.cipherSuite) && im7.a(handshake.peerCertificates(), peerCertificates()) && im7.a(handshake.localCertificates, this.localCertificates)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.localCertificates.hashCode() + ((peerCertificates().hashCode() + ((this.cipherSuite.hashCode() + ((this.tlsVersion.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    public final Principal localPrincipal() {
        Object objG = ek7.g(this.localCertificates);
        if (!(objG instanceof X509Certificate)) {
            objG = null;
        }
        X509Certificate x509Certificate = (X509Certificate) objG;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    public final List<Certificate> peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    public final Principal peerPrincipal() {
        Object objG = ek7.g(peerCertificates());
        if (!(objG instanceof X509Certificate)) {
            objG = null;
        }
        X509Certificate x509Certificate = (X509Certificate) objG;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    public final TlsVersion tlsVersion() {
        return this.tlsVersion;
    }

    public String toString() {
        List<Certificate> listPeerCertificates = peerCertificates();
        ArrayList arrayList = new ArrayList(n56.x(listPeerCertificates, 10));
        Iterator<T> it = listPeerCertificates.iterator();
        while (it.hasNext()) {
            arrayList.add(getName((Certificate) it.next()));
        }
        String string = arrayList.toString();
        StringBuilder sbB = jo.B("Handshake{", "tlsVersion=");
        sbB.append(this.tlsVersion);
        sbB.append(' ');
        sbB.append("cipherSuite=");
        sbB.append(this.cipherSuite);
        sbB.append(' ');
        sbB.append("peerCertificates=");
        sbB.append(string);
        sbB.append(' ');
        sbB.append("localCertificates=");
        List<Certificate> list = this.localCertificates;
        ArrayList arrayList2 = new ArrayList(n56.x(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(getName((Certificate) it2.next()));
        }
        sbB.append(arrayList2);
        sbB.append('}');
        return sbB.toString();
    }
}
