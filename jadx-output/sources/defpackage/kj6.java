package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class kj6 extends IOException {
    public ak6 e;

    public static class a extends kj6 {
        public a(String str) {
            super(str);
        }
    }

    public kj6(String str) {
        super(str);
    }

    public static kj6 a() {
        return new kj6("Protocol message end-group tag did not match expected tag.");
    }

    public static kj6 b() {
        return new kj6("Protocol message contained an invalid tag (zero).");
    }

    public static kj6 c() {
        return new kj6("Protocol message had invalid UTF-8.");
    }

    public static a d() {
        return new a("Protocol message tag had invalid wire type.");
    }

    public static kj6 e() {
        return new kj6("CodedInputStream encountered a malformed varint.");
    }

    public static kj6 f() {
        return new kj6("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static kj6 g() {
        return new kj6("Failed to parse the message.");
    }

    public static kj6 h() {
        return new kj6("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
