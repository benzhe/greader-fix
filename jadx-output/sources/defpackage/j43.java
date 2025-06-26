package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class j43 implements yz2 {
    public final ThreadLocal<Mac> a;
    public final String b;
    public final Key c;
    public final int d;

    public j43(String str, Key key) throws GeneralSecurityException {
        m43 m43Var = new m43(this);
        this.a = m43Var;
        this.b = str;
        this.c = key;
        if (key.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        switch (str) {
            case "HMACSHA1":
                this.d = 20;
                break;
            case "HMACSHA256":
                this.d = 32;
                break;
            case "HMACSHA384":
                this.d = 48;
                break;
            case "HMACSHA512":
                this.d = 64;
                break;
            default:
                throw new NoSuchAlgorithmException(str.length() != 0 ? "unknown Hmac algorithm: ".concat(str) : new String("unknown Hmac algorithm: "));
        }
        m43Var.get();
    }

    @Override // defpackage.yz2
    public final byte[] a(byte[] bArr, int i) throws IllegalStateException, GeneralSecurityException {
        if (i > this.d) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        this.a.get().update(bArr);
        return Arrays.copyOf(this.a.get().doFinal(), i);
    }
}
