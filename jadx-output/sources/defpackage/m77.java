package defpackage;

import java.text.ParseException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class m77 {
    public static final long a = TimeUnit.SECONDS.toNanos(1);
    public static final /* synthetic */ int b = 0;

    public static List<Map<String, ?>> a(List<?> list) {
        for (int i = 0; i < list.size(); i++) {
            if (!(list.get(i) instanceof Map)) {
                throw new ClassCastException(String.format("value %s for idx %d in %s is not object", list.get(i), Integer.valueOf(i), list));
            }
        }
        return list;
    }

    public static List<?> b(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof List) {
            return (List) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
    }

    public static List<String> c(Map<String, ?> map, String str) {
        List listB = b(map, str);
        if (listB == null) {
            return null;
        }
        for (int i = 0; i < listB.size(); i++) {
            if (!(listB.get(i) instanceof String)) {
                throw new ClassCastException(String.format("value '%s' for idx %d in '%s' is not string", listB.get(i), Integer.valueOf(i), listB));
            }
        }
        return listB;
    }

    public static Double d(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Double) {
            return (Double) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Double", obj, str, map));
    }

    public static Integer e(Map<String, ?> map, String str) {
        Double d = d(map, str);
        if (d == null) {
            return null;
        }
        int iIntValue = d.intValue();
        if (iIntValue == d.doubleValue()) {
            return Integer.valueOf(iIntValue);
        }
        throw new ClassCastException("Number expected to be integer: " + d);
    }

    public static Map<String, ?> f(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
    }

    public static String g(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
    }

    public static Long h(Map<String, ?> map, String str) {
        String strG = g(map, str);
        if (strG == null) {
            return null;
        }
        try {
            return Long.valueOf(j(strG));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long i(long r18, int r20) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m77.i(long, int):long");
    }

    public static long j(String str) throws NumberFormatException, ParseException {
        boolean z;
        String strSubstring;
        int i;
        if (str.isEmpty() || str.charAt(str.length() - 1) != 's') {
            throw new ParseException(jo.n("Invalid duration string: ", str), 0);
        }
        if (str.charAt(0) == '-') {
            str = str.substring(1);
            z = true;
        } else {
            z = false;
        }
        String strSubstring2 = str.substring(0, str.length() - 1);
        int iIndexOf = strSubstring2.indexOf(46);
        if (iIndexOf != -1) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = "";
        }
        long j = Long.parseLong(strSubstring2);
        if (strSubstring.isEmpty()) {
            i = 0;
        } else {
            int iCharAt = 0;
            for (int i2 = 0; i2 < 9; i2++) {
                iCharAt *= 10;
                if (i2 < strSubstring.length()) {
                    if (strSubstring.charAt(i2) < '0' || strSubstring.charAt(i2) > '9') {
                        throw new ParseException("Invalid nanoseconds.", 0);
                    }
                    iCharAt = (strSubstring.charAt(i2) - '0') + iCharAt;
                }
            }
            i = iCharAt;
        }
        if (j < 0) {
            throw new ParseException(jo.n("Invalid duration string: ", str), 0);
        }
        if (z) {
            j = -j;
            i = -i;
        }
        try {
            return i(j, i);
        } catch (IllegalArgumentException unused) {
            throw new ParseException("Duration value is out of range.", 0);
        }
    }
}
