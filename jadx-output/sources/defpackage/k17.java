package defpackage;

import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes2.dex */
public final class k17 {
    public final i17 a;
    public final int b;
    public final String c;

    public k17(i17 i17Var, int i, String str) {
        this.a = i17Var;
        this.b = i;
        this.c = str;
    }

    public static k17 a(String str) throws NumberFormatException, IOException {
        String strSubstring;
        i17 i17Var = i17.HTTP_1_0;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException(jo.n("Unexpected status line: ", str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException(jo.n("Unexpected status line: ", str));
                }
                i17Var = i17.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException(jo.n("Unexpected status line: ", str));
            }
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException(jo.n("Unexpected status line: ", str));
        }
        try {
            int i3 = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                strSubstring = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException(jo.n("Unexpected status line: ", str));
                }
                strSubstring = str.substring(i + 4);
            }
            return new k17(i17Var, i3, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException(jo.n("Unexpected status line: ", str));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a == i17.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.b);
        if (this.c != null) {
            sb.append(' ');
            sb.append(this.c);
        }
        return sb.toString();
    }
}
