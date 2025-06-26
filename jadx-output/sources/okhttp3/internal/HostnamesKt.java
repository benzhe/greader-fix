package okhttp3.internal;

import defpackage.co7;
import defpackage.im7;
import defpackage.xs7;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Locale;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (im7.g(cCharAt, 31) <= 0 || im7.g(cCharAt, 127) >= 0 || co7.k(" #%/:?@[\\]", cCharAt, 0, false, 6) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        while (i < i2) {
            if (i4 == bArr.length) {
                return false;
            }
            if (i4 != i3) {
                if (str.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char cCharAt = str.charAt(i5);
                if (im7.g(cCharAt, 48) < 0 || im7.g(cCharAt, 57) > 0) {
                    break;
                }
                if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i == 0) {
                return false;
            }
            bArr[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        return i4 == i3 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0078, code lost:
    
        if (r4 == 16) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007a, code lost:
    
        if (r5 != (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007d, code lost:
    
        r11 = r4 - r5;
        java.lang.System.arraycopy(r1, r5, r1, 16 - r11, r11);
        java.util.Arrays.fill(r1, r5, (16 - r4) + r5, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008e, code lost:
    
        return java.net.InetAddress.getByAddress(r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.net.InetAddress decodeIpv6(java.lang.String r11, int r12, int r13) {
        /*
            r0 = 16
            byte[] r1 = new byte[r0]
            r2 = -1
            r3 = 0
            r4 = 0
            r5 = -1
            r6 = -1
        L9:
            r7 = 0
            if (r12 >= r13) goto L78
            if (r4 != r0) goto Lf
            return r7
        Lf:
            int r8 = r12 + 2
            r9 = 4
            if (r8 > r13) goto L27
            java.lang.String r10 = "::"
            boolean r10 = defpackage.co7.z(r11, r10, r12, r3, r9)
            if (r10 == 0) goto L27
            if (r5 == r2) goto L1f
            return r7
        L1f:
            int r4 = r4 + 2
            r5 = r4
            if (r8 != r13) goto L25
            goto L78
        L25:
            r6 = r8
            goto L4a
        L27:
            if (r4 == 0) goto L49
            java.lang.String r8 = ":"
            boolean r8 = defpackage.co7.z(r11, r8, r12, r3, r9)
            if (r8 == 0) goto L34
            int r12 = r12 + 1
            goto L49
        L34:
            java.lang.String r8 = "."
            boolean r12 = defpackage.co7.z(r11, r8, r12, r3, r9)
            if (r12 == 0) goto L48
            int r12 = r4 + (-2)
            boolean r11 = decodeIpv4Suffix(r11, r6, r13, r1, r12)
            if (r11 != 0) goto L45
            return r7
        L45:
            int r4 = r4 + 2
            goto L78
        L48:
            return r7
        L49:
            r6 = r12
        L4a:
            r12 = r6
            r8 = 0
        L4c:
            if (r12 >= r13) goto L5f
            char r10 = r11.charAt(r12)
            int r10 = okhttp3.internal.Util.parseHexDigit(r10)
            if (r10 != r2) goto L59
            goto L5f
        L59:
            int r8 = r8 << 4
            int r8 = r8 + r10
            int r12 = r12 + 1
            goto L4c
        L5f:
            int r10 = r12 - r6
            if (r10 == 0) goto L77
            if (r10 <= r9) goto L66
            goto L77
        L66:
            int r7 = r4 + 1
            int r9 = r8 >>> 8
            r9 = r9 & 255(0xff, float:3.57E-43)
            byte r9 = (byte) r9
            r1[r4] = r9
            int r4 = r7 + 1
            r8 = r8 & 255(0xff, float:3.57E-43)
            byte r8 = (byte) r8
            r1[r7] = r8
            goto L9
        L77:
            return r7
        L78:
            if (r4 == r0) goto L8a
            if (r5 != r2) goto L7d
            return r7
        L7d:
            int r11 = r4 - r5
            int r12 = 16 - r11
            java.lang.System.arraycopy(r1, r5, r1, r12, r11)
            int r0 = r0 - r4
            int r0 = r0 + r5
            byte r11 = (byte) r3
            java.util.Arrays.fill(r1, r5, r0, r11)
        L8a:
            java.net.InetAddress r11 = java.net.InetAddress.getByAddress(r1)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.HostnamesKt.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i = 0;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            int i5 = i3;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i2 = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        xs7 xs7Var = new xs7();
        while (i < bArr.length) {
            if (i == i2) {
                xs7Var.Q(58);
                i += i4;
                if (i == 16) {
                    xs7Var.Q(58);
                }
            } else {
                if (i > 0) {
                    xs7Var.Q(58);
                }
                xs7Var.c0((Util.and(bArr[i], Base64.BASELENGTH) << 8) | Util.and(bArr[i + 1], Base64.BASELENGTH));
                i += 2;
            }
        }
        return xs7Var.t();
    }

    public static final String toCanonicalHost(String str) {
        im7.e(str, "$this$toCanonicalHost");
        if (!co7.b(str, ":", false, 2)) {
            try {
                String ascii = IDN.toASCII(str);
                im7.d(ascii, "IDN.toASCII(host)");
                Locale locale = Locale.US;
                im7.d(locale, "Locale.US");
                String lowerCase = ascii.toLowerCase(locale);
                im7.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                if (lowerCase.length() == 0) {
                    return null;
                }
                if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressDecodeIpv6 = (co7.A(str, "[", false, 2) && co7.d(str, "]", false, 2)) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
        if (inetAddressDecodeIpv6 == null) {
            return null;
        }
        byte[] address = inetAddressDecodeIpv6.getAddress();
        if (address.length == 16) {
            im7.d(address, InetAddressKeys.KEY_ADDRESS);
            return inet6AddressToAscii(address);
        }
        if (address.length == 4) {
            return inetAddressDecodeIpv6.getHostAddress();
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
    }
}
