package okhttp3;

import defpackage.bt7;
import defpackage.co7;
import defpackage.ek7;
import defpackage.el7;
import defpackage.gm7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jm7;
import defpackage.jo;
import defpackage.n56;
import defpackage.vm7;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class CertificatePinner {
    public static final Companion Companion = new Companion(null);
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final Builder add(String str, String... strArr) {
            im7.e(str, "pattern");
            im7.e(strArr, "pins");
            for (String str2 : strArr) {
                this.pins.add(new Pin(str, str2));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final CertificatePinner build() {
            return new CertificatePinner(ek7.z(this.pins), null, 2, 0 == true ? 1 : 0);
        }

        public final List<Pin> getPins() {
            return this.pins;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public final String pin(Certificate certificate) {
            im7.e(certificate, "certificate");
            if (!(certificate instanceof X509Certificate)) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
            }
            StringBuilder sbZ = jo.z("sha256/");
            sbZ.append(sha256Hash((X509Certificate) certificate).i());
            return sbZ.toString();
        }

        public final bt7 sha1Hash(X509Certificate x509Certificate) {
            im7.e(x509Certificate, "$this$sha1Hash");
            bt7.a aVar = bt7.i;
            PublicKey publicKey = x509Certificate.getPublicKey();
            im7.d(publicKey, "publicKey");
            byte[] encoded = publicKey.getEncoded();
            im7.d(encoded, "publicKey.encoded");
            return bt7.a.d(aVar, encoded, 0, 0, 3).K();
        }

        public final bt7 sha256Hash(X509Certificate x509Certificate) {
            im7.e(x509Certificate, "$this$sha256Hash");
            bt7.a aVar = bt7.i;
            PublicKey publicKey = x509Certificate.getPublicKey();
            im7.d(publicKey, "publicKey");
            byte[] encoded = publicKey.getEncoded();
            im7.d(encoded, "publicKey.encoded");
            return bt7.a.d(aVar, encoded, 0, 0, 3).k("SHA-256");
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public static final class Pin {
        private final bt7 hash;
        private final String hashAlgorithm;
        private final String pattern;

        public Pin(String str, String str2) {
            im7.e(str, "pattern");
            im7.e(str2, "pin");
            boolean z = true;
            if ((!co7.A(str, "*.", false, 2) || co7.l(str, "*", 1, false, 4) != -1) && ((!co7.A(str, "**.", false, 2) || co7.l(str, "*", 2, false, 4) != -1) && co7.l(str, "*", 0, false, 6) != -1)) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException(jo.n("Unexpected pattern: ", str).toString());
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(jo.n("Invalid pattern: ", str));
            }
            this.pattern = canonicalHost;
            if (co7.A(str2, "sha1/", false, 2)) {
                this.hashAlgorithm = "sha1";
                bt7.a aVar = bt7.i;
                String strSubstring = str2.substring(5);
                im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                bt7 bt7VarA = aVar.a(strSubstring);
                if (bt7VarA == null) {
                    throw new IllegalArgumentException(jo.n("Invalid pin hash: ", str2));
                }
                this.hash = bt7VarA;
                return;
            }
            if (!co7.A(str2, "sha256/", false, 2)) {
                throw new IllegalArgumentException(jo.n("pins must start with 'sha256/' or 'sha1/': ", str2));
            }
            this.hashAlgorithm = "sha256";
            bt7.a aVar2 = bt7.i;
            String strSubstring2 = str2.substring(7);
            im7.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            bt7 bt7VarA2 = aVar2.a(strSubstring2);
            if (bt7VarA2 == null) {
                throw new IllegalArgumentException(jo.n("Invalid pin hash: ", str2));
            }
            this.hash = bt7VarA2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return ((im7.a(this.pattern, pin.pattern) ^ true) || (im7.a(this.hashAlgorithm, pin.hashAlgorithm) ^ true) || (im7.a(this.hash, pin.hash) ^ true)) ? false : true;
        }

        public final bt7 getHash() {
            return this.hash;
        }

        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        public final String getPattern() {
            return this.pattern;
        }

        public int hashCode() {
            return this.hash.hashCode() + ((this.hashAlgorithm.hashCode() + (this.pattern.hashCode() * 31)) * 31);
        }

        public final boolean matchesCertificate(X509Certificate x509Certificate) {
            im7.e(x509Certificate, "certificate");
            String str = this.hashAlgorithm;
            int iHashCode = str.hashCode();
            if (iHashCode != -903629273) {
                if (iHashCode == 3528965 && str.equals("sha1")) {
                    return im7.a(this.hash, CertificatePinner.Companion.sha1Hash(x509Certificate));
                }
            } else if (str.equals("sha256")) {
                return im7.a(this.hash, CertificatePinner.Companion.sha256Hash(x509Certificate));
            }
            return false;
        }

        public final boolean matchesHostname(String str) {
            im7.e(str, "hostname");
            if (co7.A(this.pattern, "**.", false, 2)) {
                int length = this.pattern.length() - 3;
                int length2 = str.length() - length;
                if (!co7.q(str, str.length() - length, this.pattern, 3, length, (16 & 16) != 0 ? false : false)) {
                    return false;
                }
                if (length2 != 0 && str.charAt(length2 - 1) != '.') {
                    return false;
                }
            } else {
                if (!co7.A(this.pattern, "*.", false, 2)) {
                    return im7.a(str, this.pattern);
                }
                int length3 = this.pattern.length() - 1;
                int length4 = str.length() - length3;
                if (!co7.q(str, str.length() - length3, this.pattern, 1, length3, (16 & 16) != 0 ? false : false) || co7.o(str, FilenameUtils.EXTENSION_SEPARATOR, length4 - 1, false, 4) != -1) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return this.hashAlgorithm + '/' + this.hash.i();
        }
    }

    /* renamed from: okhttp3.CertificatePinner$check$1, reason: invalid class name */
    public static final class AnonymousClass1 extends jm7 implements el7<List<? extends X509Certificate>> {
        public final /* synthetic */ String $hostname;
        public final /* synthetic */ List $peerCertificates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(List list, String str) {
            super(0);
            this.$peerCertificates = list;
            this.$hostname = str;
        }

        @Override // defpackage.el7
        public final List<? extends X509Certificate> invoke() {
            List<Certificate> listClean;
            CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
            if (certificateChainCleaner$okhttp == null || (listClean = certificateChainCleaner$okhttp.clean(this.$peerCertificates, this.$hostname)) == null) {
                listClean = this.$peerCertificates;
            }
            ArrayList arrayList = new ArrayList(n56.x(listClean, 10));
            for (Certificate certificate : listClean) {
                Objects.requireNonNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public CertificatePinner(Set<Pin> set, CertificateChainCleaner certificateChainCleaner) {
        im7.e(set, "pins");
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static final String pin(Certificate certificate) {
        return Companion.pin(certificate);
    }

    public static final bt7 sha1Hash(X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    public static final bt7 sha256Hash(X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(String str, List<? extends Certificate> list) throws SSLPeerUnverifiedException {
        im7.e(str, "hostname");
        im7.e(list, "peerCertificates");
        check$okhttp(str, new AnonymousClass1(list, str));
    }

    public final void check$okhttp(String str, el7<? extends List<? extends X509Certificate>> el7Var) throws SSLPeerUnverifiedException {
        im7.e(str, "hostname");
        im7.e(el7Var, "cleanedPeerCertificatesFn");
        List<Pin> listFindMatchingPins = findMatchingPins(str);
        if (listFindMatchingPins.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> listInvoke = el7Var.invoke();
        for (X509Certificate x509Certificate : listInvoke) {
            bt7 bt7VarSha256Hash = null;
            bt7 bt7VarSha1Hash = null;
            for (Pin pin : listFindMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                int iHashCode = hashAlgorithm.hashCode();
                if (iHashCode != -903629273) {
                    if (iHashCode != 3528965 || !hashAlgorithm.equals("sha1")) {
                        StringBuilder sbZ = jo.z("unsupported hashAlgorithm: ");
                        sbZ.append(pin.getHashAlgorithm());
                        throw new AssertionError(sbZ.toString());
                    }
                    if (bt7VarSha1Hash == null) {
                        bt7VarSha1Hash = Companion.sha1Hash(x509Certificate);
                    }
                    if (im7.a(pin.getHash(), bt7VarSha1Hash)) {
                        return;
                    }
                } else {
                    if (!hashAlgorithm.equals("sha256")) {
                        StringBuilder sbZ2 = jo.z("unsupported hashAlgorithm: ");
                        sbZ2.append(pin.getHashAlgorithm());
                        throw new AssertionError(sbZ2.toString());
                    }
                    if (bt7VarSha256Hash == null) {
                        bt7VarSha256Hash = Companion.sha256Hash(x509Certificate);
                    }
                    if (im7.a(pin.getHash(), bt7VarSha256Hash)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sbB = jo.B("Certificate pinning failure!", "\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : listInvoke) {
            sbB.append("\n    ");
            sbB.append(Companion.pin(x509Certificate2));
            sbB.append(": ");
            Principal subjectDN = x509Certificate2.getSubjectDN();
            im7.d(subjectDN, "element.subjectDN");
            sbB.append(subjectDN.getName());
        }
        sbB.append("\n  Pinned certificates for ");
        sbB.append(str);
        sbB.append(":");
        for (Pin pin2 : listFindMatchingPins) {
            sbB.append("\n    ");
            sbB.append(pin2);
        }
        String string = sbB.toString();
        im7.d(string, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(string);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (im7.a(certificatePinner.pins, this.pins) && im7.a(certificatePinner.certificateChainCleaner, this.certificateChainCleaner)) {
                return true;
            }
        }
        return false;
    }

    public final List<Pin> findMatchingPins(String str) {
        im7.e(str, "hostname");
        Set<Pin> set = this.pins;
        List arrayList = hk7.e;
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(str)) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                vm7.a(arrayList).add(obj);
            }
        }
        return arrayList;
    }

    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    public final Set<Pin> getPins() {
        return this.pins;
    }

    public int hashCode() {
        int iHashCode = (this.pins.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    public final CertificatePinner withCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        im7.e(certificateChainCleaner, "certificateChainCleaner");
        return im7.a(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i, gm7 gm7Var) {
        this(set, (i & 2) != 0 ? null : certificateChainCleaner);
    }

    public final void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        im7.e(str, "hostname");
        im7.e(certificateArr, "peerCertificates");
        check(str, n56.v2(certificateArr));
    }
}
