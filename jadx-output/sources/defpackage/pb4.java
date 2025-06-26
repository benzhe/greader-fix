package defpackage;

/* loaded from: classes.dex */
public final class pb4 extends mb4 {
    public static int d(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            mb4 mb4Var = qb4.a;
            if (i > -12) {
                return -1;
            }
            return i;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return qb4.d(i, lb4.r(bArr, j), lb4.r(bArr, j + 1));
            }
            throw new AssertionError();
        }
        byte bR = lb4.r(bArr, j);
        mb4 mb4Var2 = qb4.a;
        if (i > -12 || bR > -65) {
            return -1;
        }
        return i ^ (bR << 8);
    }

    @Override // defpackage.mb4
    public final int a(int i, byte[] bArr, int i2, int i3) {
        int i4;
        long j;
        int length = bArr.length;
        if ((i2 | i3 | (length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j2 = i2;
        int i5 = (int) (i3 - j2);
        if (i5 >= 16) {
            long j3 = j2;
            i4 = 0;
            while (true) {
                if (i4 >= i5) {
                    i4 = i5;
                    break;
                }
                long j4 = j3 + 1;
                if (lb4.r(bArr, j3) < 0) {
                    break;
                }
                i4++;
                j3 = j4;
            }
        } else {
            i4 = 0;
        }
        int i6 = i5 - i4;
        long j5 = j2 + i4;
        while (true) {
            byte bR = 0;
            while (true) {
                if (i6 <= 0) {
                    break;
                }
                long j6 = j5 + 1;
                bR = lb4.r(bArr, j5);
                if (bR < 0) {
                    j5 = j6;
                    break;
                }
                i6--;
                j5 = j6;
            }
            if (i6 != 0) {
                int i7 = i6 - 1;
                if (bR >= -32) {
                    if (bR >= -16) {
                        if (i7 >= 3) {
                            i6 = i7 - 3;
                            long j7 = j5 + 1;
                            byte bR2 = lb4.r(bArr, j5);
                            if (bR2 <= -65 && (((bR2 + 112) + (bR << 28)) >> 30) == 0) {
                                long j8 = j7 + 1;
                                if (lb4.r(bArr, j7) > -65) {
                                    break;
                                }
                                j = j8 + 1;
                                if (lb4.r(bArr, j8) > -65) {
                                    break;
                                }
                                j5 = j;
                            } else {
                                break;
                            }
                        } else {
                            return d(bArr, bR, j5, i7);
                        }
                    } else {
                        if (i7 < 2) {
                            return d(bArr, bR, j5, i7);
                        }
                        i6 = i7 - 2;
                        long j9 = j5 + 1;
                        byte bR3 = lb4.r(bArr, j5);
                        if (bR3 > -65 || ((bR == -32 && bR3 < -96) || (bR == -19 && bR3 >= -96))) {
                            break;
                        }
                        j5 = j9 + 1;
                        if (lb4.r(bArr, j9) > -65) {
                            break;
                        }
                    }
                } else {
                    if (i7 == 0) {
                        return bR;
                    }
                    i6 = i7 - 1;
                    if (bR < -62) {
                        break;
                    }
                    j = j5 + 1;
                    if (lb4.r(bArr, j5) > -65) {
                        break;
                    }
                    j5 = j;
                }
            } else {
                return 0;
            }
        }
        return -1;
    }

    @Override // defpackage.mb4
    public final String b(byte[] bArr, int i, int i2) throws l94 {
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte bR = lb4.r(bArr, i);
            if (!c50.v2(bR)) {
                break;
            }
            i++;
            cArr[i4] = (char) bR;
            i4++;
        }
        while (i < i3) {
            int i5 = i + 1;
            byte bR2 = lb4.r(bArr, i);
            if (c50.v2(bR2)) {
                int i6 = i4 + 1;
                cArr[i4] = (char) bR2;
                i = i5;
                while (true) {
                    i4 = i6;
                    if (i < i3) {
                        byte bR3 = lb4.r(bArr, i);
                        if (!c50.v2(bR3)) {
                            break;
                        }
                        i++;
                        i6 = i4 + 1;
                        cArr[i4] = (char) bR3;
                    }
                }
            } else {
                if (!(bR2 < -32)) {
                    if (bR2 < -16) {
                        if (i5 >= i3 - 1) {
                            throw l94.d();
                        }
                        int i7 = i5 + 1;
                        c50.P3(bR2, lb4.r(bArr, i5), lb4.r(bArr, i7), cArr, i4);
                        i = i7 + 1;
                        i4++;
                    } else {
                        if (i5 >= i3 - 2) {
                            throw l94.d();
                        }
                        int i8 = i5 + 1;
                        int i9 = i8 + 1;
                        c50.X3(bR2, lb4.r(bArr, i5), lb4.r(bArr, i8), lb4.r(bArr, i9), cArr, i4);
                        i4 += 2;
                        i = i9 + 1;
                    }
                } else {
                    if (i5 >= i3) {
                        throw l94.d();
                    }
                    c50.B3(bR2, lb4.r(bArr, i5), cArr, i4);
                    i = i5 + 1;
                    i4++;
                }
            }
        }
        return new String(cArr, 0, i4);
    }

    @Override // defpackage.mb4
    public final int c(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
            lb4.s(bArr, j4, (byte) cCharAt);
            i4++;
            j4 = 1 + j4;
        }
        if (i4 == length) {
            return (int) j4;
        }
        while (i4 < length) {
            char cCharAt3 = charSequence.charAt(i4);
            if (cCharAt3 >= c || j4 >= j5) {
                if (cCharAt3 < 2048 && j4 <= (-2) + j5) {
                    long j6 = j4 + j;
                    lb4.s(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    lb4.s(bArr, j6, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j6 + j;
                    j3 = j;
                } else {
                    if ((cCharAt3 >= 55296 && cCharAt3 <= 57343) || j4 > (-3) + j5) {
                        if (j4 > (-4) + j5) {
                            if (cCharAt3 >= 55296 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new ob4(i4, length);
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
                                lb4.s(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                long j8 = j7 + 1;
                                lb4.s(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j9 = j8 + 1;
                                lb4.s(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 = 1;
                                j2 = j9 + 1;
                                lb4.s(bArr, j9, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new ob4(i4 - 1, length);
                    }
                    long j10 = j4 + j;
                    lb4.s(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j11 = j10 + j;
                    lb4.s(bArr, j10, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    lb4.s(bArr, j11, (byte) ((cCharAt3 & '?') | 128));
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
                lb4.s(bArr, j4, (byte) cCharAt3);
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
}
