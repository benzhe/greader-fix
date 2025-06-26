package org.apache.commons.text.lookup;

import defpackage.jo;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class AbstractStringLookup implements StringLookup {
    public static final char SPLIT_CH = ':';
    public static final String SPLIT_STR = String.valueOf(SPLIT_CH);

    public static String toLookupKey(String str, String str2) {
        return toLookupKey(str, SPLIT_STR, str2);
    }

    @Deprecated
    public String substringAfter(String str, char c) {
        return StringUtils.substringAfter(str, c);
    }

    @Deprecated
    public String substringAfterLast(String str, char c) {
        return StringUtils.substringAfterLast(str, c);
    }

    public static String toLookupKey(String str, String str2, String str3) {
        return jo.o(str, str2, str3);
    }

    @Deprecated
    public String substringAfter(String str, String str2) {
        return StringUtils.substringAfter(str, str2);
    }
}
