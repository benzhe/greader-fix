package defpackage;

/* loaded from: classes.dex */
public enum xo {
    AUTO_CLOSE_TARGET(true),
    AUTO_CLOSE_JSON_CONTENT(true),
    FLUSH_PASSED_TO_STREAM(true),
    QUOTE_FIELD_NAMES(true),
    QUOTE_NON_NUMERIC_NUMBERS(true),
    ESCAPE_NON_ASCII(false),
    WRITE_NUMBERS_AS_STRINGS(false),
    WRITE_BIGDECIMAL_AS_PLAIN(false),
    STRICT_DUPLICATE_DETECTION(false),
    IGNORE_UNKNOWN(false);

    public final boolean e;
    public final int f = 1 << ordinal();

    xo(boolean z) {
        this.e = z;
    }
}
