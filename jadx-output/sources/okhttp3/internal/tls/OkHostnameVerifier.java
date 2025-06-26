package okhttp3.internal.tls;

import defpackage.co7;
import defpackage.ek7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jo;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final List<String> getSubjectAltNames(X509Certificate x509Certificate, int i) throws CertificateParsingException {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return hk7.e;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && !(!im7.a(list.get(0), Integer.valueOf(i))) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return hk7.e;
        }
    }

    private final boolean verifyHostname(String str, X509Certificate x509Certificate) throws CertificateParsingException {
        Locale locale = Locale.US;
        im7.d(locale, "Locale.US");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(locale);
        im7.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 2);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (INSTANCE.verifyHostname(lowerCase, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean verifyIpAddress(String str, X509Certificate x509Certificate) throws CertificateParsingException {
        String canonicalHost = HostnamesKt.toCanonicalHost(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        if ((subjectAltNames instanceof Collection) && subjectAltNames.isEmpty()) {
            return false;
        }
        Iterator<T> it = subjectAltNames.iterator();
        while (it.hasNext()) {
            if (im7.a(canonicalHost, HostnamesKt.toCanonicalHost((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public final List<String> allSubjectAltNames(X509Certificate x509Certificate) {
        im7.e(x509Certificate, "certificate");
        return ek7.o(getSubjectAltNames(x509Certificate, 7), getSubjectAltNames(x509Certificate, 2));
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        im7.e(str, "host");
        im7.e(sSLSession, "session");
        try {
            Certificate certificate = sSLSession.getPeerCertificates()[0];
            if (certificate != null) {
                return verify(str, (X509Certificate) certificate);
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
        } catch (SSLException unused) {
            return false;
        }
    }

    public final boolean verify(String str, X509Certificate x509Certificate) {
        im7.e(str, "host");
        im7.e(x509Certificate, "certificate");
        return Util.canParseAsIpAddress(str) ? verifyIpAddress(str, x509Certificate) : verifyHostname(str, x509Certificate);
    }

    private final boolean verifyHostname(String str, String str2) {
        if (!(str == null || str.length() == 0) && !co7.A(str, ".", false, 2) && !co7.d(str, "..", false, 2)) {
            if (!(str2 == null || str2.length() == 0) && !co7.A(str2, ".", false, 2) && !co7.d(str2, "..", false, 2)) {
                if (!co7.d(str, ".", false, 2)) {
                    str = jo.n(str, ".");
                }
                if (!co7.d(str2, ".", false, 2)) {
                    str2 = jo.n(str2, ".");
                }
                Locale locale = Locale.US;
                im7.d(locale, "Locale.US");
                Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = str2.toLowerCase(locale);
                im7.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                if (!co7.b(lowerCase, "*", false, 2)) {
                    return im7.a(str, lowerCase);
                }
                if (!co7.A(lowerCase, "*.", false, 2) || co7.k(lowerCase, '*', 1, false, 4) != -1 || str.length() < lowerCase.length() || im7.a("*.", lowerCase)) {
                    return false;
                }
                String strSubstring = lowerCase.substring(1);
                im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                if (!co7.d(str, strSubstring, false, 2)) {
                    return false;
                }
                int length = str.length() - strSubstring.length();
                return length <= 0 || co7.o(str, FilenameUtils.EXTENSION_SEPARATOR, length - 1, false, 4) == -1;
            }
        }
        return false;
    }
}
