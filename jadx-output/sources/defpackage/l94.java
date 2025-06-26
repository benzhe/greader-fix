package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class l94 extends IOException {
    public static final /* synthetic */ int e = 0;

    public l94(String str) {
        super(str);
    }

    public static l94 a() {
        return new l94("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static l94 b() {
        return new l94("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static l94 c() {
        return new l94("Failed to parse the message.");
    }

    public static l94 d() {
        return new l94("Protocol message had invalid UTF-8.");
    }
}
