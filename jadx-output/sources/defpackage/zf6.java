package defpackage;

import java.util.TimeZone;

/* loaded from: classes.dex */
public class zf6 {
    public static final TimeZone a = TimeZone.getTimeZone("UTC");

    public static boolean a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00e1 A[Catch: IllegalArgumentException -> 0x01d0, NumberFormatException -> 0x01d2, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:37:0x009c, B:39:0x00a2, B:44:0x00af, B:46:0x00b6, B:57:0x00db, B:59:0x00e1, B:61:0x00e8, B:86:0x0197, B:66:0x00f4, B:67:0x010f, B:68:0x0110, B:72:0x012c, B:74:0x0139, B:77:0x0142, B:79:0x0161, B:82:0x0170, B:83:0x0192, B:85:0x0195, B:71:0x011b, B:88:0x01c8, B:89:0x01cf, B:50:0x00c6, B:51:0x00c9, B:45:0x00b2), top: B:105:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c8 A[Catch: IllegalArgumentException -> 0x01d0, NumberFormatException -> 0x01d2, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01d4, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:37:0x009c, B:39:0x00a2, B:44:0x00af, B:46:0x00b6, B:57:0x00db, B:59:0x00e1, B:61:0x00e8, B:86:0x0197, B:66:0x00f4, B:67:0x010f, B:68:0x0110, B:72:0x012c, B:74:0x0139, B:77:0x0142, B:79:0x0161, B:82:0x0170, B:83:0x0192, B:85:0x0195, B:71:0x011b, B:88:0x01c8, B:89:0x01cf, B:50:0x00c6, B:51:0x00c9, B:45:0x00b2), top: B:105:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date b(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zf6.b(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int c(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int iDigit = Character.digit(str.charAt(i), 10);
            if (iDigit < 0) {
                StringBuilder sbZ = jo.z("Invalid number: ");
                sbZ.append(str.substring(i, i2));
                throw new NumberFormatException(sbZ.toString());
            }
            i3 = -iDigit;
        } else {
            i3 = 0;
            i4 = i;
        }
        while (i4 < i2) {
            int i5 = i4 + 1;
            int iDigit2 = Character.digit(str.charAt(i4), 10);
            if (iDigit2 < 0) {
                StringBuilder sbZ2 = jo.z("Invalid number: ");
                sbZ2.append(str.substring(i, i2));
                throw new NumberFormatException(sbZ2.toString());
            }
            i3 = (i3 * 10) - iDigit2;
            i4 = i5;
        }
        return -i3;
    }
}
