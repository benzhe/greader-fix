package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class yd3 extends Exception {
    public yd3(int i, Throwable th, int i2) {
        super(null, th);
    }

    public static yd3 a(IOException iOException) {
        return new yd3(0, iOException, -1);
    }

    public static yd3 b(Exception exc, int i) {
        return new yd3(1, exc, i);
    }

    public static yd3 c(RuntimeException runtimeException) {
        return new yd3(2, runtimeException, -1);
    }
}
