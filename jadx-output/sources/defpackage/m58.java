package defpackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.text.ParseException;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public final class m58 extends d58<m58> implements Serializable {
    public static final Integer[] A;
    public static final Integer[] B;
    public static final Integer[] C;
    public static final Integer[] D;
    public static final Integer[] E;
    public static final Integer[] F;
    public static final Integer[] G;
    public static final Integer[] H;
    public static final int[] l;
    public static final int[] m = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
    public static final int[] n = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 29};
    public static final int[] o = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 30};
    public static final int[] p = {0, 1, 0, 1, 0, 1, 1};
    public static final int[] q = {1, 9999, 11, 51, 5, 29, 354};
    public static final int[] r = {1, 9999, 11, 52, 6, 30, 355};
    public static final int[] s = {0, 354, 709, 1063, 1417, 1772, 2126, 2481, 2835, 3189, 3544, 3898, 4252, 4607, 4961, 5315, 5670, 6024, 6379, 6733, 7087, 7442, 7796, 8150, 8505, 8859, 9214, 9568, 9922, 10277};
    public static final char t;
    public static final String u;
    public static final String v;
    public static final HashMap<Integer, Integer[]> w;
    public static final HashMap<Integer, Integer[]> x;
    public static final HashMap<Integer, Integer[]> y;
    public static final Long[] z;
    public final transient n58 e;
    public final transient int f;
    public final transient int g;
    public final transient int h;
    public final transient int i;
    public final transient m48 j;
    public final long k;

    static {
        int[] iArr = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
        l = iArr;
        char c = File.separatorChar;
        t = c;
        u = File.pathSeparator;
        v = "org" + c + "threeten" + c + "bp" + c + "chrono";
        w = new HashMap<>();
        x = new HashMap<>();
        y = new HashMap<>();
        D = new Integer[iArr.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr2 = l;
            if (i2 >= iArr2.length) {
                break;
            }
            D[i2] = Integer.valueOf(iArr2[i2]);
            i2++;
        }
        E = new Integer[m.length];
        int i3 = 0;
        while (true) {
            int[] iArr3 = m;
            if (i3 >= iArr3.length) {
                break;
            }
            E[i3] = Integer.valueOf(iArr3[i3]);
            i3++;
        }
        F = new Integer[n.length];
        int i4 = 0;
        while (true) {
            int[] iArr4 = n;
            if (i4 >= iArr4.length) {
                break;
            }
            F[i4] = Integer.valueOf(iArr4[i4]);
            i4++;
        }
        G = new Integer[o.length];
        int i5 = 0;
        while (true) {
            int[] iArr5 = o;
            if (i5 >= iArr5.length) {
                break;
            }
            G[i5] = Integer.valueOf(iArr5[i5]);
            i5++;
        }
        H = new Integer[s.length];
        int i6 = 0;
        while (true) {
            int[] iArr6 = s;
            if (i6 >= iArr6.length) {
                break;
            }
            H[i6] = Integer.valueOf(iArr6[i6]);
            i6++;
        }
        z = new Long[334];
        int i7 = 0;
        while (true) {
            Long[] lArr = z;
            if (i7 >= lArr.length) {
                break;
            }
            lArr[i7] = Long.valueOf(i7 * 10631);
            i7++;
        }
        A = new Integer[p.length];
        int i8 = 0;
        while (true) {
            int[] iArr7 = p;
            if (i8 >= iArr7.length) {
                break;
            }
            A[i8] = Integer.valueOf(iArr7[i8]);
            i8++;
        }
        B = new Integer[q.length];
        int i9 = 0;
        while (true) {
            int[] iArr8 = q;
            if (i9 >= iArr8.length) {
                break;
            }
            B[i9] = Integer.valueOf(iArr8[i9]);
            i9++;
        }
        C = new Integer[r.length];
        while (true) {
            int[] iArr9 = r;
            if (i >= iArr9.length) {
                try {
                    k0();
                    return;
                } catch (IOException | ParseException unused) {
                    return;
                }
            } else {
                C[i] = Integer.valueOf(iArr9[i]);
                i++;
            }
        }
    }

    public m58(long j) {
        int i;
        int iB0;
        int iD0;
        int iA0;
        int i2;
        int i3;
        int i4;
        Long l2;
        long j2 = j - (-492148);
        if (j2 >= 0) {
            Long[] lArr = z;
            for (int i5 = 0; i5 < lArr.length; i5++) {
                try {
                    if (j2 < lArr[i5].longValue()) {
                        i4 = i5 - 1;
                        break;
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    i3 = ((int) j2) / 10631;
                }
            }
            i3 = ((int) j2) / 10631;
            i4 = i3;
            try {
                l2 = z[i4];
            } catch (ArrayIndexOutOfBoundsException unused2) {
                l2 = null;
            }
            int iLongValue = (int) (j2 - (l2 == null ? Long.valueOf(i4 * 10631) : l2).longValue());
            int iE0 = e0(i4, iLongValue);
            iB0 = b0(i4, iLongValue, iE0);
            i = (i4 * 30) + iE0 + 1;
            iD0 = d0(iB0, i);
            iA0 = a0(iB0, iD0, i) + 1;
            i2 = 1;
        } else {
            int i6 = (int) j2;
            int i7 = i6 / 10631;
            int i8 = i6 % 10631;
            if (i8 == 0) {
                i8 = -10631;
                i7++;
            }
            int iE02 = e0(i7, i8);
            int iB02 = b0(i7, i8, iE02);
            i = 1 - ((i7 * 30) - iE02);
            iB0 = f0((long) i) ? iB02 + 355 : iB02 + 354;
            iD0 = d0(iB0, i);
            iA0 = a0(iB0, iD0, i) + 1;
            i2 = 0;
        }
        int i9 = (int) ((j2 + 5) % 7);
        int[] iArr = {i2, i, iD0 + 1, iA0, iB0 + 1, i9 + (i9 <= 0 ? 7 : 0)};
        int i10 = iArr[1];
        if (i10 < 1 || i10 > 9999) {
            throw new l48("Invalid year of Hijrah Era");
        }
        int i11 = iArr[2];
        if (i11 < 1 || i11 > 12) {
            throw new l48("Invalid month of Hijrah date");
        }
        X(iArr[3]);
        int i12 = iArr[4];
        if (i12 < 1 || i12 > C[6].intValue()) {
            throw new l48("Invalid day of year of Hijrah date");
        }
        this.e = n58.K(iArr[0]);
        int i13 = iArr[1];
        this.f = i13;
        this.g = iArr[2];
        this.h = iArr[3];
        this.i = iArr[4];
        this.j = m48.L(iArr[5]);
        this.k = j;
        f0(i13);
    }

    public static void X(int i) {
        if (i < 1 || i > C[5].intValue()) {
            StringBuilder sbA = jo.A("Invalid day of month of Hijrah date, day ", i, " greater than ");
            sbA.append(C[5].intValue());
            sbA.append(" or less than 1");
            throw new l48(sbA.toString());
        }
    }

    public static Integer[] Y(int i) {
        Integer[] numArr;
        try {
            numArr = y.get(Integer.valueOf(i));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? H : numArr;
    }

    public static Integer[] Z(int i) {
        Integer[] numArr;
        try {
            numArr = w.get(Integer.valueOf(i));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? f0((long) i) ? E : D : numArr;
    }

    public static int a0(int i, int i2, int i3) {
        int iIntValue;
        Integer[] numArrZ = Z(i3);
        if (i < 0) {
            i = f0((long) i3) ? i + 355 : i + 354;
            if (i2 <= 0) {
                return i;
            }
            iIntValue = numArrZ[i2].intValue();
        } else {
            if (i2 <= 0) {
                return i;
            }
            iIntValue = numArrZ[i2].intValue();
        }
        return i - iIntValue;
    }

    public static int b0(int i, int i2, int i3) {
        Integer[] numArrY = Y(i);
        return i2 > 0 ? i2 - numArrY[i3].intValue() : numArrY[i3].intValue() + i2;
    }

    public static long c0(int i, int i2, int i3) {
        Long lValueOf;
        int i4 = i - 1;
        int i5 = i4 / 30;
        int i6 = i4 % 30;
        int iIntValue = Y(i5)[Math.abs(i6)].intValue();
        if (i6 < 0) {
            iIntValue = -iIntValue;
        }
        try {
            lValueOf = z[i5];
        } catch (ArrayIndexOutOfBoundsException unused) {
            lValueOf = null;
        }
        if (lValueOf == null) {
            lValueOf = Long.valueOf(i5 * 10631);
        }
        return (((lValueOf.longValue() + iIntValue) - 492148) - 1) + Z(i)[i2 - 1].intValue() + i3;
    }

    public static int d0(int i, int i2) {
        Integer[] numArrZ = Z(i2);
        int i3 = 0;
        if (i >= 0) {
            while (i3 < numArrZ.length) {
                if (i < numArrZ[i3].intValue()) {
                    return i3 - 1;
                }
                i3++;
            }
            return 11;
        }
        int i4 = f0((long) i2) ? i + 355 : i + 354;
        while (i3 < numArrZ.length) {
            if (i4 < numArrZ[i3].intValue()) {
                return i3 - 1;
            }
            i3++;
        }
        return 11;
    }

    public static int e0(int i, long j) {
        Integer[] numArrY = Y(i);
        int i2 = 0;
        if (j == 0) {
            return 0;
        }
        if (j > 0) {
            while (i2 < numArrY.length) {
                if (j < numArrY[i2].intValue()) {
                    return i2 - 1;
                }
                i2++;
            }
            return 29;
        }
        long j2 = -j;
        while (i2 < numArrY.length) {
            if (j2 <= numArrY[i2].intValue()) {
                return i2 - 1;
            }
            i2++;
        }
        return 29;
    }

    public static boolean f0(long j) {
        if (j <= 0) {
            j = -j;
        }
        return ((j * 11) + 14) % 30 < 11;
    }

    public static m58 g0(int i, int i2, int i3) {
        return i >= 1 ? h0(n58.AH, i, i2, i3) : h0(n58.BEFORE_AH, 1 - i, i2, i3);
    }

    public static m58 h0(n58 n58Var, int i, int i2, int i3) {
        kt7.o(n58Var, "era");
        if (i < 1 || i > 9999) {
            throw new l48("Invalid year of Hijrah Era");
        }
        if (i2 < 1 || i2 > 12) {
            throw new l48("Invalid month of Hijrah date");
        }
        X(i3);
        if (n58Var != n58.AH) {
            i = 1 - i;
        }
        return new m58(c0(i, i2, i3));
    }

    public static void i0(String str, int i) throws NumberFormatException, ParseException {
        StringTokenizer stringTokenizer;
        int i2 = i;
        StringTokenizer stringTokenizer2 = new StringTokenizer(str, ";");
        while (stringTokenizer2.hasMoreTokens()) {
            String strNextToken = stringTokenizer2.nextToken();
            int iIndexOf = strNextToken.indexOf(58);
            if (iIndexOf == -1) {
                int i3 = i2;
                throw new ParseException(jo.h("Offset has incorrect format at line ", i3, "."), i3);
            }
            try {
                int i4 = Integer.parseInt(strNextToken.substring(iIndexOf + 1, strNextToken.length()));
                int iIndexOf2 = strNextToken.indexOf(45);
                if (iIndexOf2 == -1) {
                    int i5 = i2;
                    throw new ParseException(jo.h("Start and end year/month has incorrect format at line ", i5, "."), i5);
                }
                String strSubstring = strNextToken.substring(0, iIndexOf2);
                String strSubstring2 = strNextToken.substring(iIndexOf2 + 1, iIndexOf);
                int iIndexOf3 = strSubstring.indexOf(47);
                int iIndexOf4 = strSubstring2.indexOf(47);
                if (iIndexOf3 == -1) {
                    int i6 = i2;
                    throw new ParseException(jo.h("Start year/month has incorrect format at line ", i6, "."), i6);
                }
                String strSubstring3 = strSubstring.substring(0, iIndexOf3);
                String strSubstring4 = strSubstring.substring(iIndexOf3 + 1, strSubstring.length());
                try {
                    int i7 = Integer.parseInt(strSubstring3);
                    try {
                        int i8 = Integer.parseInt(strSubstring4);
                        if (iIndexOf4 == -1) {
                            int i9 = i2;
                            throw new ParseException(jo.h("End year/month has incorrect format at line ", i9, "."), i9);
                        }
                        String strSubstring5 = strSubstring2.substring(0, iIndexOf4);
                        String strSubstring6 = strSubstring2.substring(iIndexOf4 + 1, strSubstring2.length());
                        try {
                            int i10 = Integer.parseInt(strSubstring5);
                            try {
                                int i11 = Integer.parseInt(strSubstring6);
                                if (i7 == -1 || i8 == -1 || i10 == -1 || i11 == -1) {
                                    throw new ParseException(jo.h("Unknown error at line ", i, "."), i);
                                }
                                if (i7 < 1) {
                                    throw new IllegalArgumentException("startYear < 1");
                                }
                                if (i10 < 1) {
                                    throw new IllegalArgumentException("endYear < 1");
                                }
                                if (i8 < 0 || i8 > 11) {
                                    throw new IllegalArgumentException("startMonth < 0 || startMonth > 11");
                                }
                                if (i11 < 0 || i11 > 11) {
                                    throw new IllegalArgumentException("endMonth < 0 || endMonth > 11");
                                }
                                if (i10 > 9999) {
                                    throw new IllegalArgumentException("endYear > 9999");
                                }
                                if (i10 < i7) {
                                    throw new IllegalArgumentException("startYear > endYear");
                                }
                                if (i10 == i7 && i11 < i8) {
                                    throw new IllegalArgumentException("startYear == endYear && endMonth < startMonth");
                                }
                                boolean zF0 = f0(i7);
                                Integer[] numArr = w.get(Integer.valueOf(i7));
                                if (numArr == null) {
                                    if (!zF0) {
                                        numArr = new Integer[l.length];
                                        int i12 = 0;
                                        while (true) {
                                            int[] iArr = l;
                                            if (i12 >= iArr.length) {
                                                break;
                                            }
                                            numArr[i12] = Integer.valueOf(iArr[i12]);
                                            i12++;
                                        }
                                    } else {
                                        numArr = new Integer[m.length];
                                        int i13 = 0;
                                        while (true) {
                                            int[] iArr2 = m;
                                            if (i13 >= iArr2.length) {
                                                break;
                                            }
                                            numArr[i13] = Integer.valueOf(iArr2[i13]);
                                            i13++;
                                        }
                                    }
                                }
                                Integer[] numArr2 = new Integer[numArr.length];
                                for (int i14 = 0; i14 < 12; i14++) {
                                    if (i14 > i8) {
                                        numArr2[i14] = Integer.valueOf(numArr[i14].intValue() - i4);
                                    } else {
                                        numArr2[i14] = Integer.valueOf(numArr[i14].intValue());
                                    }
                                }
                                w.put(Integer.valueOf(i7), numArr2);
                                Integer[] numArr3 = x.get(Integer.valueOf(i7));
                                if (numArr3 == null) {
                                    if (!zF0) {
                                        numArr3 = new Integer[n.length];
                                        int i15 = 0;
                                        while (true) {
                                            int[] iArr3 = n;
                                            if (i15 >= iArr3.length) {
                                                break;
                                            }
                                            numArr3[i15] = Integer.valueOf(iArr3[i15]);
                                            i15++;
                                        }
                                    } else {
                                        numArr3 = new Integer[o.length];
                                        int i16 = 0;
                                        while (true) {
                                            int[] iArr4 = o;
                                            if (i16 >= iArr4.length) {
                                                break;
                                            }
                                            numArr3[i16] = Integer.valueOf(iArr4[i16]);
                                            i16++;
                                        }
                                    }
                                }
                                Integer[] numArr4 = new Integer[numArr3.length];
                                for (int i17 = 0; i17 < 12; i17++) {
                                    if (i17 == i8) {
                                        numArr4[i17] = Integer.valueOf(numArr3[i17].intValue() - i4);
                                    } else {
                                        numArr4[i17] = Integer.valueOf(numArr3[i17].intValue());
                                    }
                                }
                                x.put(Integer.valueOf(i7), numArr4);
                                if (i7 != i10) {
                                    int i18 = i7 - 1;
                                    int i19 = i18 / 30;
                                    int i20 = i18 % 30;
                                    Integer[] numArr5 = y.get(Integer.valueOf(i19));
                                    if (numArr5 == null) {
                                        int length = s.length;
                                        Integer[] numArr6 = new Integer[length];
                                        for (int i21 = 0; i21 < length; i21++) {
                                            numArr6[i21] = Integer.valueOf(s[i21]);
                                        }
                                        numArr5 = numArr6;
                                    }
                                    for (int i22 = i20 + 1; i22 < s.length; i22++) {
                                        numArr5[i22] = Integer.valueOf(numArr5[i22].intValue() - i4);
                                    }
                                    y.put(Integer.valueOf(i19), numArr5);
                                    int i23 = i10 - 1;
                                    int i24 = i23 / 30;
                                    if (i19 != i24) {
                                        int i25 = i19 + 1;
                                        while (true) {
                                            Long[] lArr = z;
                                            if (i25 >= lArr.length) {
                                                break;
                                            }
                                            lArr[i25] = Long.valueOf(lArr[i25].longValue() - i4);
                                            i25++;
                                            stringTokenizer2 = stringTokenizer2;
                                        }
                                        StringTokenizer stringTokenizer3 = stringTokenizer2;
                                        int i26 = i24 + 1;
                                        while (true) {
                                            Long[] lArr2 = z;
                                            if (i26 >= lArr2.length) {
                                                break;
                                            }
                                            lArr2[i26] = Long.valueOf(lArr2[i26].longValue() + i4);
                                            i26++;
                                            stringTokenizer3 = stringTokenizer3;
                                        }
                                        stringTokenizer = stringTokenizer3;
                                    } else {
                                        stringTokenizer = stringTokenizer2;
                                    }
                                    int i27 = i23 % 30;
                                    Integer[] numArr7 = y.get(Integer.valueOf(i24));
                                    if (numArr7 == null) {
                                        int length2 = s.length;
                                        Integer[] numArr8 = new Integer[length2];
                                        for (int i28 = 0; i28 < length2; i28++) {
                                            numArr8[i28] = Integer.valueOf(s[i28]);
                                        }
                                        numArr7 = numArr8;
                                    }
                                    while (true) {
                                        i27++;
                                        if (i27 >= s.length) {
                                            break;
                                        } else {
                                            numArr7[i27] = Integer.valueOf(numArr7[i27].intValue() + i4);
                                        }
                                    }
                                    y.put(Integer.valueOf(i24), numArr7);
                                } else {
                                    stringTokenizer = stringTokenizer2;
                                }
                                boolean zF02 = f0(i10);
                                Integer[] numArr9 = w.get(Integer.valueOf(i10));
                                if (numArr9 == null) {
                                    if (!zF02) {
                                        numArr9 = new Integer[l.length];
                                        int i29 = 0;
                                        while (true) {
                                            int[] iArr5 = l;
                                            if (i29 >= iArr5.length) {
                                                break;
                                            }
                                            numArr9[i29] = Integer.valueOf(iArr5[i29]);
                                            i29++;
                                        }
                                    } else {
                                        numArr9 = new Integer[m.length];
                                        int i30 = 0;
                                        while (true) {
                                            int[] iArr6 = m;
                                            if (i30 >= iArr6.length) {
                                                break;
                                            }
                                            numArr9[i30] = Integer.valueOf(iArr6[i30]);
                                            i30++;
                                        }
                                    }
                                }
                                Integer[] numArr10 = new Integer[numArr9.length];
                                for (int i31 = 0; i31 < 12; i31++) {
                                    if (i31 > i11) {
                                        numArr10[i31] = Integer.valueOf(numArr9[i31].intValue() + i4);
                                    } else {
                                        numArr10[i31] = Integer.valueOf(numArr9[i31].intValue());
                                    }
                                }
                                w.put(Integer.valueOf(i10), numArr10);
                                Integer[] numArr11 = x.get(Integer.valueOf(i10));
                                if (numArr11 == null) {
                                    if (!zF02) {
                                        numArr11 = new Integer[n.length];
                                        int i32 = 0;
                                        while (true) {
                                            int[] iArr7 = n;
                                            if (i32 >= iArr7.length) {
                                                break;
                                            }
                                            numArr11[i32] = Integer.valueOf(iArr7[i32]);
                                            i32++;
                                        }
                                    } else {
                                        numArr11 = new Integer[o.length];
                                        int i33 = 0;
                                        while (true) {
                                            int[] iArr8 = o;
                                            if (i33 >= iArr8.length) {
                                                break;
                                            }
                                            numArr11[i33] = Integer.valueOf(iArr8[i33]);
                                            i33++;
                                        }
                                    }
                                }
                                Integer[] numArr12 = new Integer[numArr11.length];
                                for (int i34 = 0; i34 < 12; i34++) {
                                    if (i34 == i11) {
                                        numArr12[i34] = Integer.valueOf(numArr11[i34].intValue() + i4);
                                    } else {
                                        numArr12[i34] = Integer.valueOf(numArr11[i34].intValue());
                                    }
                                }
                                HashMap<Integer, Integer[]> map = x;
                                map.put(Integer.valueOf(i10), numArr12);
                                Integer[] numArr13 = map.get(Integer.valueOf(i7));
                                Integer[] numArr14 = map.get(Integer.valueOf(i10));
                                HashMap<Integer, Integer[]> map2 = w;
                                Integer[] numArr15 = map2.get(Integer.valueOf(i7));
                                Integer[] numArr16 = map2.get(Integer.valueOf(i10));
                                int iIntValue = numArr13[i8].intValue();
                                int iIntValue2 = numArr14[i11].intValue();
                                int iIntValue3 = numArr13[11].intValue() + numArr15[11].intValue();
                                int iIntValue4 = numArr14[11].intValue() + numArr16[11].intValue();
                                Integer[] numArr17 = C;
                                int iIntValue5 = numArr17[5].intValue();
                                Integer[] numArr18 = B;
                                int iIntValue6 = numArr18[5].intValue();
                                if (iIntValue5 < iIntValue) {
                                    iIntValue5 = iIntValue;
                                }
                                if (iIntValue5 < iIntValue2) {
                                    iIntValue5 = iIntValue2;
                                }
                                numArr17[5] = Integer.valueOf(iIntValue5);
                                if (iIntValue6 <= iIntValue) {
                                    iIntValue = iIntValue6;
                                }
                                if (iIntValue <= iIntValue2) {
                                    iIntValue2 = iIntValue;
                                }
                                numArr18[5] = Integer.valueOf(iIntValue2);
                                int iIntValue7 = numArr17[6].intValue();
                                int iIntValue8 = numArr18[6].intValue();
                                if (iIntValue7 < iIntValue3) {
                                    iIntValue7 = iIntValue3;
                                }
                                if (iIntValue7 < iIntValue4) {
                                    iIntValue7 = iIntValue4;
                                }
                                numArr17[6] = Integer.valueOf(iIntValue7);
                                if (iIntValue8 <= iIntValue3) {
                                    iIntValue3 = iIntValue8;
                                }
                                if (iIntValue3 <= iIntValue4) {
                                    iIntValue4 = iIntValue3;
                                }
                                numArr18[6] = Integer.valueOf(iIntValue4);
                                stringTokenizer2 = stringTokenizer;
                                i2 = i;
                            } catch (NumberFormatException unused) {
                                int i35 = i2;
                                throw new ParseException(jo.h("End month is not properly set at line ", i35, "."), i35);
                            }
                        } catch (NumberFormatException unused2) {
                            int i36 = i2;
                            throw new ParseException(jo.h("End year is not properly set at line ", i36, "."), i36);
                        }
                    } catch (NumberFormatException unused3) {
                        int i37 = i2;
                        throw new ParseException(jo.h("Start month is not properly set at line ", i37, "."), i37);
                    }
                } catch (NumberFormatException unused4) {
                    int i38 = i2;
                    throw new ParseException(jo.h("Start year is not properly set at line ", i38, "."), i38);
                }
            } catch (NumberFormatException unused5) {
                int i39 = i2;
                throw new ParseException(jo.h("Offset is not properly set at line ", i39, "."), i39);
            }
        }
    }

    public static void k0() throws Throwable {
        InputStream fileInputStream;
        ZipFile zipFile;
        String property = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigFile");
        if (property == null) {
            property = "hijrah_deviation.cfg";
        }
        String property2 = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigDir");
        BufferedReader bufferedReader = null;
        if (property2 != null) {
            if (property2.length() != 0 || !property2.endsWith(System.getProperty("file.separator"))) {
                StringBuilder sbZ = jo.z(property2);
                sbZ.append(System.getProperty("file.separator"));
                property2 = sbZ.toString();
            }
            StringBuilder sbZ2 = jo.z(property2);
            sbZ2.append(t);
            sbZ2.append(property);
            File file = new File(sbZ2.toString());
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (IOException e) {
                    throw e;
                }
            } else {
                fileInputStream = null;
            }
        } else {
            StringTokenizer stringTokenizer = new StringTokenizer(System.getProperty("java.class.path"), u);
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                File file2 = new File(strNextToken);
                if (file2.exists()) {
                    if (file2.isDirectory()) {
                        StringBuilder sbZ3 = jo.z(strNextToken);
                        char c = t;
                        sbZ3.append(c);
                        String str = v;
                        sbZ3.append(str);
                        if (new File(sbZ3.toString(), property).exists()) {
                            try {
                                fileInputStream = new FileInputStream(strNextToken + c + str + c + property);
                                break;
                            } catch (IOException e2) {
                                throw e2;
                            }
                        }
                    } else {
                        try {
                            zipFile = new ZipFile(file2);
                        } catch (IOException unused) {
                            zipFile = null;
                        }
                        if (zipFile != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(v);
                            char c2 = t;
                            sb.append(c2);
                            sb.append(property);
                            String string = sb.toString();
                            ZipEntry entry = zipFile.getEntry(string);
                            if (entry == null) {
                                if (c2 == '/') {
                                    string = string.replace('/', IOUtils.DIR_SEPARATOR_WINDOWS);
                                } else if (c2 == '\\') {
                                    string = string.replace(IOUtils.DIR_SEPARATOR_WINDOWS, '/');
                                }
                                entry = zipFile.getEntry(string);
                            }
                            if (entry != null) {
                                try {
                                    fileInputStream = zipFile.getInputStream(entry);
                                    break;
                                } catch (IOException e3) {
                                    throw e3;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            fileInputStream = null;
        }
        if (fileInputStream == null) {
            return;
        }
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream));
            int i = 0;
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        bufferedReader2.close();
                        return;
                    } else {
                        i++;
                        i0(line.trim(), i);
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static m58 l0(int i, int i2, int i3) {
        int iIntValue = Z(i)[i2 - 1].intValue();
        if (i3 > iIntValue) {
            i3 = iIntValue;
        }
        return g0(i, i2, i3);
    }

    private Object readResolve() {
        return new m58(this.k);
    }

    private Object writeReplace() {
        return new w58((byte) 3, this);
    }

    @Override // defpackage.e58, defpackage.o68, defpackage.t68
    /* renamed from: C */
    public t68 N(long j, b78 b78Var) {
        return (m58) super.N(j, b78Var);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        int iK;
        int i;
        if (!(y68Var instanceof q68)) {
            return y68Var.x(this);
        }
        switch (((q68) y68Var).ordinal()) {
            case 15:
                iK = this.j.K();
                return iK;
            case 16:
                i = (this.h - 1) % 7;
                iK = i + 1;
                return iK;
            case 17:
                i = (this.i - 1) % 7;
                iK = i + 1;
                return iK;
            case 18:
                iK = this.h;
                return iK;
            case 19:
                iK = this.i;
                return iK;
            case 20:
                return Q();
            case 21:
                i = (this.h - 1) / 7;
                iK = i + 1;
                return iK;
            case 22:
                i = (this.i - 1) / 7;
                iK = i + 1;
                return iK;
            case 23:
                iK = this.g;
                return iK;
            case 24:
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
            case 25:
                iK = this.f;
                return iK;
            case 26:
                iK = this.f;
                return iK;
            case 27:
                return this.e.ordinal();
        }
    }

    @Override // defpackage.d58, defpackage.e58, defpackage.t68
    /* renamed from: I */
    public t68 O(long j, b78 b78Var) {
        return (m58) super.I(j, b78Var);
    }

    @Override // defpackage.d58, defpackage.e58
    public final f58<m58> K(r48 r48Var) {
        return new g58(this, r48Var);
    }

    @Override // defpackage.e58
    public j58 M() {
        return l58.g;
    }

    @Override // defpackage.e58
    public k58 N() {
        return this.e;
    }

    @Override // defpackage.e58
    /* renamed from: O */
    public e58 N(long j, b78 b78Var) {
        return (m58) super.N(j, b78Var);
    }

    @Override // defpackage.d58, defpackage.e58
    /* renamed from: P */
    public e58 O(long j, b78 b78Var) {
        return (m58) super.I(j, b78Var);
    }

    @Override // defpackage.e58
    public long Q() {
        return c0(this.f, this.g, this.h);
    }

    @Override // defpackage.e58
    /* renamed from: R */
    public e58 x(v68 v68Var) {
        return (m58) l58.g.l(v68Var.l(this));
    }

    @Override // defpackage.d58
    /* renamed from: T */
    public d58 I(long j, b78 b78Var) {
        return (m58) super.I(j, b78Var);
    }

    @Override // defpackage.d58
    public d58 U(long j) {
        return new m58(this.k + j);
    }

    @Override // defpackage.d58
    public d58 V(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.g - 1) + ((int) j);
        int i2 = i / 12;
        int i3 = i % 12;
        while (i3 < 0) {
            i3 += 12;
            int i4 = i2 - 1;
            if ((i2 ^ i4) < 0 && (i2 ^ 1) < 0) {
                throw new ArithmeticException(jo.i("Subtraction overflows an int: ", i2, " - ", 1));
            }
            i2 = i4;
        }
        return h0(this.e, kt7.p(this.f, i2), i3 + 1, this.h);
    }

    @Override // defpackage.d58
    public d58 W(long j) {
        if (j == 0) {
            return this;
        }
        return h0(this.e, kt7.p(this.f, (int) j), this.g, this.h);
    }

    public m58 j0(long j) {
        return new m58(this.k + j);
    }

    @Override // defpackage.e58, defpackage.t68
    /* renamed from: m0, reason: merged with bridge method [inline-methods] */
    public m58 i(y68 y68Var, long j) {
        if (!(y68Var instanceof q68)) {
            return (m58) y68Var.l(this, j);
        }
        q68 q68Var = (q68) y68Var;
        q68Var.h.b(j, q68Var);
        int i = (int) j;
        switch (q68Var.ordinal()) {
            case 15:
                return j0(j - this.j.K());
            case 16:
                return j0(j - D(q68.y));
            case 17:
                return j0(j - D(q68.z));
            case 18:
                return l0(this.f, this.g, i);
            case 19:
                int i2 = i - 1;
                return l0(this.f, (i2 / 30) + 1, (i2 % 30) + 1);
            case 20:
                return new m58(i);
            case 21:
                return j0((j - D(q68.D)) * 7);
            case 22:
                return j0((j - D(q68.E)) * 7);
            case 23:
                return l0(this.f, i, this.h);
            case 24:
            default:
                throw new c78(jo.p("Unsupported field: ", y68Var));
            case 25:
                if (this.f < 1) {
                    i = 1 - i;
                }
                return l0(i, this.g, this.h);
            case 26:
                return l0(i, this.g, this.h);
            case 27:
                return l0(1 - this.f, this.g, this.h);
        }
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        int iIntValue;
        if (!(y68Var instanceof q68)) {
            return y68Var.t(this);
        }
        if (!y(y68Var)) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        q68 q68Var = (q68) y68Var;
        int iOrdinal = q68Var.ordinal();
        Integer[] numArr = null;
        if (iOrdinal == 18) {
            int i = this.g - 1;
            int i2 = this.f;
            try {
                numArr = x.get(Integer.valueOf(i2));
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (numArr == null) {
                numArr = f0((long) i2) ? G : F;
            }
            return d78.d(1L, numArr[i].intValue());
        }
        if (iOrdinal != 19) {
            if (iOrdinal == 21) {
                return d78.d(1L, 5L);
            }
            if (iOrdinal == 25) {
                return d78.d(1L, 1000L);
            }
            l58 l58Var = l58.g;
            return q68Var.h;
        }
        int i3 = this.f;
        int i4 = i3 - 1;
        int i5 = i4 / 30;
        try {
            numArr = y.get(Integer.valueOf(i5));
        } catch (ArrayIndexOutOfBoundsException unused2) {
        }
        if (numArr != null) {
            int i6 = i4 % 30;
            if (i6 == 29) {
                Long[] lArr = z;
                iIntValue = (lArr[i5 + 1].intValue() - lArr[i5].intValue()) - numArr[i6].intValue();
            } else {
                iIntValue = numArr[i6 + 1].intValue() - numArr[i6].intValue();
            }
        } else {
            iIntValue = f0((long) i3) ? 355 : 354;
        }
        return d78.d(1L, iIntValue);
    }

    @Override // defpackage.e58, defpackage.t68
    public t68 x(v68 v68Var) {
        return (m58) l58.g.l(v68Var.l(this));
    }
}
