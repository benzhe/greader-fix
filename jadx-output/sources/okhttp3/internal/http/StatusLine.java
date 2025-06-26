package okhttp3.internal.http;

import defpackage.co7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Protocol;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class StatusLine {
    public static final Companion Companion = new Companion(null);
    public static final int HTTP_CONTINUE = 100;
    public static final int HTTP_MISDIRECTED_REQUEST = 421;
    public static final int HTTP_PERM_REDIRECT = 308;
    public static final int HTTP_TEMP_REDIRECT = 307;
    public final int code;
    public final String message;
    public final Protocol protocol;

    public static final class Companion {
        private Companion() {
        }

        public final StatusLine get(Response response) {
            im7.e(response, "response");
            return new StatusLine(response.protocol(), response.code(), response.message());
        }

        public final StatusLine parse(String str) throws NumberFormatException, IOException {
            Protocol protocol;
            String strSubstring;
            im7.e(str, "statusLine");
            int i = 9;
            if (co7.A(str, "HTTP/1.", false, 2)) {
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException(jo.n("Unexpected status line: ", str));
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt == 0) {
                    protocol = Protocol.HTTP_1_0;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException(jo.n("Unexpected status line: ", str));
                    }
                    protocol = Protocol.HTTP_1_1;
                }
            } else {
                if (!co7.A(str, "ICY ", false, 2)) {
                    throw new ProtocolException(jo.n("Unexpected status line: ", str));
                }
                protocol = Protocol.HTTP_1_0;
                i = 4;
            }
            int i2 = i + 3;
            if (str.length() < i2) {
                throw new ProtocolException(jo.n("Unexpected status line: ", str));
            }
            try {
                String strSubstring2 = str.substring(i, i2);
                im7.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                int i3 = Integer.parseInt(strSubstring2);
                if (str.length() <= i2) {
                    strSubstring = "";
                } else {
                    if (str.charAt(i2) != ' ') {
                        throw new ProtocolException(jo.n("Unexpected status line: ", str));
                    }
                    strSubstring = str.substring(i + 4);
                    im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                }
                return new StatusLine(protocol, i3, strSubstring);
            } catch (NumberFormatException unused) {
                throw new ProtocolException(jo.n("Unexpected status line: ", str));
            }
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    public StatusLine(Protocol protocol, int i, String str) {
        im7.e(protocol, "protocol");
        im7.e(str, "message");
        this.protocol = protocol;
        this.code = i;
        this.message = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.protocol == Protocol.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.code);
        sb.append(' ');
        sb.append(this.message);
        String string = sb.toString();
        im7.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
