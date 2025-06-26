package okhttp3.internal.http;

import defpackage.bt7;
import defpackage.co7;
import defpackage.im7;
import defpackage.xs7;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;

/* loaded from: classes2.dex */
public final class HttpHeaders {
    private static final bt7 QUOTED_STRING_DELIMITERS;
    private static final bt7 TOKEN_DELIMITERS;

    static {
        bt7.a aVar = bt7.i;
        QUOTED_STRING_DELIMITERS = aVar.c("\"\\");
        TOKEN_DELIMITERS = aVar.c("\t ,=");
    }

    public static final boolean hasBody(Response response) {
        im7.e(response, "response");
        return promisesBody(response);
    }

    public static final List<Challenge> parseChallenges(Headers headers, String str) {
        im7.e(headers, "$this$parseChallenges");
        im7.e(str, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            if (co7.e(str, headers.name(i), true)) {
                xs7 xs7Var = new xs7();
                xs7Var.k0(headers.value(i));
                try {
                    readChallengeHeader(xs7Var, arrayList);
                } catch (EOFException e) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    public static final boolean promisesBody(Response response) {
        im7.e(response, "$this$promisesBody");
        if (im7.a(response.request().method(), "HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && Util.headersContentLength(response) == -1 && !co7.e("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
    
        r4 = new java.lang.StringBuilder();
        r4.append(r3);
        defpackage.im7.e("=", "$this$repeat");
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        if (r5 < 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        if (r8 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0059, code lost:
    
        if (r5 == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
    
        if (r5 == 1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        r8 = "=".length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        if (r8 == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0063, code lost:
    
        if (r8 == 1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0065, code lost:
    
        r6 = new java.lang.StringBuilder("=".length() * r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        if (1 > r5) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        r6.append((java.lang.CharSequence) "=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0075, code lost:
    
        if (r7 == r5) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0077, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        r3 = r6.toString();
        defpackage.im7.d(r3, "sb.toString()");
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0084, code lost:
    
        r3 = "=".charAt(0);
        r7 = new char[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
    
        if (r6 >= r5) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008c, code lost:
    
        r7[r6] = r3;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0091, code lost:
    
        r3 = new java.lang.String(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0097, code lost:
    
        r3 = "=".toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009c, code lost:
    
        r3 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
    
        throw new java.lang.IllegalArgumentException(("Count 'n' must be non-negative, but was " + r5 + org.apache.commons.io.FilenameUtils.EXTENSION_SEPARATOR).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00f4, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00f4, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void readChallengeHeader(defpackage.xs7 r9, java.util.List<okhttp3.Challenge> r10) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.readChallengeHeader(xs7, java.util.List):void");
    }

    private static final String readQuotedString(xs7 xs7Var) throws EOFException {
        byte b = (byte) 34;
        if (!(xs7Var.readByte() == b)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        xs7 xs7Var2 = new xs7();
        while (true) {
            long jI = xs7Var.i(QUOTED_STRING_DELIMITERS);
            if (jI == -1) {
                return null;
            }
            if (xs7Var.f(jI) == b) {
                xs7Var2.write(xs7Var, jI);
                xs7Var.readByte();
                return xs7Var2.t();
            }
            if (xs7Var.f == jI + 1) {
                return null;
            }
            xs7Var2.write(xs7Var, jI);
            xs7Var.readByte();
            xs7Var2.write(xs7Var, 1L);
        }
    }

    private static final String readToken(xs7 xs7Var) {
        long jI = xs7Var.i(TOKEN_DELIMITERS);
        if (jI == -1) {
            jI = xs7Var.f;
        }
        if (jI != 0) {
            return xs7Var.w(jI);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        im7.e(cookieJar, "$this$receiveHeaders");
        im7.e(httpUrl, "url");
        im7.e(headers, "headers");
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.Companion.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    private static final boolean skipCommasAndWhitespace(xs7 xs7Var) throws EOFException {
        boolean z = false;
        while (!xs7Var.J()) {
            byte bF = xs7Var.f(0L);
            if (bF == 9 || bF == 32) {
                xs7Var.readByte();
            } else {
                if (bF != 44) {
                    break;
                }
                xs7Var.readByte();
                z = true;
            }
        }
        return z;
    }

    private static final boolean startsWith(xs7 xs7Var, byte b) {
        return !xs7Var.J() && xs7Var.f(0L) == b;
    }
}
