package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public enum bp {
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    END_OBJECT(StringSubstitutor.DEFAULT_VAR_END, 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE("false", 10),
    VALUE_NULL("null", 11);

    public final String e;
    public final char[] f;
    public final byte[] g;
    public final int h;
    public final boolean i;
    public final boolean j;

    bp(String str, int i) {
        if (str == null) {
            this.e = null;
            this.f = null;
            this.g = null;
        } else {
            this.e = str;
            char[] charArray = str.toCharArray();
            this.f = charArray;
            int length = charArray.length;
            this.g = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                this.g[i2] = (byte) this.f[i2];
            }
        }
        this.h = i;
        boolean z = i == 1 || i == 3;
        this.i = z;
        boolean z2 = i == 2 || i == 4;
        this.j = z2;
        if (z || !z2) {
        }
    }
}
