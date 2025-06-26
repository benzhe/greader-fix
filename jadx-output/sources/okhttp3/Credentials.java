package okhttp3;

import defpackage.bt7;
import defpackage.im7;
import defpackage.jo;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.apache.commons.text.lookup.AbstractStringLookup;

/* loaded from: classes2.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    public static final String basic(String str, String str2) {
        return basic$default(str, str2, null, 4, null);
    }

    public static final String basic(String str, String str2, Charset charset) {
        im7.e(str, "username");
        im7.e(str2, "password");
        im7.e(charset, "charset");
        String str3 = str + AbstractStringLookup.SPLIT_CH + str2;
        bt7.a aVar = bt7.i;
        im7.e(str3, "$this$encode");
        im7.e(charset, "charset");
        byte[] bytes = str3.getBytes(charset);
        im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
        return jo.n("Basic ", new bt7(bytes).i());
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset charset, int i, Object obj) {
        if ((i & 4) != 0) {
            charset = StandardCharsets.ISO_8859_1;
            im7.d(charset, "ISO_8859_1");
        }
        return basic(str, str2, charset);
    }
}
