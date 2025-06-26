package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class g68 {
    public static final g68 e = new g68('0', '+', '-', FilenameUtils.EXTENSION_SEPARATOR);
    public final char a;
    public final char b;
    public final char c;
    public final char d;

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public g68(char c, char c2, char c3, char c4) {
        this.a = c;
        this.b = c2;
        this.c = c3;
        this.d = c4;
    }

    public String a(String str) {
        char c = this.a;
        if (c == '0') {
            return str;
        }
        int i = c - '0';
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            charArray[i2] = (char) (charArray[i2] + i);
        }
        return new String(charArray);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g68)) {
            return false;
        }
        g68 g68Var = (g68) obj;
        return this.a == g68Var.a && this.b == g68Var.b && this.c == g68Var.c && this.d == g68Var.d;
    }

    public int hashCode() {
        return this.a + this.b + this.c + this.d;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DecimalStyle[");
        sbZ.append(this.a);
        sbZ.append(this.b);
        sbZ.append(this.c);
        sbZ.append(this.d);
        sbZ.append("]");
        return sbZ.toString();
    }
}
