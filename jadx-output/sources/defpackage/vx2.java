package defpackage;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes.dex */
public final class vx2 {
    public static final String a;
    public static final String b;

    @Deprecated
    public static final z23 c;

    static {
        new yx2();
        a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
        new gy2();
        b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
        new ly2();
        new fy2();
        new ry2();
        new vy2();
        new my2();
        new wy2();
        c = z23.y();
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() throws GeneralSecurityException {
        boolean z;
        z23 z23Var = uz2.a;
        px2.e(new qz2());
        px2.e(new pz2());
        px2.f(new xz2());
        px2.e(new yx2());
        px2.e(new fy2());
        px2.e(new gy2());
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            z = true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            z = false;
        }
        if (z) {
            px2.e(new ly2());
        }
        px2.e(new my2());
        px2.e(new ry2());
        px2.e(new vy2());
        px2.e(new wy2());
        px2.f(new ux2());
    }
}
