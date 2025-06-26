package defpackage;

/* loaded from: classes.dex */
public final class dl6 {
    public static final a a;

    public static abstract class a {
        public abstract String a(byte[] bArr, int i, int i2) throws kj6;

        public abstract int b(CharSequence charSequence, byte[] bArr, int i, int i2);

        public abstract int c(int i, byte[] bArr, int i2, int i3);
    }

    public static final class b extends a {
        @Override // dl6.a
        public String a(byte[] bArr, int i, int i2) throws kj6 {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!n56.b(b)) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = bArr[i];
                if (n56.b(b2)) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i < i3) {
                            byte b3 = bArr[i];
                            if (!n56.b(b3)) {
                                break;
                            }
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) b3;
                        }
                    }
                } else {
                    if (!(b2 < -32)) {
                        if (b2 < -16) {
                            if (i6 >= i3 - 1) {
                                throw kj6.c();
                            }
                            int i8 = i6 + 1;
                            n56.d(b2, bArr[i6], bArr[i8], cArr, i5);
                            i = i8 + 1;
                            i5++;
                        } else {
                            if (i6 >= i3 - 2) {
                                throw kj6.c();
                            }
                            int i9 = i6 + 1;
                            byte b4 = bArr[i6];
                            int i10 = i9 + 1;
                            n56.a(b2, b4, bArr[i9], bArr[i10], cArr, i5);
                            i5 = i5 + 1 + 1;
                            i = i10 + 1;
                        }
                    } else {
                        if (i6 >= i3) {
                            throw kj6.c();
                        }
                        n56.c(b2, bArr[i6], cArr, i5);
                        i = i6 + 1;
                        i5++;
                    }
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // dl6.a
        public int b(CharSequence charSequence, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            int i5;
            char cCharAt;
            int length = charSequence.length();
            int i6 = i2 + i;
            int i7 = 0;
            while (i7 < length && (i5 = i7 + i) < i6 && (cCharAt = charSequence.charAt(i7)) < 128) {
                bArr[i5] = (byte) cCharAt;
                i7++;
            }
            if (i7 == length) {
                return i + length;
            }
            int i8 = i + i7;
            while (i7 < length) {
                char cCharAt2 = charSequence.charAt(i7);
                if (cCharAt2 >= 128 || i8 >= i6) {
                    if (cCharAt2 < 2048 && i8 <= i6 - 2) {
                        int i9 = i8 + 1;
                        bArr[i8] = (byte) ((cCharAt2 >>> 6) | 960);
                        i8 = i9 + 1;
                        bArr[i9] = (byte) ((cCharAt2 & '?') | 128);
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i8 > i6 - 3) {
                            if (i8 > i6 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i4 = i7 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i4)))) {
                                    throw new c(i7, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i8);
                            }
                            int i10 = i7 + 1;
                            if (i10 != charSequence.length()) {
                                char cCharAt3 = charSequence.charAt(i10);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i11 = i8 + 1;
                                    bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                                    int i12 = i11 + 1;
                                    bArr[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                                    int i13 = i12 + 1;
                                    bArr[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                                    i8 = i13 + 1;
                                    bArr[i13] = (byte) ((codePoint & 63) | 128);
                                    i7 = i10;
                                } else {
                                    i7 = i10;
                                }
                            }
                            throw new c(i7 - 1, length);
                        }
                        int i14 = i8 + 1;
                        bArr[i8] = (byte) ((cCharAt2 >>> '\f') | 480);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
                    }
                    i7++;
                } else {
                    i3 = i8 + 1;
                    bArr[i8] = (byte) cCharAt2;
                }
                i8 = i3;
                i7++;
            }
            return i8;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        
            if (r13[r14] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
        
            if (r13[r14] > (-65)) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0082, code lost:
        
            if (r13[r14] > (-65)) goto L50;
         */
        @Override // dl6.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int c(int r12, byte[] r13, int r14, int r15) {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: dl6.b.c(int, byte[], int, int):int");
        }
    }

    public static class c extends IllegalArgumentException {
        public c(int i, int i2) {
            super(jo.i("Unpaired surrogate at index ", i, " of ", i2));
        }
    }

    public static final class d extends a {
        public static int d(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                a aVar = dl6.a;
                if (i > -12) {
                    return -1;
                }
                return i;
            }
            if (i2 == 1) {
                return dl6.a(i, cl6.g(bArr, j));
            }
            if (i2 == 2) {
                return dl6.f(i, cl6.g(bArr, j), cl6.g(bArr, j + 1));
            }
            throw new AssertionError();
        }

        @Override // dl6.a
        public String a(byte[] bArr, int i, int i2) throws kj6 {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte bG = cl6.g(bArr, i);
                if (!n56.b(bG)) {
                    break;
                }
                i++;
                cArr[i4] = (char) bG;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte bG2 = cl6.g(bArr, i);
                if (n56.b(bG2)) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) bG2;
                    i = i6;
                    while (true) {
                        i5 = i7;
                        if (i < i3) {
                            byte bG3 = cl6.g(bArr, i);
                            if (!n56.b(bG3)) {
                                break;
                            }
                            i++;
                            i7 = i5 + 1;
                            cArr[i5] = (char) bG3;
                        }
                    }
                } else {
                    if (!(bG2 < -32)) {
                        if (bG2 < -16) {
                            if (i6 >= i3 - 1) {
                                throw kj6.c();
                            }
                            int i8 = i6 + 1;
                            n56.d(bG2, cl6.g(bArr, i6), cl6.g(bArr, i8), cArr, i5);
                            i = i8 + 1;
                            i5++;
                        } else {
                            if (i6 >= i3 - 2) {
                                throw kj6.c();
                            }
                            int i9 = i6 + 1;
                            byte bG4 = cl6.g(bArr, i6);
                            int i10 = i9 + 1;
                            n56.a(bG2, bG4, cl6.g(bArr, i9), cl6.g(bArr, i10), cArr, i5);
                            i5 = i5 + 1 + 1;
                            i = i10 + 1;
                        }
                    } else {
                        if (i6 >= i3) {
                            throw kj6.c();
                        }
                        n56.c(bG2, cl6.g(bArr, i6), cArr, i5);
                        i = i6 + 1;
                        i5++;
                    }
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // dl6.a
        public int b(CharSequence charSequence, byte[] bArr, int i, int i2) {
            char c;
            long j;
            long j2;
            int i3;
            char cCharAt;
            long j3 = i;
            long j4 = i2 + j3;
            int length = charSequence.length();
            if (length > i2 || bArr.length - i2 < i) {
                StringBuilder sbZ = jo.z("Failed writing ");
                sbZ.append(charSequence.charAt(length - 1));
                sbZ.append(" at index ");
                sbZ.append(i + i2);
                throw new ArrayIndexOutOfBoundsException(sbZ.toString());
            }
            int i4 = 0;
            while (true) {
                c = 128;
                j = 1;
                if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                    break;
                }
                cl6.q(bArr, j3, (byte) cCharAt);
                i4++;
                j3 = 1 + j3;
            }
            if (i4 == length) {
                return (int) j3;
            }
            while (i4 < length) {
                char cCharAt2 = charSequence.charAt(i4);
                if (cCharAt2 >= c || j3 >= j4) {
                    if (cCharAt2 < 2048 && j3 <= j4 - 2) {
                        long j5 = j3 + j;
                        cl6.q(bArr, j3, (byte) ((cCharAt2 >>> 6) | 960));
                        cl6.q(bArr, j5, (byte) ((cCharAt2 & '?') | 128));
                        j3 = j5 + j;
                    } else {
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j3 > j4 - 3) {
                            if (j3 > j4 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i3)))) {
                                    throw new c(i4, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + j3);
                            }
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char cCharAt3 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    long j6 = j3 + 1;
                                    cl6.q(bArr, j3, (byte) ((codePoint >>> 18) | 240));
                                    long j7 = 1 + j6;
                                    cl6.q(bArr, j6, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j8 = 1 + j7;
                                    cl6.q(bArr, j7, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j = 1;
                                    cl6.q(bArr, j8, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                    j3 = j8 + 1;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new c(i4 - 1, length);
                        }
                        long j9 = j3 + j;
                        cl6.q(bArr, j3, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j10 = j + j9;
                        cl6.q(bArr, j9, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j2 = j10 + 1;
                        cl6.q(bArr, j10, (byte) ((cCharAt2 & '?') | 128));
                        j = 1;
                    }
                    i4++;
                    c = 128;
                } else {
                    j2 = j3 + j;
                    cl6.q(bArr, j3, (byte) cCharAt2);
                }
                j3 = j2;
                i4++;
                c = 128;
            }
            return (int) j3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        
            if (defpackage.cl6.g(r25, r8) > (-65)) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0067, code lost:
        
            if (defpackage.cl6.g(r25, r8) > (-65)) goto L32;
         */
        @Override // dl6.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int c(int r24, byte[] r25, int r26, int r27) {
            /*
                Method dump skipped, instructions count: 374
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: dl6.d.c(int, byte[], int, int):int");
        }
    }

    static {
        a = (!(cl6.g && cl6.f) || li6.a()) ? new b() : new d();
    }

    public static int a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int b(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        int i4 = -1;
        if (i3 == 0) {
            if (b2 > -12) {
                b2 = -1;
            }
            return b2;
        }
        if (i3 != 1) {
            if (i3 == 2) {
                return f(b2, bArr[i], bArr[i + 1]);
            }
            throw new AssertionError();
        }
        byte b3 = bArr[i];
        if (b2 <= -12 && b3 <= -65) {
            i4 = b2 ^ (b3 << 8);
        }
        return i4;
    }

    public static String c(byte[] bArr, int i, int i2) throws kj6 {
        return a.a(bArr, i, i2);
    }

    public static int d(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return a.b(charSequence, bArr, i, i2);
    }

    public static int e(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                throw new c(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        StringBuilder sbZ = jo.z("UTF-8 length does not fit in int: ");
        sbZ.append(i3 + 4294967296L);
        throw new IllegalArgumentException(sbZ.toString());
    }

    public static int f(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean g(byte[] bArr, int i, int i2) {
        return a.c(0, bArr, i, i2) == 0;
    }
}
