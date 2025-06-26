package defpackage;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class ap implements Closeable {
    public int e;

    public enum a {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        ALLOW_MISSING_VALUES(false),
        ALLOW_TRAILING_COMMA(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false),
        INCLUDE_SOURCE_IN_LOCATION(true);

        public final boolean e;
        public final int f = 1 << ordinal();

        a(boolean z) {
            this.e = z;
        }

        public boolean i(int i) {
            return (i & this.f) != 0;
        }
    }

    public ap() {
    }

    public abstract yo a();

    public abstract String b() throws IOException;

    public abstract long c() throws IOException;

    public abstract String e() throws IOException;

    public boolean f(a aVar) {
        return aVar.i(this.e);
    }

    public abstract bp g() throws IOException;

    public abstract ap i() throws IOException;

    public ap(int i) {
        this.e = i;
    }
}
