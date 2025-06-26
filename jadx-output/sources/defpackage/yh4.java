package defpackage;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public final class yh4 {
    public static final Charset a;

    static {
        Charset.forName("US-ASCII");
        Charset.forName(CharEncoding.ISO_8859_1);
        a = Charset.forName("UTF-8");
        Charset.forName(CharEncoding.UTF_16BE);
        Charset.forName(CharEncoding.UTF_16LE);
        Charset.forName(CharEncoding.UTF_16);
    }
}
