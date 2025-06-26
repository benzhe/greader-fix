package defpackage;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final class g82 implements Runnable {
    public g82(j52 j52Var) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            h62.b = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException unused) {
        } finally {
            h62.e.countDown();
        }
    }
}
