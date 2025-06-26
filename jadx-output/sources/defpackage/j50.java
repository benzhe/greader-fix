package defpackage;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class j50 extends i50 {
    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        int length = str.length();
        while (i < str.length() && str.charAt(i) == ',') {
            i++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        if (length < i) {
            return null;
        }
        return (i == 0 && length == str.length()) ? str : str.substring(i, length);
    }

    @Override // defpackage.i50
    public final String a(String str, String str2) {
        String strB = b(str);
        String strB2 = b(str2);
        return TextUtils.isEmpty(strB) ? strB2 : TextUtils.isEmpty(strB2) ? strB : jo.c(jo.x(strB2, jo.x(strB, 1)), strB, ",", strB2);
    }
}
