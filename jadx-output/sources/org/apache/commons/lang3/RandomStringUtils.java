package org.apache.commons.lang3;

import defpackage.jo;
import java.util.Random;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.text.RandomStringGenerator;

/* loaded from: classes2.dex */
public class RandomStringUtils {
    private static final Random RANDOM = new Random();

    public static String random(int i) {
        return random(i, false, false);
    }

    public static String randomAlphabetic(int i) {
        return random(i, true, false);
    }

    public static String randomAlphanumeric(int i) {
        return random(i, true, true);
    }

    public static String randomAscii(int i) {
        return random(i, 32, 127, false, false);
    }

    public static String randomGraph(int i) {
        return random(i, 33, WebSocketProtocol.PAYLOAD_SHORT, false, false);
    }

    public static String randomNumeric(int i) {
        return random(i, false, true);
    }

    public static String randomPrint(int i) {
        return random(i, 32, WebSocketProtocol.PAYLOAD_SHORT, false, false);
    }

    public static String random(int i, boolean z, boolean z2) {
        return random(i, 0, 0, z, z2);
    }

    public static String randomAlphabetic(int i, int i2) {
        return randomAlphabetic(RandomUtils.nextInt(i, i2));
    }

    public static String randomAlphanumeric(int i, int i2) {
        return randomAlphanumeric(RandomUtils.nextInt(i, i2));
    }

    public static String randomAscii(int i, int i2) {
        return randomAscii(RandomUtils.nextInt(i, i2));
    }

    public static String randomGraph(int i, int i2) {
        return randomGraph(RandomUtils.nextInt(i, i2));
    }

    public static String randomNumeric(int i, int i2) {
        return randomNumeric(RandomUtils.nextInt(i, i2));
    }

    public static String randomPrint(int i, int i2) {
        return randomPrint(RandomUtils.nextInt(i, i2));
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2) {
        return random(i, i2, i3, z, z2, null, RANDOM);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2, char... cArr) {
        return random(i, i2, i3, z, z2, cArr, RANDOM);
    }

    public static String random(int i, int i2, int i3, boolean z, boolean z2, char[] cArr, Random random) {
        int i4;
        if (i == 0) {
            return "";
        }
        if (i >= 0) {
            if (cArr != null && cArr.length == 0) {
                throw new IllegalArgumentException("The chars array must not be empty");
            }
            if (i2 == 0 && i3 == 0) {
                if (cArr != null) {
                    i3 = cArr.length;
                } else if (z || z2) {
                    i3 = 123;
                    i2 = 32;
                } else {
                    i3 = RandomStringGenerator.Builder.DEFAULT_MAXIMUM_CODE_POINT;
                }
            } else if (i3 <= i2) {
                throw new IllegalArgumentException("Parameter end (" + i3 + ") must be greater than start (" + i2 + ")");
            }
            if (cArr == null && ((z2 && i3 <= 48) || (z && i3 <= 65))) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parameter end (");
                sb.append(i3);
                sb.append(") must be greater then (");
                sb.append(48);
                sb.append(") for generating digits or greater then (");
                throw new IllegalArgumentException(jo.q(sb, 65, ") for generating letters."));
            }
            StringBuilder sb2 = new StringBuilder(i);
            int i5 = i3 - i2;
            while (true) {
                int i6 = i - 1;
                if (i != 0) {
                    if (cArr == null) {
                        int iNextInt = random.nextInt(i5) + i2;
                        int type = Character.getType(iNextInt);
                        if (type != 0 && type != 18) {
                            i4 = iNextInt;
                            if (type != 19) {
                            }
                        }
                        i = i6 + 1;
                    } else {
                        i4 = cArr[random.nextInt(i5) + i2];
                    }
                    int iCharCount = Character.charCount(i4);
                    if (i6 != 0 || iCharCount <= 1) {
                        if (!(z && Character.isLetter(i4)) && (!(z2 && Character.isDigit(i4)) && (z || z2))) {
                            i6++;
                        } else {
                            sb2.appendCodePoint(i4);
                            if (iCharCount == 2) {
                                i6--;
                            }
                        }
                        i = i6;
                    } else {
                        i = i6 + 1;
                    }
                } else {
                    return sb2.toString();
                }
            }
        } else {
            throw new IllegalArgumentException(jo.h("Requested random string length ", i, " is less than 0."));
        }
    }

    public static String random(int i, String str) {
        if (str == null) {
            return random(i, 0, 0, false, false, null, RANDOM);
        }
        return random(i, str.toCharArray());
    }

    public static String random(int i, char... cArr) {
        if (cArr == null) {
            return random(i, 0, 0, false, false, null, RANDOM);
        }
        return random(i, 0, cArr.length, false, false, cArr, RANDOM);
    }
}
