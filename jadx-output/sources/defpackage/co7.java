package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class co7 extends ao7 {
    public static /* synthetic */ boolean A(String str, String str2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        return x(str, str2, z);
    }

    public static final String B(CharSequence charSequence, dn7 dn7Var) {
        im7.e(charSequence, "$this$substring");
        im7.e(dn7Var, "range");
        return charSequence.subSequence(Integer.valueOf(dn7Var.e).intValue(), Integer.valueOf(dn7Var.f).intValue() + 1).toString();
    }

    public static String C(String str, char c, String str2, int i) {
        String str3 = (i & 2) != 0 ? str : null;
        im7.e(str, "$this$substringAfterLast");
        im7.e(str3, "missingDelimiterValue");
        int iO = o(str, c, 0, false, 6);
        if (iO == -1) {
            return str3;
        }
        String strSubstring = str.substring(iO + 1, str.length());
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Integer D(java.lang.String r11) {
        /*
            java.lang.String r0 = "$this$toIntOrNull"
            defpackage.im7.e(r11, r0)
            defpackage.im7.e(r11, r0)
            r0 = 10
            defpackage.n56.v(r0)
            int r1 = r11.length()
            r2 = 0
            if (r1 != 0) goto L15
            goto L6d
        L15:
            r3 = 0
            char r4 = r11.charAt(r3)
            r5 = 48
            int r5 = defpackage.im7.g(r4, r5)
            r6 = -2147483647(0xffffffff80000001, float:-1.4E-45)
            r7 = 1
            if (r5 >= 0) goto L37
            if (r1 != r7) goto L29
            goto L6d
        L29:
            r5 = 45
            if (r4 != r5) goto L31
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = 1
            goto L39
        L31:
            r5 = 43
            if (r4 != r5) goto L6d
            r4 = 1
            goto L38
        L37:
            r4 = 0
        L38:
            r7 = 0
        L39:
            r5 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
            r8 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
        L3f:
            if (r4 >= r1) goto L60
            char r9 = r11.charAt(r4)
            int r9 = java.lang.Character.digit(r9, r0)
            if (r9 >= 0) goto L4c
            goto L6d
        L4c:
            if (r3 >= r8) goto L55
            if (r8 != r5) goto L6d
            int r8 = r6 / 10
            if (r3 >= r8) goto L55
            goto L6d
        L55:
            int r3 = r3 * 10
            int r10 = r6 + r9
            if (r3 >= r10) goto L5c
            goto L6d
        L5c:
            int r3 = r3 - r9
            int r4 = r4 + 1
            goto L3f
        L60:
            if (r7 == 0) goto L67
            java.lang.Integer r11 = java.lang.Integer.valueOf(r3)
            goto L6c
        L67:
            int r11 = -r3
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
        L6c:
            r2 = r11
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.co7.D(java.lang.String):java.lang.Integer");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005f A[PHI: r11
      0x005f: PHI (r11v2 long) = (r11v1 long), (r11v4 long) binds: [B:22:0x0051, B:26:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Long E(java.lang.String r18) {
        /*
            r0 = r18
            java.lang.String r1 = "$this$toLongOrNull"
            defpackage.im7.e(r0, r1)
            defpackage.im7.e(r0, r1)
            r1 = 10
            defpackage.n56.v(r1)
            int r2 = r18.length()
            if (r2 != 0) goto L16
            goto L69
        L16:
            r3 = 0
            char r4 = r0.charAt(r3)
            r5 = 48
            int r5 = defpackage.im7.g(r4, r5)
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = 1
            if (r5 >= 0) goto L39
            if (r2 != r8) goto L2c
            goto L69
        L2c:
            r5 = 45
            if (r4 != r5) goto L34
            r6 = -9223372036854775808
            r3 = 1
            goto L3a
        L34:
            r5 = 43
            if (r4 != r5) goto L69
            goto L3a
        L39:
            r8 = 0
        L3a:
            r4 = 0
            r9 = -256204778801521550(0xfc71c71c71c71c72, double:-2.772000429909333E291)
            r11 = r9
        L42:
            if (r8 >= r2) goto L6f
            char r13 = r0.charAt(r8)
            int r13 = java.lang.Character.digit(r13, r1)
            if (r13 >= 0) goto L4f
            goto L69
        L4f:
            int r14 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r14 >= 0) goto L5f
            int r14 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r14 != 0) goto L69
            long r11 = (long) r1
            long r11 = r6 / r11
            int r14 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r14 >= 0) goto L5f
            goto L69
        L5f:
            long r14 = (long) r1
            long r4 = r4 * r14
            long r13 = (long) r13
            long r15 = r6 + r13
            int r17 = (r4 > r15 ? 1 : (r4 == r15 ? 0 : -1))
            if (r17 >= 0) goto L6b
        L69:
            r0 = 0
            goto L7b
        L6b:
            long r4 = r4 - r13
            int r8 = r8 + 1
            goto L42
        L6f:
            if (r3 == 0) goto L76
            java.lang.Long r0 = java.lang.Long.valueOf(r4)
            goto L7b
        L76:
            long r0 = -r4
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
        L7b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.co7.E(java.lang.String):java.lang.Long");
    }

    public static final CharSequence F(CharSequence charSequence) {
        im7.e(charSequence, "$this$trim");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zO1 = n56.o1(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zO1) {
                    break;
                }
                length--;
            } else if (zO1) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static String G(String str, String str2, int i) throws IOException {
        String strSubstring;
        String str3 = (i & 1) != 0 ? "|" : null;
        im7.e(str, "$this$trimMargin");
        im7.e(str3, "marginPrefix");
        im7.e(str, "$this$replaceIndentByMargin");
        im7.e("", "newIndent");
        im7.e(str3, "marginPrefix");
        if (!(!n(str3))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        im7.e(str, "$this$lines");
        im7.e(str, "$this$lineSequence");
        String[] strArr = {IOUtils.LINE_SEPARATOR_WINDOWS, "\n", StringUtils.CR};
        im7.e(str, "$this$splitToSequence");
        im7.e(strArr, "delimiters");
        xn7 xn7Var = new xn7(str, 0, 0, new eo7(ek7.a(strArr), false));
        fo7 fo7Var = new fo7(str);
        im7.e(xn7Var, "$this$map");
        im7.e(fo7Var, "transform");
        List listU2 = n56.u2(new vn7(xn7Var, fo7Var));
        int size = (listU2.size() * 0) + str.length();
        bo7 bo7Var = bo7.e;
        int iH = ek7.h(listU2);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : listU2) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                ek7.q();
                throw null;
            }
            String str4 = (String) obj;
            if ((i2 == 0 || i2 == iH) && n(str4)) {
                str4 = null;
            } else {
                int length = str4.length();
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        i4 = -1;
                        break;
                    }
                    if (!n56.o1(str4.charAt(i4))) {
                        break;
                    }
                    i4++;
                }
                if (i4 != -1 && z(str4, str3, i4, false, 4)) {
                    strSubstring = str4.substring(str3.length() + i4);
                    im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
                } else {
                    strSubstring = null;
                }
                if (strSubstring != null) {
                    str4 = (String) bo7Var.invoke(strSubstring);
                }
            }
            if (str4 != null) {
                arrayList.add(str4);
            }
            i2 = i3;
        }
        StringBuilder sb = new StringBuilder(size);
        ek7.j(arrayList, sb, "\n", "", "", -1, "...", null);
        String string = sb.toString();
        im7.d(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }

    public static boolean a(CharSequence charSequence, char c, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        im7.e(charSequence, "$this$contains");
        return k(charSequence, c, 0, z, 2) >= 0;
    }

    public static boolean b(CharSequence charSequence, CharSequence charSequence2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        im7.e(charSequence, "$this$contains");
        im7.e(charSequence2, "other");
        return l(charSequence, (String) charSequence2, 0, z, 2) >= 0;
    }

    public static boolean c(CharSequence charSequence, CharSequence charSequence2, boolean z, int i) {
        boolean z2 = (i & 2) != 0 ? false : z;
        im7.e(charSequence, "$this$endsWith");
        im7.e(charSequence2, "suffix");
        return (z2 || !(charSequence2 instanceof String)) ? s(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), z2) : d((String) charSequence, (String) charSequence2, false, 2);
    }

    public static boolean d(String str, String str2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        im7.e(str, "$this$endsWith");
        im7.e(str2, "suffix");
        return !z ? str.endsWith(str2) : q(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static final boolean e(String str, String str2, boolean z) {
        return str == null ? str2 == null : !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static final Comparator<String> f(um7 um7Var) {
        im7.e(um7Var, "$this$CASE_INSENSITIVE_ORDER");
        Comparator<String> comparator = String.CASE_INSENSITIVE_ORDER;
        im7.d(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
        return comparator;
    }

    public static final int g(CharSequence charSequence) {
        im7.e(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    public static final int h(CharSequence charSequence, String str, int i, boolean z) {
        im7.e(charSequence, "$this$indexOf");
        im7.e(str, "string");
        return (z || !(charSequence instanceof String)) ? j(charSequence, str, i, charSequence.length(), z, false, 16) : ((String) charSequence).indexOf(str, i);
    }

    public static final int i(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        bn7 bn7VarB;
        if (z2) {
            int iG = g(charSequence);
            if (i > iG) {
                i = iG;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            bn7VarB = en7.b(i, i2);
        } else {
            if (i < 0) {
                i = 0;
            }
            int length = charSequence.length();
            if (i2 > length) {
                i2 = length;
            }
            bn7VarB = new dn7(i, i2);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int i3 = bn7VarB.e;
            int i4 = bn7VarB.f;
            int i5 = bn7VarB.g;
            if (i5 >= 0) {
                if (i3 > i4) {
                    return -1;
                }
            } else if (i3 < i4) {
                return -1;
            }
            while (!q((String) charSequence2, 0, (String) charSequence, i3, charSequence2.length(), z)) {
                if (i3 == i4) {
                    return -1;
                }
                i3 += i5;
            }
            return i3;
        }
        int i6 = bn7VarB.e;
        int i7 = bn7VarB.f;
        int i8 = bn7VarB.g;
        if (i8 >= 0) {
            if (i6 > i7) {
                return -1;
            }
        } else if (i6 < i7) {
            return -1;
        }
        while (!s(charSequence2, 0, charSequence, i6, charSequence2.length(), z)) {
            if (i6 == i7) {
                return -1;
            }
            i6 += i8;
        }
        return i6;
    }

    public static /* synthetic */ int j(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3) {
        return i(charSequence, charSequence2, i, i2, z, (i3 & 16) != 0 ? false : z2);
    }

    public static int k(CharSequence charSequence, char c, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        im7.e(charSequence, "$this$indexOf");
        return (z || !(charSequence instanceof String)) ? m(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int l(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return h(charSequence, str, i, z);
    }

    public static final int m(CharSequence charSequence, char[] cArr, int i, boolean z) {
        boolean z2;
        im7.e(charSequence, "$this$indexOfAny");
        im7.e(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(n56.a2(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int iG = g(charSequence);
        if (i > iG) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i);
            int length = cArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = false;
                    break;
                }
                if (n56.v0(cArr[i2], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                return i;
            }
            if (i == iG) {
                return -1;
            }
            i++;
        }
    }

    public static final boolean n(CharSequence charSequence) {
        boolean z;
        im7.e(charSequence, "$this$isBlank");
        if (charSequence.length() == 0) {
            return true;
        }
        im7.e(charSequence, "$this$indices");
        Iterable dn7Var = new dn7(0, charSequence.length() - 1);
        if ((dn7Var instanceof Collection) && ((Collection) dn7Var).isEmpty()) {
            z = true;
        } else {
            Iterator<Integer> it = dn7Var.iterator();
            while (((cn7) it).f) {
                if (!n56.o1(charSequence.charAt(((kk7) it).a()))) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z;
    }

    public static int o(CharSequence charSequence, char c, int i, boolean z, int i2) {
        boolean z2;
        if ((i2 & 2) != 0) {
            i = g(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        im7.e(charSequence, "$this$lastIndexOf");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(c, i);
        }
        char[] cArr = {c};
        im7.e(charSequence, "$this$lastIndexOfAny");
        im7.e(cArr, "chars");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(n56.a2(cArr), i);
        }
        int iG = g(charSequence);
        if (i > iG) {
            i = iG;
        }
        while (i >= 0) {
            char cCharAt = charSequence.charAt(i);
            int i3 = 0;
            while (true) {
                if (i3 >= 1) {
                    z2 = false;
                    break;
                }
                if (n56.v0(cArr[i3], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i3++;
            }
            if (z2) {
                return i;
            }
            i--;
        }
        return -1;
    }

    public static int p(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = g(charSequence);
        }
        int i3 = i;
        boolean z2 = (i2 & 4) != 0 ? false : z;
        im7.e(charSequence, "$this$lastIndexOf");
        im7.e(str, "string");
        return (z2 || !(charSequence instanceof String)) ? i(charSequence, str, i3, 0, z2, true) : ((String) charSequence).lastIndexOf(str, i3);
    }

    public static final boolean q(String str, int i, String str2, int i2, int i3, boolean z) {
        im7.e(str, "$this$regionMatches");
        im7.e(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    public static final boolean s(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        im7.e(charSequence, "$this$regionMatchesImpl");
        im7.e(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!n56.v0(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static final String t(String str, CharSequence charSequence) {
        im7.e(str, "$this$removePrefix");
        im7.e(charSequence, "prefix");
        if (!y(str, charSequence, false, 2)) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length());
        im7.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static String u(String str, String str2, String str3, boolean z, int i) {
        int i2 = 0;
        if ((i & 4) != 0) {
            z = false;
        }
        im7.e(str, "$this$replace");
        im7.e(str2, "oldValue");
        im7.e(str3, "newValue");
        int iH = h(str, str2, 0, z);
        if (iH < 0) {
            return str;
        }
        int length = str2.length();
        int i3 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i2, iH);
            sb.append(str3);
            i2 = iH + length;
            if (iH >= str.length()) {
                break;
            }
            iH = h(str, str2, iH + i3, z);
        } while (iH > 0);
        sb.append((CharSequence) str, i2, str.length());
        String string = sb.toString();
        im7.d(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }

    public static List v(CharSequence charSequence, char[] cArr, boolean z, int i, int i2) {
        int length = 0;
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        im7.e(charSequence, "$this$split");
        im7.e(cArr, "delimiters");
        int i3 = 10;
        if (cArr.length != 1) {
            if (!(i >= 0)) {
                throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + FilenameUtils.EXTENSION_SEPARATOR).toString());
            }
            xn7 xn7Var = new xn7(charSequence, 0, i, new do7(cArr, z));
            im7.e(xn7Var, "$this$asIterable");
            un7 un7Var = new un7(xn7Var);
            ArrayList arrayList = new ArrayList(n56.x(un7Var, 10));
            Iterator it = un7Var.iterator();
            while (it.hasNext()) {
                arrayList.add(B(charSequence, (dn7) it.next()));
            }
            return arrayList;
        }
        String strValueOf = String.valueOf(cArr[0]);
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + FilenameUtils.EXTENSION_SEPARATOR).toString());
        }
        int iH = h(charSequence, strValueOf, 0, z);
        if (iH == -1 || i == 1) {
            return n56.r1(charSequence.toString());
        }
        boolean z2 = i > 0;
        if (z2 && i <= 10) {
            i3 = i;
        }
        ArrayList arrayList2 = new ArrayList(i3);
        do {
            arrayList2.add(charSequence.subSequence(length, iH).toString());
            length = strValueOf.length() + iH;
            if (z2 && arrayList2.size() == i - 1) {
                break;
            }
            iH = h(charSequence, strValueOf, length, z);
        } while (iH != -1);
        arrayList2.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList2;
    }

    public static final boolean w(String str, String str2, int i, boolean z) {
        im7.e(str, "$this$startsWith");
        im7.e(str2, "prefix");
        return !z ? str.startsWith(str2, i) : q(str, i, str2, 0, str2.length(), z);
    }

    public static final boolean x(String str, String str2, boolean z) {
        im7.e(str, "$this$startsWith");
        im7.e(str2, "prefix");
        return !z ? str.startsWith(str2) : q(str, 0, str2, 0, str2.length(), z);
    }

    public static boolean y(CharSequence charSequence, CharSequence charSequence2, boolean z, int i) {
        boolean z2 = (i & 2) != 0 ? false : z;
        im7.e(charSequence, "$this$startsWith");
        im7.e(charSequence2, "prefix");
        return (z2 || !(charSequence2 instanceof String)) ? s(charSequence, 0, charSequence2, 0, charSequence2.length(), z2) : A((String) charSequence, (String) charSequence2, false, 2);
    }

    public static /* synthetic */ boolean z(String str, String str2, int i, boolean z, int i2) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return w(str, str2, i, z);
    }
}
