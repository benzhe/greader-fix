package defpackage;

import okhttp3.internal.http2.Header;

/* loaded from: classes2.dex */
public final class na7 {
    public static final bt7 d = bt7.l(Header.RESPONSE_STATUS_UTF8);
    public static final bt7 e = bt7.l(Header.TARGET_METHOD_UTF8);
    public static final bt7 f = bt7.l(Header.TARGET_PATH_UTF8);
    public static final bt7 g = bt7.l(Header.TARGET_SCHEME_UTF8);
    public static final bt7 h = bt7.l(Header.TARGET_AUTHORITY_UTF8);
    public final bt7 a;
    public final bt7 b;
    public final int c;

    static {
        bt7.l(":host");
        bt7.l(":version");
    }

    public na7(String str, String str2) {
        this(bt7.l(str), bt7.l(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof na7)) {
            return false;
        }
        na7 na7Var = (na7) obj;
        return this.a.equals(na7Var.a) && this.b.equals(na7Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 527) * 31);
    }

    public String toString() {
        return String.format("%s: %s", this.a.O(), this.b.O());
    }

    public na7(bt7 bt7Var, String str) {
        this(bt7Var, bt7.l(str));
    }

    public na7(bt7 bt7Var, bt7 bt7Var2) {
        this.a = bt7Var;
        this.b = bt7Var2;
        this.c = bt7Var.t() + 32 + bt7Var2.t();
    }
}
