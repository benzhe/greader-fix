package okhttp3;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.bn7;
import defpackage.co7;
import defpackage.en7;
import defpackage.gm7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jk7;
import defpackage.jo;
import defpackage.n56;
import defpackage.xs7;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Pattern;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.text.lookup.AbstractStringLookup;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class HttpUrl {
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    public static final String FRAGMENT_ENCODE_SET = "";
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final boolean isHttps;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;
    public static final Companion Companion = new Companion(null);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        public static final String INVALID_HOST = "Invalid URL host";
        private String encodedFragment;
        private final List<String> encodedPathSegments;
        private List<String> encodedQueryNamesAndValues;
        private String host;
        private String scheme;
        private String encodedUsername = "";
        private String encodedPassword = "";
        private int port = -1;

        public static final class Companion {
            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i, int i2) throws NumberFormatException {
                try {
                    int i3 = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, "", false, false, false, false, null, 248, null));
                    if (1 <= i3 && 65535 >= i3) {
                        return i3;
                    }
                    return -1;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i, int i2) {
                while (i < i2) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == ':') {
                        return i;
                    }
                    if (cCharAt == '[') {
                        do {
                            i++;
                            if (i < i2) {
                            }
                        } while (str.charAt(i) != ']');
                    }
                    i++;
                }
                return i2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int schemeDelimiterOffset(String str, int i, int i2) {
                if (i2 - i < 2) {
                    return -1;
                }
                char cCharAt = str.charAt(i);
                if ((im7.g(cCharAt, 97) < 0 || im7.g(cCharAt, 122) > 0) && (im7.g(cCharAt, 65) < 0 || im7.g(cCharAt, 90) > 0)) {
                    return -1;
                }
                while (true) {
                    i++;
                    if (i >= i2) {
                        return -1;
                    }
                    char cCharAt2 = str.charAt(i);
                    if ('a' > cCharAt2 || 'z' < cCharAt2) {
                        if ('A' > cCharAt2 || 'Z' < cCharAt2) {
                            if ('0' > cCharAt2 || '9' < cCharAt2) {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i;
                                    }
                                    return -1;
                                }
                            }
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i, int i2) {
                int i3 = 0;
                while (i < i2) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i3++;
                    i++;
                }
                return i3;
            }

            public /* synthetic */ Companion(gm7 gm7Var) {
                this();
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private final int effectivePort() {
            int i = this.port;
            if (i != -1) {
                return i;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            im7.c(str);
            return companion.defaultPort(str);
        }

        private final boolean isDot(String str) {
            return im7.a(str, ".") || co7.e(str, "%2e", true);
        }

        private final boolean isDotDot(String str) {
            return im7.a(str, "..") || co7.e(str, "%2e.", true) || co7.e(str, ".%2e", true) || co7.e(str, "%2e%2e", true);
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (!(list.remove(list.size() - 1).length() == 0) || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add("");
            } else {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, "");
            }
        }

        private final void push(String str, int i, int i2, boolean z, boolean z2) {
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, false, null, 240, null);
            if (isDot(strCanonicalize$okhttp$default)) {
                return;
            }
            if (isDotDot(strCanonicalize$okhttp$default)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).length() == 0) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, strCanonicalize$okhttp$default);
            } else {
                this.encodedPathSegments.add(strCanonicalize$okhttp$default);
            }
            if (z) {
                this.encodedPathSegments.add("");
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            List<String> list = this.encodedQueryNamesAndValues;
            im7.c(list);
            bn7 bn7VarC = en7.c(en7.b(list.size() - 2, 0), 2);
            int i = bn7VarC.e;
            int i2 = bn7VarC.f;
            int i3 = bn7VarC.g;
            if (i3 >= 0) {
                if (i > i2) {
                    return;
                }
            } else if (i < i2) {
                return;
            }
            while (true) {
                List<String> list2 = this.encodedQueryNamesAndValues;
                im7.c(list2);
                if (im7.a(str, list2.get(i))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    im7.c(list3);
                    list3.remove(i + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    im7.c(list4);
                    list4.remove(i);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    im7.c(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (i == i2) {
                    return;
                } else {
                    i += i3;
                }
            }
        }

        private final void resolvePath(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                if (i3 >= i2) {
                    return;
                }
                i = Util.delimiterOffset(str, "/\\", i3, i2);
                boolean z = i < i2;
                push(str, i3, i, z, true);
                if (z) {
                    i++;
                }
            }
        }

        public final Builder addEncodedPathSegment(String str) {
            im7.e(str, "encodedPathSegment");
            push(str, 0, str.length(), false, true);
            return this;
        }

        public final Builder addEncodedPathSegments(String str) {
            im7.e(str, "encodedPathSegments");
            return addPathSegments(str, true);
        }

        public final Builder addEncodedQueryParameter(String str, String str2) {
            im7.e(str, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            im7.c(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            im7.c(list2);
            list2.add(str2 != null ? Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null) : null);
            return this;
        }

        public final Builder addPathSegment(String str) {
            im7.e(str, "pathSegment");
            push(str, 0, str.length(), false, false);
            return this;
        }

        public final Builder addPathSegments(String str) {
            im7.e(str, "pathSegments");
            return addPathSegments(str, false);
        }

        public final Builder addQueryParameter(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            im7.c(list);
            Companion companion = HttpUrl.Companion;
            list.add(Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            im7.c(list2);
            list2.add(str2 != null ? Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
            return this;
        }

        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            Companion companion = HttpUrl.Companion;
            String strPercentDecode$okhttp$default = Companion.percentDecode$okhttp$default(companion, this.encodedUsername, 0, 0, false, 7, null);
            String strPercentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(companion, this.encodedPassword, 0, 0, false, 7, null);
            String str2 = this.host;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iEffectivePort = effectivePort();
            List<String> list = this.encodedPathSegments;
            ArrayList arrayList2 = new ArrayList(n56.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, (String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                arrayList = new ArrayList(n56.x(list2, 10));
                for (String str3 : list2) {
                    arrayList.add(str3 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, true, 3, null) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, strPercentDecode$okhttp$default, strPercentDecode$okhttp$default2, str2, iEffectivePort, arrayList2, arrayList, str4 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str4, 0, 0, false, 7, null) : null, toString());
        }

        public final Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", true, false, false, true, null, 179, null) : null;
            return this;
        }

        public final Builder encodedPassword(String str) {
            im7.e(str, "encodedPassword");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        public final Builder encodedPath(String str) {
            im7.e(str, "encodedPath");
            if (!co7.A(str, "/", false, 2)) {
                throw new IllegalArgumentException(jo.n("unexpected encodedPath: ", str).toString());
            }
            resolvePath(str, 0, str.length());
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.HttpUrl.Builder encodedQuery(java.lang.String r14) {
            /*
                r13 = this;
                if (r14 == 0) goto L1d
                okhttp3.HttpUrl$Companion r12 = okhttp3.HttpUrl.Companion
                r2 = 0
                r3 = 0
                r5 = 1
                r6 = 0
                r7 = 1
                r8 = 0
                r9 = 0
                r10 = 211(0xd3, float:2.96E-43)
                r11 = 0
                java.lang.String r4 = " \"'<>#"
                r0 = r12
                r1 = r14
                java.lang.String r14 = okhttp3.HttpUrl.Companion.canonicalize$okhttp$default(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
                if (r14 == 0) goto L1d
                java.util.List r14 = r12.toQueryNamesAndValues$okhttp(r14)
                goto L1e
            L1d:
                r14 = 0
            L1e:
                r13.encodedQueryNamesAndValues = r14
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.encodedQuery(java.lang.String):okhttp3.HttpUrl$Builder");
        }

        public final Builder encodedUsername(String str) {
            im7.e(str, "encodedUsername");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        public final Builder fragment(String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", false, false, false, true, null, 187, null) : null;
            return this;
        }

        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        public final String getScheme$okhttp() {
            return this.scheme;
        }

        public final Builder host(String str) {
            im7.e(str, "host");
            String canonicalHost = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, 0, 0, false, 7, null));
            if (canonicalHost == null) {
                throw new IllegalArgumentException(jo.n("unexpected host: ", str));
            }
            this.host = canonicalHost;
            return this;
        }

        public final Builder parse$okhttp(HttpUrl httpUrl, String str) throws NumberFormatException {
            int iDelimiterOffset;
            int i;
            String str2;
            int i2;
            int i3;
            String str3;
            im7.e(str, "input");
            int iIndexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(str, 0, 0, 3, null);
            int iIndexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(str, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            Companion companion = Companion;
            int iSchemeDelimiterOffset = companion.schemeDelimiterOffset(str, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            String str4 = "(this as java.lang.Strin…ing(startIndex, endIndex)";
            char c = 65535;
            if (iSchemeDelimiterOffset != -1) {
                if (co7.w(str, "https:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = "https";
                    iIndexOfFirstNonAsciiWhitespace$default += 6;
                } else {
                    if (!co7.w(str, "http:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                        StringBuilder sbZ = jo.z("Expected URL scheme 'http' or 'https' but was '");
                        String strSubstring = str.substring(0, iSchemeDelimiterOffset);
                        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        sbZ.append(strSubstring);
                        sbZ.append("'");
                        throw new IllegalArgumentException(sbZ.toString());
                    }
                    this.scheme = "http";
                    iIndexOfFirstNonAsciiWhitespace$default += 5;
                }
            } else {
                if (httpUrl == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.scheme = httpUrl.scheme();
            }
            int iSlashCount = companion.slashCount(str, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            char c2 = '?';
            char c3 = '#';
            if (iSlashCount >= 2 || httpUrl == null || (!im7.a(httpUrl.scheme(), this.scheme))) {
                int i4 = iIndexOfFirstNonAsciiWhitespace$default + iSlashCount;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    iDelimiterOffset = Util.delimiterOffset(str, "@/\\?#", i4, iIndexOfLastNonAsciiWhitespace$default);
                    char cCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? str.charAt(iDelimiterOffset) : (char) 65535;
                    if (cCharAt == c || cCharAt == c3 || cCharAt == '/' || cCharAt == '\\' || cCharAt == c2) {
                        break;
                    }
                    if (cCharAt != '@') {
                        i2 = iIndexOfLastNonAsciiWhitespace$default;
                        str3 = str4;
                    } else {
                        if (z) {
                            i2 = iIndexOfLastNonAsciiWhitespace$default;
                            i3 = iDelimiterOffset;
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.encodedPassword);
                            sb.append("%40");
                            str3 = str4;
                            sb.append(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i4, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null));
                            this.encodedPassword = sb.toString();
                        } else {
                            int iDelimiterOffset2 = Util.delimiterOffset(str, AbstractStringLookup.SPLIT_CH, i4, iDelimiterOffset);
                            Companion companion2 = HttpUrl.Companion;
                            i2 = iIndexOfLastNonAsciiWhitespace$default;
                            i3 = iDelimiterOffset;
                            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion2, str, i4, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z2) {
                                strCanonicalize$okhttp$default = jo.t(new StringBuilder(), this.encodedUsername, "%40", strCanonicalize$okhttp$default);
                            }
                            this.encodedUsername = strCanonicalize$okhttp$default;
                            if (iDelimiterOffset2 != i3) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(companion2, str, iDelimiterOffset2 + 1, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z = true;
                            }
                            z2 = true;
                            str3 = str4;
                        }
                        i4 = i3 + 1;
                    }
                    c3 = '#';
                    c2 = '?';
                    c = 65535;
                    str4 = str3;
                    iIndexOfLastNonAsciiWhitespace$default = i2;
                }
                i = iIndexOfLastNonAsciiWhitespace$default;
                String str5 = str4;
                Companion companion3 = Companion;
                int iPortColonOffset = companion3.portColonOffset(str, i4, iDelimiterOffset);
                int i5 = iPortColonOffset + 1;
                if (i5 < iDelimiterOffset) {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, i4, iPortColonOffset, false, 4, null));
                    int port = companion3.parsePort(str, i5, iDelimiterOffset);
                    this.port = port;
                    if (!(port != -1)) {
                        StringBuilder sbZ2 = jo.z("Invalid URL port: \"");
                        String strSubstring2 = str.substring(i5, iDelimiterOffset);
                        im7.d(strSubstring2, str5);
                        sbZ2.append(strSubstring2);
                        sbZ2.append('\"');
                        throw new IllegalArgumentException(sbZ2.toString().toString());
                    }
                    str2 = str5;
                } else {
                    str2 = str5;
                    Companion companion4 = HttpUrl.Companion;
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(companion4, str, i4, iPortColonOffset, false, 4, null));
                    String str6 = this.scheme;
                    im7.c(str6);
                    this.port = companion4.defaultPort(str6);
                }
                if (!(this.host != null)) {
                    StringBuilder sbZ3 = jo.z("Invalid URL host: \"");
                    String strSubstring3 = str.substring(i4, iPortColonOffset);
                    im7.d(strSubstring3, str2);
                    sbZ3.append(strSubstring3);
                    sbZ3.append('\"');
                    throw new IllegalArgumentException(sbZ3.toString().toString());
                }
                iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || str.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                i = iIndexOfLastNonAsciiWhitespace$default;
            }
            int i6 = i;
            int iDelimiterOffset3 = Util.delimiterOffset(str, "?#", iIndexOfFirstNonAsciiWhitespace$default, i6);
            resolvePath(str, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
            if (iDelimiterOffset3 < i6 && str.charAt(iDelimiterOffset3) == '?') {
                int iDelimiterOffset4 = Util.delimiterOffset(str, '#', iDelimiterOffset3, i6);
                Companion companion5 = HttpUrl.Companion;
                this.encodedQueryNamesAndValues = companion5.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion5, str, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < i6 && str.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, iDelimiterOffset3 + 1, i6, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        public final Builder password(String str) {
            im7.e(str, "password");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        public final Builder port(int i) {
            if (!(1 <= i && 65535 >= i)) {
                throw new IllegalArgumentException(jo.g("unexpected port: ", i).toString());
            }
            this.port = i;
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okhttp3.HttpUrl.Builder query(java.lang.String r14) {
            /*
                r13 = this;
                if (r14 == 0) goto L1d
                okhttp3.HttpUrl$Companion r12 = okhttp3.HttpUrl.Companion
                r2 = 0
                r3 = 0
                r5 = 0
                r6 = 0
                r7 = 1
                r8 = 0
                r9 = 0
                r10 = 219(0xdb, float:3.07E-43)
                r11 = 0
                java.lang.String r4 = " \"'<>#"
                r0 = r12
                r1 = r14
                java.lang.String r14 = okhttp3.HttpUrl.Companion.canonicalize$okhttp$default(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
                if (r14 == 0) goto L1d
                java.util.List r14 = r12.toQueryNamesAndValues$okhttp(r14)
                goto L1e
            L1d:
                r14 = 0
            L1e:
                r13.encodedQueryNamesAndValues = r14
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.query(java.lang.String):okhttp3.HttpUrl$Builder");
        }

        public final Builder reencodeForUri$okhttp() {
            String strReplaceAll;
            String str = this.host;
            if (str != null) {
                im7.e("[\"<>^`{|}]", "pattern");
                Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
                im7.d(patternCompile, "Pattern.compile(pattern)");
                im7.e(patternCompile, "nativePattern");
                im7.e(str, "input");
                im7.e("", "replacement");
                strReplaceAll = patternCompile.matcher(str).replaceAll("");
                im7.d(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
            } else {
                strReplaceAll = null;
            }
            this.host = strReplaceAll;
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                List<String> list = this.encodedPathSegments;
                list.set(i, Companion.canonicalize$okhttp$default(HttpUrl.Companion, list.get(i), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str2 = list2.get(i2);
                    list2.set(i2, str2 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
                }
            }
            String str3 = this.encodedFragment;
            this.encodedFragment = str3 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null) : null;
            return this;
        }

        public final Builder removeAllEncodedQueryParameters(String str) {
            im7.e(str, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            return this;
        }

        public final Builder removeAllQueryParameters(String str) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        public final Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public final Builder scheme(String str) {
            im7.e(str, "scheme");
            if (co7.e(str, "http", true)) {
                this.scheme = "http";
            } else {
                if (!co7.e(str, "https", true)) {
                    throw new IllegalArgumentException(jo.n("unexpected scheme: ", str));
                }
                this.scheme = "https";
            }
            return this;
        }

        public final void setEncodedFragment$okhttp(String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(String str) {
            im7.e(str, "<set-?>");
            this.encodedPassword = str;
        }

        public final Builder setEncodedPathSegment(int i, String str) {
            im7.e(str, "encodedPathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            this.encodedPathSegments.set(i, strCanonicalize$okhttp$default);
            if ((isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) ? false : true) {
                return this;
            }
            throw new IllegalArgumentException(jo.n("unexpected path segment: ", str).toString());
        }

        public final void setEncodedQueryNamesAndValues$okhttp(List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        public final Builder setEncodedQueryParameter(String str, String str2) {
            im7.e(str, "encodedName");
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public final void setEncodedUsername$okhttp(String str) {
            im7.e(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(String str) {
            this.host = str;
        }

        public final Builder setPathSegment(int i, String str) {
            im7.e(str, "pathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
            if (!((isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) ? false : true)) {
                throw new IllegalArgumentException(jo.n("unexpected path segment: ", str).toString());
            }
            this.encodedPathSegments.set(i, strCanonicalize$okhttp$default);
            return this;
        }

        public final void setPort$okhttp(int i) {
            this.port = i;
        }

        public final Builder setQueryParameter(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public final void setScheme$okhttp(String str) {
            this.scheme = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                r5 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = r5.scheme
                if (r1 == 0) goto L12
                r0.append(r1)
                java.lang.String r1 = "://"
                r0.append(r1)
                goto L17
            L12:
                java.lang.String r1 = "//"
                r0.append(r1)
            L17:
                java.lang.String r1 = r5.encodedUsername
                int r1 = r1.length()
                r2 = 1
                r3 = 0
                if (r1 <= 0) goto L23
                r1 = 1
                goto L24
            L23:
                r1 = 0
            L24:
                r4 = 58
                if (r1 != 0) goto L35
                java.lang.String r1 = r5.encodedPassword
                int r1 = r1.length()
                if (r1 <= 0) goto L32
                r1 = 1
                goto L33
            L32:
                r1 = 0
            L33:
                if (r1 == 0) goto L53
            L35:
                java.lang.String r1 = r5.encodedUsername
                r0.append(r1)
                java.lang.String r1 = r5.encodedPassword
                int r1 = r1.length()
                if (r1 <= 0) goto L43
                goto L44
            L43:
                r2 = 0
            L44:
                if (r2 == 0) goto L4e
                r0.append(r4)
                java.lang.String r1 = r5.encodedPassword
                r0.append(r1)
            L4e:
                r1 = 64
                r0.append(r1)
            L53:
                java.lang.String r1 = r5.host
                if (r1 == 0) goto L76
                defpackage.im7.c(r1)
                r2 = 2
                boolean r1 = defpackage.co7.a(r1, r4, r3, r2)
                if (r1 == 0) goto L71
                r1 = 91
                r0.append(r1)
                java.lang.String r1 = r5.host
                r0.append(r1)
                r1 = 93
                r0.append(r1)
                goto L76
            L71:
                java.lang.String r1 = r5.host
                r0.append(r1)
            L76:
                int r1 = r5.port
                r2 = -1
                if (r1 != r2) goto L7f
                java.lang.String r1 = r5.scheme
                if (r1 == 0) goto L98
            L7f:
                int r1 = r5.effectivePort()
                java.lang.String r2 = r5.scheme
                if (r2 == 0) goto L92
                okhttp3.HttpUrl$Companion r3 = okhttp3.HttpUrl.Companion
                defpackage.im7.c(r2)
                int r2 = r3.defaultPort(r2)
                if (r1 == r2) goto L98
            L92:
                r0.append(r4)
                r0.append(r1)
            L98:
                okhttp3.HttpUrl$Companion r1 = okhttp3.HttpUrl.Companion
                java.util.List<java.lang.String> r2 = r5.encodedPathSegments
                r1.toPathString$okhttp(r2, r0)
                java.util.List<java.lang.String> r2 = r5.encodedQueryNamesAndValues
                if (r2 == 0) goto Lb0
                r2 = 63
                r0.append(r2)
                java.util.List<java.lang.String> r2 = r5.encodedQueryNamesAndValues
                defpackage.im7.c(r2)
                r1.toQueryString$okhttp(r2, r0)
            Lb0:
                java.lang.String r1 = r5.encodedFragment
                if (r1 == 0) goto Lbe
                r1 = 35
                r0.append(r1)
                java.lang.String r1 = r5.encodedFragment
                r0.append(r1)
            Lbe:
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
                defpackage.im7.d(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        public final Builder username(String str) {
            im7.e(str, "username");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        private final Builder addPathSegments(String str, boolean z) {
            int i = 0;
            do {
                int iDelimiterOffset = Util.delimiterOffset(str, "/\\", i, str.length());
                push(str, i, iDelimiterOffset, iDelimiterOffset < str.length(), z);
                i = iDelimiterOffset + 1;
            } while (i <= str.length());
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
            return companion.canonicalize$okhttp(str, (i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? str.length() : i2, str2, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? false : z3, (i3 & 64) != 0 ? false : z4, (i3 & 128) != 0 ? null : charset);
        }

        private final boolean isPercentEncoded(String str, int i, int i2) {
            int i3 = i + 2;
            return i3 < i2 && str.charAt(i) == '%' && Util.parseHexDigit(str.charAt(i + 1)) != -1 && Util.parseHexDigit(str.charAt(i3)) != -1;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i, int i2, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            return companion.percentDecode$okhttp(str, i, i2, z);
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0095 A[LOOP:1: B:50:0x008f->B:52:0x0095, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void writeCanonicalized(defpackage.xs7 r14, java.lang.String r15, int r16, int r17, java.lang.String r18, boolean r19, boolean r20, boolean r21, boolean r22, java.nio.charset.Charset r23) {
            /*
                r13 = this;
                r0 = r14
                r1 = r15
                r2 = r17
                r3 = r23
                r4 = 0
                r5 = r4
                r4 = r16
            La:
                if (r4 >= r2) goto Lbe
                java.lang.String r6 = "null cannot be cast to non-null type java.lang.String"
                java.util.Objects.requireNonNull(r15, r6)
                int r6 = r15.codePointAt(r4)
                if (r19 == 0) goto L2d
                r7 = 9
                if (r6 == r7) goto L28
                r7 = 10
                if (r6 == r7) goto L28
                r7 = 12
                if (r6 == r7) goto L28
                r7 = 13
                if (r6 == r7) goto L28
                goto L2d
            L28:
                r7 = r13
                r11 = r18
                goto Lb7
            L2d:
                r7 = 43
                if (r6 != r7) goto L3e
                if (r21 == 0) goto L3e
                if (r19 == 0) goto L38
                java.lang.String r7 = "+"
                goto L3a
            L38:
                java.lang.String r7 = "%2B"
            L3a:
                r14.k0(r7)
                goto L28
            L3e:
                r7 = 32
                r8 = 37
                if (r6 < r7) goto L6e
                r7 = 127(0x7f, float:1.78E-43)
                if (r6 == r7) goto L6e
                r7 = 128(0x80, float:1.8E-43)
                if (r6 < r7) goto L4e
                if (r22 == 0) goto L6e
            L4e:
                char r7 = (char) r6
                r9 = 0
                r10 = 2
                r11 = r18
                boolean r7 = defpackage.co7.a(r11, r7, r9, r10)
                if (r7 != 0) goto L6c
                if (r6 != r8) goto L67
                if (r19 == 0) goto L6c
                if (r20 == 0) goto L67
                r7 = r13
                boolean r9 = r13.isPercentEncoded(r15, r4, r2)
                if (r9 != 0) goto L68
                goto L71
            L67:
                r7 = r13
            L68:
                r14.p0(r6)
                goto Lb7
            L6c:
                r7 = r13
                goto L71
            L6e:
                r7 = r13
                r11 = r18
            L71:
                if (r5 != 0) goto L78
                xs7 r5 = new xs7
                r5.<init>()
            L78:
                if (r3 == 0) goto L8c
                java.nio.charset.Charset r9 = java.nio.charset.StandardCharsets.UTF_8
                boolean r9 = defpackage.im7.a(r3, r9)
                if (r9 == 0) goto L83
                goto L8c
            L83:
                int r9 = java.lang.Character.charCount(r6)
                int r9 = r9 + r4
                r5.j0(r15, r4, r9, r3)
                goto L8f
            L8c:
                r5.p0(r6)
            L8f:
                boolean r9 = r5.J()
                if (r9 != 0) goto Lb7
                byte r9 = r5.readByte()
                r9 = r9 & 255(0xff, float:3.57E-43)
                r14.Q(r8)
                char[] r10 = okhttp3.HttpUrl.access$getHEX_DIGITS$cp()
                int r12 = r9 >> 4
                r12 = r12 & 15
                char r10 = r10[r12]
                r14.Q(r10)
                char[] r10 = okhttp3.HttpUrl.access$getHEX_DIGITS$cp()
                r9 = r9 & 15
                char r9 = r10[r9]
                r14.Q(r9)
                goto L8f
            Lb7:
                int r6 = java.lang.Character.charCount(r6)
                int r4 = r4 + r6
                goto La
            Lbe:
                r7 = r13
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Companion.writeCanonicalized(xs7, java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset):void");
        }

        private final void writePercentDecoded(xs7 xs7Var, String str, int i, int i2, boolean z) {
            int i3;
            while (i < i2) {
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                int iCodePointAt = str.codePointAt(i);
                if (iCodePointAt == 37 && (i3 = i + 2) < i2) {
                    int hexDigit = Util.parseHexDigit(str.charAt(i + 1));
                    int hexDigit2 = Util.parseHexDigit(str.charAt(i3));
                    if (hexDigit == -1 || hexDigit2 == -1) {
                        xs7Var.p0(iCodePointAt);
                        i += Character.charCount(iCodePointAt);
                    } else {
                        xs7Var.Q((hexDigit << 4) + hexDigit2);
                        i = Character.charCount(iCodePointAt) + i3;
                    }
                } else if (iCodePointAt == 43 && z) {
                    xs7Var.Q(32);
                    i++;
                } else {
                    xs7Var.p0(iCodePointAt);
                    i += Character.charCount(iCodePointAt);
                }
            }
        }

        /* renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m74deprecated_get(String str) {
            im7.e(str, "url");
            return get(str);
        }

        /* renamed from: -deprecated_parse, reason: not valid java name */
        public final HttpUrl m77deprecated_parse(String str) {
            im7.e(str, "url");
            return parse(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String canonicalize$okhttp(java.lang.String r14, int r15, int r16, java.lang.String r17, boolean r18, boolean r19, boolean r20, boolean r21, java.nio.charset.Charset r22) {
            /*
                r13 = this;
                r2 = r14
                r4 = r16
                r5 = r17
                java.lang.String r0 = "$this$canonicalize"
                defpackage.im7.e(r14, r0)
                java.lang.String r0 = "encodeSet"
                defpackage.im7.e(r5, r0)
                r3 = r15
            L10:
                if (r3 >= r4) goto L6e
                int r0 = r14.codePointAt(r3)
                r1 = 32
                if (r0 < r1) goto L4b
                r1 = 127(0x7f, float:1.78E-43)
                if (r0 == r1) goto L4b
                r1 = 128(0x80, float:1.8E-43)
                if (r0 < r1) goto L24
                if (r21 == 0) goto L4b
            L24:
                char r1 = (char) r0
                r6 = 0
                r7 = 2
                boolean r1 = defpackage.co7.a(r5, r1, r6, r7)
                if (r1 != 0) goto L4b
                r1 = 37
                if (r0 != r1) goto L3d
                if (r18 == 0) goto L4b
                if (r19 == 0) goto L3d
                r11 = r13
                boolean r1 = r13.isPercentEncoded(r14, r3, r4)
                if (r1 == 0) goto L4c
                goto L3e
            L3d:
                r11 = r13
            L3e:
                r1 = 43
                if (r0 != r1) goto L45
                if (r20 == 0) goto L45
                goto L4c
            L45:
                int r0 = java.lang.Character.charCount(r0)
                int r3 = r3 + r0
                goto L10
            L4b:
                r11 = r13
            L4c:
                xs7 r12 = new xs7
                r12.<init>()
                r0 = r15
                r12.m0(r14, r15, r3)
                r0 = r13
                r1 = r12
                r2 = r14
                r4 = r16
                r5 = r17
                r6 = r18
                r7 = r19
                r8 = r20
                r9 = r21
                r10 = r22
                r0.writeCanonicalized(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
                java.lang.String r0 = r12.t()
                return r0
            L6e:
                r11 = r13
                r0 = r15
                java.lang.String r0 = r14.substring(r15, r16)
                java.lang.String r1 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
                defpackage.im7.d(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Companion.canonicalize$okhttp(java.lang.String, int, int, java.lang.String, boolean, boolean, boolean, boolean, java.nio.charset.Charset):java.lang.String");
        }

        public final int defaultPort(String str) {
            im7.e(str, "scheme");
            int iHashCode = str.hashCode();
            if (iHashCode != 3213448) {
                if (iHashCode == 99617003 && str.equals("https")) {
                    return 443;
                }
            } else if (str.equals("http")) {
                return 80;
            }
            return -1;
        }

        public final HttpUrl get(String str) {
            im7.e(str, "$this$toHttpUrl");
            return new Builder().parse$okhttp(null, str).build();
        }

        public final HttpUrl parse(String str) {
            im7.e(str, "$this$toHttpUrlOrNull");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final String percentDecode$okhttp(String str, int i, int i2, boolean z) {
            im7.e(str, "$this$percentDecode");
            for (int i3 = i; i3 < i2; i3++) {
                char cCharAt = str.charAt(i3);
                if (cCharAt == '%' || (cCharAt == '+' && z)) {
                    xs7 xs7Var = new xs7();
                    xs7Var.m0(str, i, i3);
                    writePercentDecoded(xs7Var, str, i3, i2, z);
                    return xs7Var.t();
                }
            }
            String strSubstring = str.substring(i, i2);
            im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public final void toPathString$okhttp(List<String> list, StringBuilder sb) {
            im7.e(list, "$this$toPathString");
            im7.e(sb, "out");
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append('/');
                sb.append(list.get(i));
            }
        }

        public final List<String> toQueryNamesAndValues$okhttp(String str) {
            im7.e(str, "$this$toQueryNamesAndValues");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int iK = co7.k(str, '&', i, false, 4);
                if (iK == -1) {
                    iK = str.length();
                }
                int iK2 = co7.k(str, '=', i, false, 4);
                if (iK2 == -1 || iK2 > iK) {
                    String strSubstring = str.substring(i, iK);
                    im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i, iK2);
                    im7.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iK2 + 1, iK);
                    im7.d(strSubstring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                }
                i = iK + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(List<String> list, StringBuilder sb) {
            im7.e(list, "$this$toQueryString");
            im7.e(sb, "out");
            bn7 bn7VarC = en7.c(en7.d(0, list.size()), 2);
            int i = bn7VarC.e;
            int i2 = bn7VarC.f;
            int i3 = bn7VarC.g;
            if (i3 >= 0) {
                if (i > i2) {
                    return;
                }
            } else if (i < i2) {
                return;
            }
            while (true) {
                String str = list.get(i);
                String str2 = list.get(i + 1);
                if (i > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (i == i2) {
                    return;
                } else {
                    i += i3;
                }
            }
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }

        /* renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m76deprecated_get(URL url) {
            im7.e(url, "url");
            return get(url);
        }

        public final HttpUrl get(URL url) {
            im7.e(url, "$this$toHttpUrlOrNull");
            String string = url.toString();
            im7.d(string, "toString()");
            return parse(string);
        }

        /* renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m75deprecated_get(URI uri) {
            im7.e(uri, "uri");
            return get(uri);
        }

        public final HttpUrl get(URI uri) {
            im7.e(uri, "$this$toHttpUrlOrNull");
            String string = uri.toString();
            im7.d(string, "toString()");
            return parse(string);
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i, List<String> list, List<String> list2, String str5, String str6) {
        im7.e(str, "scheme");
        im7.e(str2, "username");
        im7.e(str3, "password");
        im7.e(str4, "host");
        im7.e(list, "pathSegments");
        im7.e(str6, "url");
        this.scheme = str;
        this.username = str2;
        this.password = str3;
        this.host = str4;
        this.port = i;
        this.pathSegments = list;
        this.queryNamesAndValues = list2;
        this.fragment = str5;
        this.url = str6;
        this.isHttps = im7.a(str, "https");
    }

    public static final int defaultPort(String str) {
        return Companion.defaultPort(str);
    }

    public static final HttpUrl get(String str) {
        return Companion.get(str);
    }

    public static final HttpUrl get(URI uri) {
        return Companion.get(uri);
    }

    public static final HttpUrl get(URL url) {
        return Companion.get(url);
    }

    public static final HttpUrl parse(String str) {
        return Companion.parse(str);
    }

    /* renamed from: -deprecated_encodedFragment, reason: not valid java name */
    public final String m55deprecated_encodedFragment() {
        return encodedFragment();
    }

    /* renamed from: -deprecated_encodedPassword, reason: not valid java name */
    public final String m56deprecated_encodedPassword() {
        return encodedPassword();
    }

    /* renamed from: -deprecated_encodedPath, reason: not valid java name */
    public final String m57deprecated_encodedPath() {
        return encodedPath();
    }

    /* renamed from: -deprecated_encodedPathSegments, reason: not valid java name */
    public final List<String> m58deprecated_encodedPathSegments() {
        return encodedPathSegments();
    }

    /* renamed from: -deprecated_encodedQuery, reason: not valid java name */
    public final String m59deprecated_encodedQuery() {
        return encodedQuery();
    }

    /* renamed from: -deprecated_encodedUsername, reason: not valid java name */
    public final String m60deprecated_encodedUsername() {
        return encodedUsername();
    }

    /* renamed from: -deprecated_fragment, reason: not valid java name */
    public final String m61deprecated_fragment() {
        return this.fragment;
    }

    /* renamed from: -deprecated_host, reason: not valid java name */
    public final String m62deprecated_host() {
        return this.host;
    }

    /* renamed from: -deprecated_password, reason: not valid java name */
    public final String m63deprecated_password() {
        return this.password;
    }

    /* renamed from: -deprecated_pathSegments, reason: not valid java name */
    public final List<String> m64deprecated_pathSegments() {
        return this.pathSegments;
    }

    /* renamed from: -deprecated_pathSize, reason: not valid java name */
    public final int m65deprecated_pathSize() {
        return pathSize();
    }

    /* renamed from: -deprecated_port, reason: not valid java name */
    public final int m66deprecated_port() {
        return this.port;
    }

    /* renamed from: -deprecated_query, reason: not valid java name */
    public final String m67deprecated_query() {
        return query();
    }

    /* renamed from: -deprecated_queryParameterNames, reason: not valid java name */
    public final Set<String> m68deprecated_queryParameterNames() {
        return queryParameterNames();
    }

    /* renamed from: -deprecated_querySize, reason: not valid java name */
    public final int m69deprecated_querySize() {
        return querySize();
    }

    /* renamed from: -deprecated_scheme, reason: not valid java name */
    public final String m70deprecated_scheme() {
        return this.scheme;
    }

    /* renamed from: -deprecated_uri, reason: not valid java name */
    public final URI m71deprecated_uri() {
        return uri();
    }

    /* renamed from: -deprecated_url, reason: not valid java name */
    public final URL m72deprecated_url() {
        return url();
    }

    /* renamed from: -deprecated_username, reason: not valid java name */
    public final String m73deprecated_username() {
        return this.username;
    }

    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        int iK = co7.k(this.url, '#', 0, false, 6) + 1;
        String str = this.url;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iK);
        im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        int iK = co7.k(this.url, AbstractStringLookup.SPLIT_CH, this.scheme.length() + 3, false, 4) + 1;
        int iK2 = co7.k(this.url, '@', 0, false, 6);
        String str = this.url;
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str.substring(iK, iK2);
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String encodedPath() {
        int iK = co7.k(this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, "?#", iK, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(iK, iDelimiterOffset);
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final List<String> encodedPathSegments() {
        int iK = co7.k(this.url, '/', this.scheme.length() + 3, false, 4);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, "?#", iK, str.length());
        ArrayList arrayList = new ArrayList();
        while (iK < iDelimiterOffset) {
            int i = iK + 1;
            int iDelimiterOffset2 = Util.delimiterOffset(this.url, '/', i, iDelimiterOffset);
            String str2 = this.url;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = str2.substring(i, iDelimiterOffset2);
            im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            iK = iDelimiterOffset2;
        }
        return arrayList;
    }

    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iK = co7.k(this.url, '?', 0, false, 6) + 1;
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, '#', iK, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(iK, iDelimiterOffset);
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, ":@", length, str.length());
        String str2 = this.url;
        Objects.requireNonNull(str2, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = str2.substring(length, iDelimiterOffset);
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && im7.a(((HttpUrl) obj).url, this.url);
    }

    public final String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public final String host() {
        return this.host;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    public final String password() {
        return this.password;
    }

    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    public final int pathSize() {
        return this.pathSegments.size();
    }

    public final int port() {
        return this.port;
    }

    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    public final String queryParameter(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        bn7 bn7VarC = en7.c(en7.d(0, list.size()), 2);
        int i = bn7VarC.e;
        int i2 = bn7VarC.f;
        int i3 = bn7VarC.g;
        if (i3 < 0 ? i >= i2 : i <= i2) {
            while (!im7.a(str, this.queryNamesAndValues.get(i))) {
                if (i != i2) {
                    i += i3;
                }
            }
            return this.queryNamesAndValues.get(i + 1);
        }
        return null;
    }

    public final String queryParameterName(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            throw new IndexOutOfBoundsException();
        }
        String str = list.get(i * 2);
        im7.c(str);
        return str;
    }

    public final Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return jk7.e;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        bn7 bn7VarC = en7.c(en7.d(0, this.queryNamesAndValues.size()), 2);
        int i = bn7VarC.e;
        int i2 = bn7VarC.f;
        int i3 = bn7VarC.g;
        if (i3 < 0 ? i >= i2 : i <= i2) {
            while (true) {
                String str = this.queryNamesAndValues.get(i);
                im7.c(str);
                linkedHashSet.add(str);
                if (i == i2) {
                    break;
                }
                i += i3;
            }
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        im7.d(setUnmodifiableSet, "Collections.unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final String queryParameterValue(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<String> queryParameterValues(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        if (this.queryNamesAndValues == null) {
            return hk7.e;
        }
        ArrayList arrayList = new ArrayList();
        bn7 bn7VarC = en7.c(en7.d(0, this.queryNamesAndValues.size()), 2);
        int i = bn7VarC.e;
        int i2 = bn7VarC.f;
        int i3 = bn7VarC.g;
        if (i3 < 0 ? i >= i2 : i <= i2) {
            while (true) {
                if (im7.a(str, this.queryNamesAndValues.get(i))) {
                    arrayList.add(this.queryNamesAndValues.get(i + 1));
                }
                if (i == i2) {
                    break;
                }
                i += i3;
            }
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        im7.d(listUnmodifiableList, "Collections.unmodifiableList(result)");
        return listUnmodifiableList;
    }

    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public final String redact() {
        Builder builderNewBuilder = newBuilder("/...");
        im7.c(builderNewBuilder);
        return builderNewBuilder.username("").password("").build().toString();
    }

    public final HttpUrl resolve(String str) {
        im7.e(str, NSRSS20.LINK);
        Builder builderNewBuilder = newBuilder(str);
        if (builderNewBuilder != null) {
            return builderNewBuilder.build();
        }
        return null;
    }

    public final String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public final String topPrivateDomain() {
        if (Util.canParseAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    public final URI uri() {
        String string = newBuilder().reencodeForUri$okhttp().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                im7.e("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", "pattern");
                Pattern patternCompile = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                im7.d(patternCompile, "Pattern.compile(pattern)");
                im7.e(patternCompile, "nativePattern");
                im7.e(string, "input");
                im7.e("", "replacement");
                String strReplaceAll = patternCompile.matcher(string).replaceAll("");
                im7.d(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                URI uriCreate = URI.create(strReplaceAll);
                im7.d(uriCreate, "try {\n        val stripp…e) // Unexpected!\n      }");
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public final String username() {
        return this.username;
    }

    public final Builder newBuilder(String str) {
        im7.e(str, NSRSS20.LINK);
        try {
            return new Builder().parse$okhttp(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
