package defpackage;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class k04 {
    public static void d(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int iPosition = byteBuffer.position();
        int i = 0;
        while (i < length) {
            try {
                char cCharAt = charSequence.charAt(i);
                if (cCharAt >= 128) {
                    break;
                }
                byteBuffer.put(iPosition + i, (byte) cCharAt);
                i++;
            } catch (IndexOutOfBoundsException unused) {
                int iMax = Math.max(i, (iPosition - byteBuffer.position()) + 1) + byteBuffer.position();
                char cCharAt2 = charSequence.charAt(i);
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(cCharAt2);
                sb.append(" at index ");
                sb.append(iMax);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
        }
        if (i == length) {
            byteBuffer.position(iPosition + i);
            return;
        }
        iPosition += i;
        while (i < length) {
            char cCharAt3 = charSequence.charAt(i);
            if (cCharAt3 < 128) {
                byteBuffer.put(iPosition, (byte) cCharAt3);
            } else if (cCharAt3 < 2048) {
                int i2 = iPosition + 1;
                try {
                    byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> 6) | 192));
                    byteBuffer.put(i2, (byte) ((cCharAt3 & '?') | 128));
                    iPosition = i2;
                } catch (IndexOutOfBoundsException unused2) {
                    iPosition = i2;
                    int iMax2 = Math.max(i, (iPosition - byteBuffer.position()) + 1) + byteBuffer.position();
                    char cCharAt22 = charSequence.charAt(i);
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Failed writing ");
                    sb2.append(cCharAt22);
                    sb2.append(" at index ");
                    sb2.append(iMax2);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
            } else {
                if (cCharAt3 >= 55296 && 57343 >= cCharAt3) {
                    int i3 = i + 1;
                    if (i3 != length) {
                        try {
                            char cCharAt4 = charSequence.charAt(i3);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                int i4 = iPosition + 1;
                                try {
                                    byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | 240));
                                    int i5 = i4 + 1;
                                    byteBuffer.put(i4, (byte) (((codePoint >>> 12) & 63) | 128));
                                    int i6 = i5 + 1;
                                    byteBuffer.put(i5, (byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put(i6, (byte) ((codePoint & 63) | 128));
                                    iPosition = i6;
                                    i = i3;
                                } catch (IndexOutOfBoundsException unused3) {
                                    iPosition = i4;
                                    i = i3;
                                    int iMax22 = Math.max(i, (iPosition - byteBuffer.position()) + 1) + byteBuffer.position();
                                    char cCharAt222 = charSequence.charAt(i);
                                    StringBuilder sb22 = new StringBuilder(37);
                                    sb22.append("Failed writing ");
                                    sb22.append(cCharAt222);
                                    sb22.append(" at index ");
                                    sb22.append(iMax22);
                                    throw new ArrayIndexOutOfBoundsException(sb22.toString());
                                }
                            } else {
                                i = i3;
                            }
                        } catch (IndexOutOfBoundsException unused4) {
                        }
                    }
                    throw new m04(i, length);
                }
                int i7 = iPosition + 1;
                byteBuffer.put(iPosition, (byte) ((cCharAt3 >>> '\f') | 224));
                iPosition = i7 + 1;
                byteBuffer.put(i7, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                byteBuffer.put(iPosition, (byte) ((cCharAt3 & '?') | 128));
            }
            i++;
            iPosition++;
        }
        byteBuffer.position(iPosition);
    }

    public abstract int a(int i, byte[] bArr, int i2, int i3);

    public abstract int b(CharSequence charSequence, byte[] bArr, int i, int i2);

    public abstract void c(CharSequence charSequence, ByteBuffer byteBuffer);
}
