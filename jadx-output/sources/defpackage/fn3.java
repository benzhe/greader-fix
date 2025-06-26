package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public abstract class fn3 {
    public static MessageDigest b;
    public Object a = new Object();

    public abstract byte[] a(String str);

    public final MessageDigest b() {
        synchronized (this.a) {
            MessageDigest messageDigest = b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return b;
        }
    }
}
