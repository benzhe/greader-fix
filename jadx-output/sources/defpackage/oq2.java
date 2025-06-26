package defpackage;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class oq2 {
    public static final byte[] a = {Base64.PAD, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};
    public static final byte[] b = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    public final boolean a(File file) throws GeneralSecurityException {
        try {
            X509Certificate[][] x509CertificateArrF2 = c50.F2(file.getAbsolutePath());
            if (x509CertificateArrF2.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(x509CertificateArrF2[0][0].getEncoded());
            return Arrays.equals(a, bArrDigest) || (!"user".equals(Build.TYPE) && Arrays.equals(b, bArrDigest));
        } catch (IOException e) {
            e = e;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (RuntimeException e2) {
            e = e2;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (td3 e3) {
            throw new GeneralSecurityException("Package is not signed", e3);
        }
    }
}
