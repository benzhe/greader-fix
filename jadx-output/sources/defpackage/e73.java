package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class e73 extends IOException {
    public e73(String str) {
        super(str);
    }

    public static e73 a() {
        return new e73("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static e73 b() {
        return new e73("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static e73 c() {
        return new e73("CodedInputStream encountered a malformed varint.");
    }

    public static e73 d() {
        return new e73("Protocol message contained an invalid tag (zero).");
    }

    public static e73 e() {
        return new e73("Protocol message end-group tag did not match expected tag.");
    }

    public static d73 f() {
        return new d73("Protocol message tag had invalid wire type.");
    }

    public static e73 g() {
        return new e73("Failed to parse the message.");
    }

    public static e73 h() {
        return new e73("Protocol message had invalid UTF-8.");
    }
}
