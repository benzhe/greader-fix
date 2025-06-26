package okhttp3.internal.http2;

import defpackage.bt7;
import defpackage.gm7;
import defpackage.im7;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class Header {
    public static final Companion Companion = new Companion(null);
    public static final bt7 PSEUDO_PREFIX;
    public static final bt7 RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final bt7 TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final bt7 TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final bt7 TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final bt7 TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public final int hpackSize;
    public final bt7 name;
    public final bt7 value;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    static {
        bt7.a aVar = bt7.i;
        PSEUDO_PREFIX = aVar.c(":");
        RESPONSE_STATUS = aVar.c(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = aVar.c(TARGET_METHOD_UTF8);
        TARGET_PATH = aVar.c(TARGET_PATH_UTF8);
        TARGET_SCHEME = aVar.c(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = aVar.c(TARGET_AUTHORITY_UTF8);
    }

    public Header(bt7 bt7Var, bt7 bt7Var2) {
        im7.e(bt7Var, InetAddressKeys.KEY_NAME);
        im7.e(bt7Var2, "value");
        this.name = bt7Var;
        this.value = bt7Var2;
        this.hpackSize = bt7Var.t() + 32 + bt7Var2.t();
    }

    public static /* synthetic */ Header copy$default(Header header, bt7 bt7Var, bt7 bt7Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            bt7Var = header.name;
        }
        if ((i & 2) != 0) {
            bt7Var2 = header.value;
        }
        return header.copy(bt7Var, bt7Var2);
    }

    public final bt7 component1() {
        return this.name;
    }

    public final bt7 component2() {
        return this.value;
    }

    public final Header copy(bt7 bt7Var, bt7 bt7Var2) {
        im7.e(bt7Var, InetAddressKeys.KEY_NAME);
        im7.e(bt7Var2, "value");
        return new Header(bt7Var, bt7Var2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return im7.a(this.name, header.name) && im7.a(this.value, header.value);
    }

    public int hashCode() {
        bt7 bt7Var = this.name;
        int iHashCode = (bt7Var != null ? bt7Var.hashCode() : 0) * 31;
        bt7 bt7Var2 = this.value;
        return iHashCode + (bt7Var2 != null ? bt7Var2.hashCode() : 0);
    }

    public String toString() {
        return this.name.O() + ": " + this.value.O();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Header(String str, String str2) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        im7.e(str2, "value");
        bt7.a aVar = bt7.i;
        this(aVar.c(str), aVar.c(str2));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(bt7 bt7Var, String str) {
        this(bt7Var, bt7.i.c(str));
        im7.e(bt7Var, InetAddressKeys.KEY_NAME);
        im7.e(str, "value");
    }
}
