package org.apache.commons.lang3;

import defpackage.jo;
import java.util.UUID;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public class Conversion {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean[] TTTT = {true, true, true, true};
    private static final boolean[] FTTT = {false, true, true, true};
    private static final boolean[] TFTT = {true, false, true, true};
    private static final boolean[] FFTT = {false, false, true, true};
    private static final boolean[] TTFT = {true, true, false, true};
    private static final boolean[] FTFT = {false, true, false, true};
    private static final boolean[] TFFT = {true, false, false, true};
    private static final boolean[] FFFT = {false, false, false, true};
    private static final boolean[] TTTF = {true, true, true, false};
    private static final boolean[] FTTF = {false, true, true, false};
    private static final boolean[] TFTF = {true, false, true, false};
    private static final boolean[] FFTF = {false, false, true, false};
    private static final boolean[] TTFF = {true, true, false, false};
    private static final boolean[] FTFF = {false, true, false, false};
    private static final boolean[] TFFF = {true, false, false, false};
    private static final boolean[] FFFF = {false, false, false, false};

    public static char binaryBeMsb0ToHexDigit(boolean[] zArr) {
        return binaryBeMsb0ToHexDigit(zArr, 0);
    }

    public static byte binaryToByte(boolean[] zArr, int i, byte b, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return b;
        }
        if ((i3 - 1) + i2 >= 8) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 8");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 + i2;
            b = (byte) ((b & (~(1 << i5))) | ((zArr[i4 + i] ? 1 : 0) << i5));
        }
        return b;
    }

    public static char binaryToHexDigit(boolean[] zArr) {
        return binaryToHexDigit(zArr, 0);
    }

    public static char binaryToHexDigitMsb0_4bits(boolean[] zArr) {
        return binaryToHexDigitMsb0_4bits(zArr, 0);
    }

    public static int binaryToInt(boolean[] zArr, int i, int i2, int i3, int i4) {
        if ((zArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if ((i4 - 1) + i3 >= 32) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i5 + i3;
            i2 = (i2 & (~(1 << i6))) | ((zArr[i5 + i] ? 1 : 0) << i6);
        }
        return i2;
    }

    public static long binaryToLong(boolean[] zArr, int i, long j, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if ((i3 - 1) + i2 >= 64) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 + i2;
            j = (j & (~(1 << i5))) | ((zArr[i4 + i] ? 1L : 0L) << i5);
        }
        return j;
    }

    public static short binaryToShort(boolean[] zArr, int i, short s, int i2, int i3) {
        if ((zArr.length == 0 && i == 0) || i3 == 0) {
            return s;
        }
        if ((i3 - 1) + i2 >= 16) {
            throw new IllegalArgumentException("nBools-1+dstPos is greater or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 + i2;
            s = (short) ((s & (~(1 << i5))) | ((zArr[i4 + i] ? 1 : 0) << i5));
        }
        return s;
    }

    public static int byteArrayToInt(byte[] bArr, int i, int i2, int i3, int i4) {
        if ((bArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if (jo.b(i4, -1, 8, i3) >= 32) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 8) + i3;
            i2 = (i2 & (~(Base64.BASELENGTH << i6))) | ((bArr[i5 + i] & Base64.BASELENGTH) << i6);
        }
        return i2;
    }

    public static long byteArrayToLong(byte[] bArr, int i, long j, int i2, int i3) {
        if ((bArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (jo.b(i3, -1, 8, i2) >= 64) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 8) + i2;
            j = (j & (~(255 << i5))) | ((bArr[i4 + i] & 255) << i5);
        }
        return j;
    }

    public static short byteArrayToShort(byte[] bArr, int i, short s, int i2, int i3) {
        if ((bArr.length == 0 && i == 0) || i3 == 0) {
            return s;
        }
        if (jo.b(i3, -1, 8, i2) >= 16) {
            throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greater or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 8) + i2;
            s = (short) ((s & (~(Base64.BASELENGTH << i5))) | ((bArr[i4 + i] & Base64.BASELENGTH) << i5));
        }
        return s;
    }

    public static UUID byteArrayToUuid(byte[] bArr, int i) {
        if (bArr.length - i >= 16) {
            return new UUID(byteArrayToLong(bArr, i, 0L, 0, 8), byteArrayToLong(bArr, i + 8, 0L, 0, 8));
        }
        throw new IllegalArgumentException("Need at least 16 bytes for UUID");
    }

    public static boolean[] byteToBinary(byte b, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i >= 8) {
            throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 8");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            boolean z = true;
            if (((b >> (i4 + i)) & 1) == 0) {
                z = false;
            }
            zArr[i5] = z;
        }
        return zArr;
    }

    public static String byteToHex(byte b, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (jo.b(i3, -1, 4, i) >= 8) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 8");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (b >> ((i4 * 4) + i)) & 15;
            int i6 = i2 + i4;
            if (i6 == length) {
                length++;
                sb.append(intToHexDigit(i5));
            } else {
                sb.setCharAt(i6, intToHexDigit(i5));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean[] hexDigitMsb0ToBinary(char r3) {
        /*
            switch(r3) {
                case 48: goto Lac;
                case 49: goto La3;
                case 50: goto L9a;
                case 51: goto L91;
                case 52: goto L88;
                case 53: goto L7f;
                case 54: goto L76;
                case 55: goto L6d;
                case 56: goto L64;
                case 57: goto L5b;
                default: goto L3;
            }
        L3:
            switch(r3) {
                case 65: goto L52;
                case 66: goto L49;
                case 67: goto L40;
                case 68: goto L37;
                case 69: goto L2e;
                case 70: goto L25;
                default: goto L6;
            }
        L6:
            switch(r3) {
                case 97: goto L52;
                case 98: goto L49;
                case 99: goto L40;
                case 100: goto L37;
                case 101: goto L2e;
                case 102: goto L25;
                default: goto L9;
            }
        L9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Cannot interpret '"
            r1.append(r2)
            r1.append(r3)
            java.lang.String r3 = "' as a hexadecimal digit"
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            r0.<init>(r3)
            throw r0
        L25:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L2e:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L37:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L40:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L49:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L52:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L5b:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L64:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L6d:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L76:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L7f:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L88:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L91:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L9a:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        La3:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        Lac:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.Conversion.hexDigitMsb0ToBinary(char):boolean[]");
    }

    public static int hexDigitMsb0ToInt(char c) {
        switch (c) {
            case '0':
                return 0;
            case '1':
                return 8;
            case '2':
                return 4;
            case '3':
                return 12;
            case '4':
                return 2;
            case '5':
                return 10;
            case '6':
                return 6;
            case '7':
                return 14;
            case '8':
                return 1;
            case '9':
                return 9;
            default:
                switch (c) {
                    case 'A':
                        return 5;
                    case 'B':
                        return 13;
                    case 'C':
                        return 3;
                    case 'D':
                        return 11;
                    case 'E':
                        return 7;
                    case 'F':
                        return 15;
                    default:
                        switch (c) {
                            case 'a':
                                return 5;
                            case 'b':
                                return 13;
                            case 'c':
                                return 3;
                            case 'd':
                                return 11;
                            case 'e':
                                return 7;
                            case 'f':
                                return 15;
                            default:
                                throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
                        }
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean[] hexDigitToBinary(char r3) {
        /*
            switch(r3) {
                case 48: goto Lac;
                case 49: goto La3;
                case 50: goto L9a;
                case 51: goto L91;
                case 52: goto L88;
                case 53: goto L7f;
                case 54: goto L76;
                case 55: goto L6d;
                case 56: goto L64;
                case 57: goto L5b;
                default: goto L3;
            }
        L3:
            switch(r3) {
                case 65: goto L52;
                case 66: goto L49;
                case 67: goto L40;
                case 68: goto L37;
                case 69: goto L2e;
                case 70: goto L25;
                default: goto L6;
            }
        L6:
            switch(r3) {
                case 97: goto L52;
                case 98: goto L49;
                case 99: goto L40;
                case 100: goto L37;
                case 101: goto L2e;
                case 102: goto L25;
                default: goto L9;
            }
        L9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Cannot interpret '"
            r1.append(r2)
            r1.append(r3)
            java.lang.String r3 = "' as a hexadecimal digit"
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            r0.<init>(r3)
            throw r0
        L25:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L2e:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L37:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L40:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L49:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L52:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L5b:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L64:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFT
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L6d:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L76:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L7f:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L88:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFTF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L91:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        L9a:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FTFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        La3:
            boolean[] r3 = org.apache.commons.lang3.Conversion.TFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        Lac:
            boolean[] r3 = org.apache.commons.lang3.Conversion.FFFF
            java.lang.Object r3 = r3.clone()
            boolean[] r3 = (boolean[]) r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.Conversion.hexDigitToBinary(char):boolean[]");
    }

    public static int hexDigitToInt(char c) {
        int iDigit = Character.digit(c, 16);
        if (iDigit >= 0) {
            return iDigit;
        }
        throw new IllegalArgumentException("Cannot interpret '" + c + "' as a hexadecimal digit");
    }

    public static byte hexToByte(String str, int i, byte b, int i2, int i3) {
        if (i3 == 0) {
            return b;
        }
        if (jo.b(i3, -1, 4, i2) >= 8) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 8");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            b = (byte) ((b & (~(15 << i5))) | ((hexDigitToInt(str.charAt(i4 + i)) & 15) << i5));
        }
        return b;
    }

    public static int hexToInt(String str, int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            return i2;
        }
        if (jo.b(i4, -1, 4, i3) >= 32) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 4) + i3;
            i2 = (i2 & (~(15 << i6))) | ((hexDigitToInt(str.charAt(i5 + i)) & 15) << i6);
        }
        return i2;
    }

    public static long hexToLong(String str, int i, long j, int i2, int i3) {
        if (i3 == 0) {
            return j;
        }
        if (jo.b(i3, -1, 4, i2) >= 64) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            j = (j & (~(15 << i5))) | ((hexDigitToInt(str.charAt(i4 + i)) & 15) << i5);
        }
        return j;
    }

    public static short hexToShort(String str, int i, short s, int i2, int i3) {
        if (i3 == 0) {
            return s;
        }
        if (jo.b(i3, -1, 4, i2) >= 16) {
            throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greater or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            s = (short) ((s & (~(15 << i5))) | ((hexDigitToInt(str.charAt(i4 + i)) & 15) << i5));
        }
        return s;
    }

    public static long intArrayToLong(int[] iArr, int i, long j, int i2, int i3) {
        if ((iArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (jo.b(i3, -1, 32, i2) >= 64) {
            throw new IllegalArgumentException("(nInts-1)*32+dstPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 32) + i2;
            j = (j & (~(4294967295 << i5))) | ((iArr[i4 + i] & 4294967295L) << i5);
        }
        return j;
    }

    public static boolean[] intToBinary(int i, int i2, boolean[] zArr, int i3, int i4) {
        if (i4 == 0) {
            return zArr;
        }
        if ((i4 - 1) + i2 >= 32) {
            throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i3 + i5;
            boolean z = true;
            if (((i >> (i5 + i2)) & 1) == 0) {
                z = false;
            }
            zArr[i6] = z;
        }
        return zArr;
    }

    public static byte[] intToByteArray(int i, int i2, byte[] bArr, int i3, int i4) {
        if (i4 == 0) {
            return bArr;
        }
        if (jo.b(i4, -1, 8, i2) >= 32) {
            throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            bArr[i3 + i5] = (byte) ((i >> ((i5 * 8) + i2)) & Base64.BASELENGTH);
        }
        return bArr;
    }

    public static String intToHex(int i, int i2, String str, int i3, int i4) {
        if (i4 == 0) {
            return str;
        }
        if (jo.b(i4, -1, 4, i2) >= 32) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 32");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i >> ((i5 * 4) + i2)) & 15;
            int i7 = i3 + i5;
            if (i7 == length) {
                length++;
                sb.append(intToHexDigit(i6));
            } else {
                sb.setCharAt(i7, intToHexDigit(i6));
            }
        }
        return sb.toString();
    }

    public static char intToHexDigit(int i) {
        char cForDigit = Character.forDigit(i, 16);
        if (cForDigit != 0) {
            return cForDigit;
        }
        throw new IllegalArgumentException(jo.g("nibble value not between 0 and 15: ", i));
    }

    public static char intToHexDigitMsb0(int i) {
        switch (i) {
            case 0:
                return '0';
            case 1:
                return '8';
            case 2:
                return '4';
            case 3:
                return 'c';
            case 4:
                return '2';
            case 5:
                return 'a';
            case 6:
                return '6';
            case 7:
                return 'e';
            case 8:
                return '1';
            case 9:
                return '9';
            case 10:
                return '5';
            case 11:
                return 'd';
            case 12:
                return '3';
            case 13:
                return 'b';
            case 14:
                return '7';
            case 15:
                return 'f';
            default:
                throw new IllegalArgumentException(jo.g("nibble value not between 0 and 15: ", i));
        }
    }

    public static short[] intToShortArray(int i, int i2, short[] sArr, int i3, int i4) {
        if (i4 == 0) {
            return sArr;
        }
        if (jo.b(i4, -1, 16, i2) >= 32) {
            throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            sArr[i3 + i5] = (short) ((i >> ((i5 * 16) + i2)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        }
        return sArr;
    }

    public static boolean[] longToBinary(long j, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i >= 64) {
            throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            zArr[i2 + i4] = (1 & (j >> (i4 + i))) != 0;
        }
        return zArr;
    }

    public static byte[] longToByteArray(long j, int i, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return bArr;
        }
        if (jo.b(i3, -1, 8, i) >= 64) {
            throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i2 + i4] = (byte) (255 & (j >> ((i4 * 8) + i)));
        }
        return bArr;
    }

    public static String longToHex(long j, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (jo.b(i3, -1, 4, i) >= 64) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 64");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (int) ((j >> ((i4 * 4) + i)) & 15);
            int i6 = i2 + i4;
            if (i6 == length) {
                length++;
                sb.append(intToHexDigit(i5));
            } else {
                sb.setCharAt(i6, intToHexDigit(i5));
            }
        }
        return sb.toString();
    }

    public static int[] longToIntArray(long j, int i, int[] iArr, int i2, int i3) {
        if (i3 == 0) {
            return iArr;
        }
        if (jo.b(i3, -1, 32, i) >= 64) {
            throw new IllegalArgumentException("(nInts-1)*32+srcPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = (int) ((-1) & (j >> ((i4 * 32) + i)));
        }
        return iArr;
    }

    public static short[] longToShortArray(long j, int i, short[] sArr, int i2, int i3) {
        if (i3 == 0) {
            return sArr;
        }
        if (jo.b(i3, -1, 16, i) >= 64) {
            throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            sArr[i2 + i4] = (short) (WebSocketProtocol.PAYLOAD_SHORT_MAX & (j >> ((i4 * 16) + i)));
        }
        return sArr;
    }

    public static int shortArrayToInt(short[] sArr, int i, int i2, int i3, int i4) {
        if ((sArr.length == 0 && i == 0) || i4 == 0) {
            return i2;
        }
        if (jo.b(i4, -1, 16, i3) >= 32) {
            throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greater or equal to than 32");
        }
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i5 * 16) + i3;
            i2 = (i2 & (~(Settings.DEFAULT_INITIAL_WINDOW_SIZE << i6))) | ((sArr[i5 + i] & 65535) << i6);
        }
        return i2;
    }

    public static long shortArrayToLong(short[] sArr, int i, long j, int i2, int i3) {
        if ((sArr.length == 0 && i == 0) || i3 == 0) {
            return j;
        }
        if (jo.b(i3, -1, 16, i2) >= 64) {
            throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greater or equal to than 64");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 16) + i2;
            j = (j & (~(WebSocketProtocol.PAYLOAD_SHORT_MAX << i5))) | ((sArr[i4 + i] & WebSocketProtocol.PAYLOAD_SHORT_MAX) << i5);
        }
        return j;
    }

    public static boolean[] shortToBinary(short s, int i, boolean[] zArr, int i2, int i3) {
        if (i3 == 0) {
            return zArr;
        }
        if ((i3 - 1) + i >= 16) {
            throw new IllegalArgumentException("nBools-1+srcPos is greater or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            boolean z = true;
            if (((s >> (i4 + i)) & 1) == 0) {
                z = false;
            }
            zArr[i5] = z;
        }
        return zArr;
    }

    public static byte[] shortToByteArray(short s, int i, byte[] bArr, int i2, int i3) {
        if (i3 == 0) {
            return bArr;
        }
        if (jo.b(i3, -1, 8, i) >= 16) {
            throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greater or equal to than 16");
        }
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i2 + i4] = (byte) ((s >> ((i4 * 8) + i)) & Base64.BASELENGTH);
        }
        return bArr;
    }

    public static String shortToHex(short s, int i, String str, int i2, int i3) {
        if (i3 == 0) {
            return str;
        }
        if (jo.b(i3, -1, 4, i) >= 16) {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greater or equal to than 16");
        }
        StringBuilder sb = new StringBuilder(str);
        int length = sb.length();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (s >> ((i4 * 4) + i)) & 15;
            int i6 = i2 + i4;
            if (i6 == length) {
                length++;
                sb.append(intToHexDigit(i5));
            } else {
                sb.setCharAt(i6, intToHexDigit(i5));
            }
        }
        return sb.toString();
    }

    public static byte[] uuidToByteArray(UUID uuid, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return bArr;
        }
        if (i2 > 16) {
            throw new IllegalArgumentException("nBytes is greater than 16");
        }
        longToByteArray(uuid.getMostSignificantBits(), 0, bArr, i, Math.min(i2, 8));
        if (i2 >= 8) {
            longToByteArray(uuid.getLeastSignificantBits(), 0, bArr, i + 8, i2 - 8);
        }
        return bArr;
    }

    public static char binaryBeMsb0ToHexDigit(boolean[] zArr, int i) {
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int length = ((zArr.length - 1) - i) + 1;
        int iMin = Math.min(4, length);
        boolean[] zArr2 = new boolean[4];
        System.arraycopy(zArr, length - iMin, zArr2, 4 - iMin, iMin);
        return zArr2[0] ? zArr2[1] ? zArr2[2] ? zArr2[3] ? 'f' : 'e' : zArr2[3] ? 'd' : 'c' : zArr2[2] ? zArr2[3] ? 'b' : 'a' : zArr2[3] ? '9' : '8' : zArr2[1] ? zArr2[2] ? zArr2[3] ? '7' : '6' : zArr2[3] ? '5' : '4' : zArr2[2] ? zArr2[3] ? '3' : '2' : zArr2[3] ? '1' : '0';
    }

    public static char binaryToHexDigit(boolean[] zArr, int i) {
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int i2 = i + 3;
        if (zArr.length > i2 && zArr[i2]) {
            return zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'f' : 'e' : zArr[i] ? 'd' : 'c' : zArr[i + 1] ? zArr[i] ? 'b' : 'a' : zArr[i] ? '9' : '8';
        }
        int i3 = i + 2;
        if (zArr.length > i3 && zArr[i3]) {
            return zArr[i + 1] ? zArr[i] ? '7' : '6' : zArr[i] ? '5' : '4';
        }
        int i4 = i + 1;
        return (zArr.length <= i4 || !zArr[i4]) ? zArr[i] ? '1' : '0' : zArr[i] ? '3' : '2';
    }

    public static char binaryToHexDigitMsb0_4bits(boolean[] zArr, int i) {
        if (zArr.length > 8) {
            StringBuilder sbZ = jo.z("src.length>8: src.length=");
            sbZ.append(zArr.length);
            throw new IllegalArgumentException(sbZ.toString());
        }
        if (zArr.length - i >= 4) {
            return zArr[i + 3] ? zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'f' : '7' : zArr[i] ? 'b' : '3' : zArr[i + 1] ? zArr[i] ? 'd' : '5' : zArr[i] ? '9' : '1' : zArr[i + 2] ? zArr[i + 1] ? zArr[i] ? 'e' : '6' : zArr[i] ? 'a' : '2' : zArr[i + 1] ? zArr[i] ? 'c' : '4' : zArr[i] ? '8' : '0';
        }
        StringBuilder sbZ2 = jo.z("src.length-srcPos<4: src.length=");
        sbZ2.append(zArr.length);
        sbZ2.append(", srcPos=");
        sbZ2.append(i);
        throw new IllegalArgumentException(sbZ2.toString());
    }
}
