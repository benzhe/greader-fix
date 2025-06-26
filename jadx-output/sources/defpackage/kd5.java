package defpackage;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public final class kd5 {
    public static final Charset a = Charset.forName("US-ASCII");
    public static final Charset b;

    static {
        Charset.forName(CharEncoding.ISO_8859_1);
        b = Charset.forName("UTF-8");
        Charset.forName(CharEncoding.UTF_16BE);
        Charset.forName(CharEncoding.UTF_16LE);
        Charset.forName(CharEncoding.UTF_16);
    }
}
