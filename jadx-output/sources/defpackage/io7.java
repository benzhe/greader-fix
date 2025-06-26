package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class io7 extends go7 {
    public static final io7 b = new io7();

    public io7() {
        super(TimeUnit.NANOSECONDS);
    }

    public String toString() {
        return "TimeSource(System.nanoTime())";
    }
}
