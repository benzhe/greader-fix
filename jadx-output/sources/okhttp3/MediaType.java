package okhttp3;

import defpackage.bn7;
import defpackage.co7;
import defpackage.dn7;
import defpackage.en7;
import defpackage.gm7;
import defpackage.im7;
import defpackage.jo;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private final String mediaType;
    private final String[] parameterNamesAndValues;
    private final String subtype;
    private final String type;
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final class Companion {
        private Companion() {
        }

        /* renamed from: -deprecated_get, reason: not valid java name */
        public final MediaType m80deprecated_get(String str) {
            im7.e(str, "mediaType");
            return get(str);
        }

        /* renamed from: -deprecated_parse, reason: not valid java name */
        public final MediaType m81deprecated_parse(String str) {
            im7.e(str, "mediaType");
            return parse(str);
        }

        public final MediaType get(String str) {
            im7.e(str, "$this$toMediaType");
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(str);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
            }
            String strGroup = matcher.group(1);
            im7.d(strGroup, "typeSubtype.group(1)");
            Locale locale = Locale.US;
            im7.d(locale, "Locale.US");
            String lowerCase = strGroup.toLowerCase(locale);
            im7.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            String strGroup2 = matcher.group(2);
            im7.d(strGroup2, "typeSubtype.group(2)");
            im7.d(locale, "Locale.US");
            String lowerCase2 = strGroup2.toLowerCase(locale);
            im7.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = MediaType.PARAMETER.matcher(str);
            int iEnd = matcher.end();
            while (iEnd < str.length()) {
                matcher2.region(iEnd, str.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sbZ = jo.z("Parameter is not formatted correctly: \"");
                    String strSubstring = str.substring(iEnd);
                    im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    sbZ.append(strSubstring);
                    sbZ.append("\" for: \"");
                    sbZ.append(str);
                    sbZ.append('\"');
                    throw new IllegalArgumentException(sbZ.toString().toString());
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    iEnd = matcher2.end();
                } else {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (co7.A(strGroup4, "'", false, 2) && co7.d(strGroup4, "'", false, 2) && strGroup4.length() > 2) {
                        strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                        im7.d(strGroup4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                    iEnd = matcher2.end();
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new MediaType(str, lowerCase, lowerCase2, (String[]) array, null);
        }

        public final MediaType parse(String str) {
            im7.e(str, "$this$toMediaTypeOrNull");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    public static final MediaType get(String str) {
        return Companion.get(str);
    }

    public static final MediaType parse(String str) {
        return Companion.parse(str);
    }

    /* renamed from: -deprecated_subtype, reason: not valid java name */
    public final String m78deprecated_subtype() {
        return this.subtype;
    }

    /* renamed from: -deprecated_type, reason: not valid java name */
    public final String m79deprecated_type() {
        return this.type;
    }

    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    public final Charset charset(Charset charset) {
        String strParameter = parameter("charset");
        if (strParameter == null) {
            return charset;
        }
        try {
            return Charset.forName(strParameter);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof MediaType) && im7.a(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    public final String parameter(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        String[] strArr = this.parameterNamesAndValues;
        im7.e(strArr, "$this$indices");
        im7.e(strArr, "$this$lastIndex");
        bn7 bn7VarC = en7.c(new dn7(0, strArr.length - 1), 2);
        int i = bn7VarC.e;
        int i2 = bn7VarC.f;
        int i3 = bn7VarC.g;
        if (i3 >= 0) {
            if (i > i2) {
                return null;
            }
        } else if (i < i2) {
            return null;
        }
        while (!co7.e(this.parameterNamesAndValues[i], str, true)) {
            if (i == i2) {
                return null;
            }
            i += i3;
        }
        return this.parameterNamesAndValues[i + 1];
    }

    public final String subtype() {
        return this.subtype;
    }

    public String toString() {
        return this.mediaType;
    }

    public final String type() {
        return this.type;
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, gm7 gm7Var) {
        this(str, str2, str3, strArr);
    }
}
