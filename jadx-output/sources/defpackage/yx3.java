package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class yx3 extends IOException {
    public static final /* synthetic */ int e = 0;

    public yx3(String str) {
        super(str);
    }

    public static yx3 a() {
        return new yx3("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static yx3 b() {
        return new yx3("Protocol message contained an invalid tag (zero).");
    }

    public static yx3 c() {
        return new yx3("Failed to parse the message.");
    }

    public static yx3 d() {
        return new yx3("Protocol message had invalid UTF-8.");
    }
}
