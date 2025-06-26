package defpackage;

import defpackage.ap;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes.dex */
public enum sp {
    ALLOW_JAVA_COMMENTS(false, ap.a.ALLOW_COMMENTS),
    ALLOW_YAML_COMMENTS(false, ap.a.ALLOW_YAML_COMMENTS),
    ALLOW_SINGLE_QUOTES(false, ap.a.ALLOW_SINGLE_QUOTES),
    ALLOW_UNQUOTED_FIELD_NAMES(false, ap.a.ALLOW_UNQUOTED_FIELD_NAMES),
    ALLOW_UNESCAPED_CONTROL_CHARS(false, ap.a.ALLOW_UNQUOTED_CONTROL_CHARS),
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false, ap.a.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER),
    ALLOW_LEADING_ZEROS_FOR_NUMBERS(false, ap.a.ALLOW_NUMERIC_LEADING_ZEROS),
    ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false, ap.a.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS),
    ALLOW_NON_NUMERIC_NUMBERS(false, ap.a.ALLOW_NON_NUMERIC_NUMBERS),
    ALLOW_MISSING_VALUES(false, ap.a.ALLOW_MISSING_VALUES),
    ALLOW_TRAILING_COMMA(false, ap.a.ALLOW_TRAILING_COMMA);

    public final ap.a e;

    sp(boolean z, ap.a aVar) {
        ordinal();
        this.e = aVar;
    }
}
