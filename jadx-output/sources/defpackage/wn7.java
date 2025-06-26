package defpackage;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes2.dex */
public final class wn7 {
    public static final Charset a;
    public static Charset b;
    public static Charset c;
    public static final wn7 d = null;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        im7.d(charsetForName, "Charset.forName(\"UTF-8\")");
        a = charsetForName;
        im7.d(Charset.forName(CharEncoding.UTF_16), "Charset.forName(\"UTF-16\")");
        im7.d(Charset.forName(CharEncoding.UTF_16BE), "Charset.forName(\"UTF-16BE\")");
        im7.d(Charset.forName(CharEncoding.UTF_16LE), "Charset.forName(\"UTF-16LE\")");
        im7.d(Charset.forName("US-ASCII"), "Charset.forName(\"US-ASCII\")");
        im7.d(Charset.forName(CharEncoding.ISO_8859_1), "Charset.forName(\"ISO-8859-1\")");
    }
}
