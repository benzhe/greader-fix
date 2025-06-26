package defpackage;

import defpackage.h04;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class n04 extends k04 {
    public static int e(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            k04 k04Var = j04.a;
            if (i > -12) {
                return -1;
            }
            return i;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return j04.d(i, h04.a(bArr, j), h04.a(bArr, j + 1));
            }
            throw new AssertionError();
        }
        byte bA = h04.a(bArr, j);
        k04 k04Var2 = j04.a;
        if (i > -12 || bA > -65) {
            return -1;
        }
        return i ^ (bA << 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
    
        return -1;
     */
    @Override // defpackage.k04
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n04.a(int, byte[], int, int):int");
    }

    @Override // defpackage.k04
    public final int b(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        int i3;
        char cCharAt;
        long j4 = i;
        long j5 = i2 + j4;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c = 128;
            j = 1;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            h04.g(bArr, j4, (byte) cCharAt);
            i4++;
            j4 = 1 + j4;
        }
        if (i4 == length) {
            return (int) j4;
        }
        while (i4 < length) {
            char cCharAt3 = charSequence.charAt(i4);
            if (cCharAt3 >= c || j4 >= j5) {
                if (cCharAt3 < 2048 && j4 <= j5 - 2) {
                    long j6 = j4 + j;
                    h04.g(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    h04.g(bArr, j6, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j6 + j;
                    j3 = j;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                        if (j4 > j5 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new m04(i4, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(j4);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char cCharAt4 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j7 = j4 + 1;
                                h04.g(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                long j8 = j7 + 1;
                                h04.g(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j9 = j8 + 1;
                                h04.g(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 = 1;
                                j2 = j9 + 1;
                                h04.g(bArr, j9, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new m04(i4 - 1, length);
                    }
                    long j10 = j4 + j;
                    h04.g(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j11 = j10 + j;
                    h04.g(bArr, j10, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    h04.g(bArr, j11, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j11 + 1;
                    j3 = 1;
                }
                i4++;
                c = 128;
                long j12 = j3;
                j4 = j2;
                j = j12;
            } else {
                long j13 = j4 + j;
                h04.g(bArr, j4, (byte) cCharAt3);
                j3 = j;
                j2 = j13;
            }
            i4++;
            c = 128;
            long j122 = j3;
            j4 = j2;
            j = j122;
        }
        return (int) j4;
    }

    @Override // defpackage.k04
    public final void c(CharSequence charSequence, ByteBuffer byteBuffer) {
        long j;
        char c;
        int i;
        long j2;
        long j3;
        int i2;
        int i3;
        char cCharAt;
        ByteBuffer byteBuffer2 = byteBuffer;
        long jK = h04.f.k(byteBuffer2, h04.j);
        long jPosition = byteBuffer.position() + jK;
        long jLimit = byteBuffer.limit() + jK;
        int length = charSequence.length();
        if (length > jLimit - jPosition) {
            char cCharAt2 = charSequence.charAt(length - 1);
            int iLimit = byteBuffer.limit();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(iLimit);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            j = 1;
            c = 128;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            h04.f.b(jPosition, (byte) cCharAt);
            i4++;
            jPosition = 1 + jPosition;
        }
        if (i4 == length) {
            i = (int) (jPosition - jK);
        } else {
            while (i4 < length) {
                char cCharAt3 = charSequence.charAt(i4);
                if (cCharAt3 < c && jPosition < jLimit) {
                    h04.f.b(jPosition, (byte) cCharAt3);
                    j3 = jLimit;
                    i2 = i4;
                    jPosition += j;
                    j2 = jK;
                } else if (cCharAt3 >= 2048 || jPosition > jLimit - 2) {
                    j2 = jK;
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || jPosition > jLimit - 3) {
                        if (jPosition > jLimit - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new m04(i4, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(jPosition);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        i2 = i4 + 1;
                        if (i2 != length) {
                            char cCharAt4 = charSequence.charAt(i2);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j4 = jPosition + 1;
                                h04.d dVar = h04.f;
                                dVar.b(jPosition, (byte) ((codePoint >>> 18) | 240));
                                long j5 = j4 + 1;
                                dVar.b(j4, (byte) (((codePoint >>> 12) & 63) | 128));
                                j3 = jLimit;
                                j = 1;
                                long j6 = j5 + 1;
                                dVar.b(j5, (byte) (((codePoint >>> 6) & 63) | 128));
                                dVar.b(j6, (byte) ((codePoint & 63) | 128));
                                jPosition = j6 + 1;
                            } else {
                                i4 = i2;
                            }
                        }
                        throw new m04(i4 - 1, length);
                    }
                    long j7 = jPosition + j;
                    h04.d dVar2 = h04.f;
                    dVar2.b(jPosition, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j8 = j7 + j;
                    dVar2.b(j7, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    dVar2.b(j8, (byte) ((cCharAt3 & '?') | 128));
                    j3 = jLimit;
                    i2 = i4;
                    jPosition = j8 + 1;
                    j = 1;
                } else {
                    j2 = jK;
                    long j9 = jPosition + j;
                    h04.d dVar3 = h04.f;
                    dVar3.b(jPosition, (byte) ((cCharAt3 >>> 6) | 960));
                    dVar3.b(j9, (byte) ((cCharAt3 & '?') | 128));
                    jPosition = j9 + j;
                    j3 = jLimit;
                    i2 = i4;
                }
                i4 = i2 + 1;
                jK = j2;
                jLimit = j3;
                c = 128;
            }
            i = (int) (jPosition - jK);
            byteBuffer2 = byteBuffer;
        }
        byteBuffer2.position(i);
    }
}
