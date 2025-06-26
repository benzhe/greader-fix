package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public interface f07 {

    public enum a {
        HTTP("http"),
        HTTPS("https"),
        FILE(StringLookupFactory.KEY_FILE),
        CONTENT(NSContent.NSTAG),
        ASSETS("assets"),
        DRAWABLE("drawable"),
        UNKNOWN("");

        public String e;
        public String f;

        a(String str) {
            this.e = str;
            this.f = jo.n(str, "://");
        }

        public static a k(String str) {
            if (str != null) {
                a[] aVarArrValues = values();
                for (int i = 0; i < 7; i++) {
                    a aVar = aVarArrValues[i];
                    Objects.requireNonNull(aVar);
                    if (str.toLowerCase(Locale.US).startsWith(aVar.f)) {
                        return aVar;
                    }
                }
            }
            return UNKNOWN;
        }

        public String i(String str) {
            if (str.toLowerCase(Locale.US).startsWith(this.f)) {
                return str.substring(this.f.length());
            }
            throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", str, this.e));
        }

        public String l(String str) {
            return jo.s(new StringBuilder(), this.f, str);
        }
    }

    InputStream a(String str, Object obj) throws IOException;
}
