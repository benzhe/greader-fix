package defpackage;

/* loaded from: classes.dex */
public final class z93 extends v93 {
    public static int d(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            v93 v93Var = u93.a;
            if (i > -12) {
                return -1;
            }
            return i;
        }
        if (i2 == 1) {
            return u93.a(i, r93.a(bArr, j));
        }
        if (i2 == 2) {
            return u93.c(i, r93.a(bArr, j), r93.a(bArr, j + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0120, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (defpackage.r93.a(r23, r8) > (-65)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (defpackage.r93.a(r23, r8) > (-65)) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00f9, code lost:
    
        return -1;
     */
    @Override // defpackage.v93
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(int r22, byte[] r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z93.a(int, byte[], int, int):int");
    }

    @Override // defpackage.v93
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
            r93.f(bArr, j4, (byte) cCharAt);
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
                    r93.f(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    r93.f(bArr, j6, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j6 + j;
                    j3 = j;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                        if (j4 > j5 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new w93(i4, length);
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
                                r93.f(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                long j8 = j7 + 1;
                                r93.f(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j9 = j8 + 1;
                                r93.f(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 = 1;
                                j2 = j9 + 1;
                                r93.f(bArr, j9, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new w93(i4 - 1, length);
                    }
                    long j10 = j4 + j;
                    r93.f(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j11 = j10 + j;
                    r93.f(bArr, j10, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    r93.f(bArr, j11, (byte) ((cCharAt3 & '?') | 128));
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
                r93.f(bArr, j4, (byte) cCharAt3);
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

    @Override // defpackage.v93
    public final String c(byte[] bArr, int i, int i2) throws e73 {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte bA = r93.a(bArr, i);
            if (!c50.r4(bA)) {
                break;
            }
            i++;
            cArr[i4] = (char) bA;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte bA2 = r93.a(bArr, i);
            if (c50.r4(bA2)) {
                int i7 = i5 + 1;
                cArr[i5] = (char) bA2;
                i = i6;
                while (true) {
                    i5 = i7;
                    if (i < i3) {
                        byte bA3 = r93.a(bArr, i);
                        if (c50.r4(bA3)) {
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) bA3;
                        }
                    }
                }
            } else {
                if (!(bA2 < -32)) {
                    if (bA2 < -16) {
                        if (i6 >= i3 - 1) {
                            throw e73.h();
                        }
                        int i8 = i6 + 1;
                        c50.d3(bA2, r93.a(bArr, i6), r93.a(bArr, i8), cArr, i5);
                        i = i8 + 1;
                        i5++;
                    } else {
                        if (i6 >= i3 - 2) {
                            throw e73.h();
                        }
                        int i9 = i6 + 1;
                        byte bA4 = r93.a(bArr, i6);
                        int i10 = i9 + 1;
                        c50.c3(bA2, bA4, r93.a(bArr, i9), r93.a(bArr, i10), cArr, i5);
                        i5 = i5 + 1 + 1;
                        i = i10 + 1;
                    }
                } else {
                    if (i6 >= i3) {
                        throw e73.h();
                    }
                    c50.e3(bA2, r93.a(bArr, i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                }
            }
        }
        return new String(cArr, 0, i5);
    }
}
