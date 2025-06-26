package okhttp3.logging;

import defpackage.im7;
import defpackage.xs7;
import java.io.EOFException;

/* loaded from: classes2.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(xs7 xs7Var) {
        im7.e(xs7Var, "$this$isProbablyUtf8");
        try {
            xs7 xs7Var2 = new xs7();
            long j = xs7Var.f;
            xs7Var.e(xs7Var2, 0L, j > 64 ? 64L : j);
            for (int i = 0; i < 16; i++) {
                if (xs7Var2.J()) {
                    return true;
                }
                int iX = xs7Var2.x();
                if (Character.isISOControl(iX) && !Character.isWhitespace(iX)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
