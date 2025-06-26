package defpackage;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes.dex */
public final class i15 extends b25 {
    public String d;
    public boolean e;
    public long f;

    public i15(j25 j25Var) {
        super(j25Var);
    }

    @Override // defpackage.b25
    public final boolean h() {
        return false;
    }

    public final Pair<String, Boolean> i(String str, ds4 ds4Var) {
        pc4.b();
        return (!this.a.g.s(null, ew4.G0) || ds4Var.d()) ? k(str) : new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    public final Pair<String, Boolean> k(String str) {
        d();
        long jB = this.a.n.b();
        String str2 = this.d;
        if (str2 != null && jB < this.f) {
            return new Pair<>(str2, Boolean.valueOf(this.e));
        }
        this.f = this.a.g.n(str, ew4.b) + jB;
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.a.a);
            if (advertisingIdInfo != null) {
                this.d = advertisingIdInfo.getId();
                this.e = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.d == null) {
                this.d = "";
            }
        } catch (Exception e) {
            this.a.a().m.b("Unable to get advertising id", e);
            this.d = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.d, Boolean.valueOf(this.e));
    }

    @Deprecated
    public final String l(String str) throws NoSuchAlgorithmException {
        d();
        String str2 = (String) k(str).first;
        MessageDigest messageDigestB = p25.B();
        if (messageDigestB == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestB.digest(str2.getBytes())));
    }
}
