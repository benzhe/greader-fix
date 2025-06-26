package okhttp3.internal.http1;

import defpackage.at7;
import defpackage.gm7;
import defpackage.im7;
import java.io.IOException;
import okhttp3.Headers;

/* loaded from: classes2.dex */
public final class HeadersReader {
    public static final Companion Companion = new Companion(null);
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit;
    private final at7 source;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public HeadersReader(at7 at7Var) {
        im7.e(at7Var, "source");
        this.source = at7Var;
        this.headerLimit = HEADER_LIMIT;
    }

    public final at7 getSource() {
        return this.source;
    }

    public final Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String line = readLine();
            if (line.length() == 0) {
                return builder.build();
            }
            builder.addLenient$okhttp(line);
        }
    }

    public final String readLine() throws IOException {
        String strR = this.source.R(this.headerLimit);
        this.headerLimit -= strR.length();
        return strR;
    }
}
