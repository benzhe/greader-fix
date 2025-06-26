package org.apache.commons.text.similarity;

import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class LevenshteinDetailedDistance implements EditDistance<LevenshteinResults> {
    private static final LevenshteinDetailedDistance DEFAULT_INSTANCE = new LevenshteinDetailedDistance();
    private final Integer threshold;

    public LevenshteinDetailedDistance() {
        this(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
    
        if (r18 != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006c, code lost:
    
        r4 = r4 + 1;
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        r3 = r3 + 1;
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0080, code lost:
    
        if (r18 != false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.apache.commons.text.similarity.LevenshteinResults findDetailedResults(java.lang.CharSequence r15, java.lang.CharSequence r16, int[][] r17, boolean r18) {
        /*
            int r0 = r16.length()
            int r1 = r15.length()
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
        Lc:
            if (r0 < 0) goto L8c
            if (r1 < 0) goto L8c
            r6 = -1
            if (r1 != 0) goto L15
            r7 = -1
            goto L1b
        L15:
            r7 = r17[r0]
            int r8 = r1 + (-1)
            r7 = r7[r8]
        L1b:
            if (r0 != 0) goto L1f
            r8 = -1
            goto L25
        L1f:
            int r8 = r0 + (-1)
            r8 = r17[r8]
            r8 = r8[r1]
        L25:
            if (r0 <= 0) goto L32
            if (r1 <= 0) goto L32
            int r9 = r0 + (-1)
            r9 = r17[r9]
            int r10 = r1 + (-1)
            r9 = r9[r10]
            goto L33
        L32:
            r9 = -1
        L33:
            if (r7 != r6) goto L3a
            if (r8 != r6) goto L3a
            if (r9 != r6) goto L3a
            goto L8c
        L3a:
            r10 = r17[r0]
            r10 = r10[r1]
            if (r1 <= 0) goto L58
            if (r0 <= 0) goto L58
            int r11 = r1 + (-1)
            r12 = r15
            char r11 = r15.charAt(r11)
            int r13 = r0 + (-1)
            r14 = r16
            char r13 = r14.charAt(r13)
            if (r11 != r13) goto L5b
        L53:
            int r1 = r1 + (-1)
            int r0 = r0 + (-1)
            goto Lc
        L58:
            r12 = r15
            r14 = r16
        L5b:
            int r11 = r10 + (-1)
            r13 = 1
            if (r11 != r7) goto L64
            if (r10 > r9) goto L64
            if (r10 <= r8) goto L68
        L64:
            if (r9 != r6) goto L74
            if (r8 != r6) goto L74
        L68:
            int r1 = r1 + (-1)
            if (r18 == 0) goto L70
        L6c:
            int r4 = r4 + 1
            r6 = 0
            goto L85
        L70:
            int r3 = r3 + 1
            r6 = 1
            goto L84
        L74:
            if (r11 != r8) goto L7a
            if (r10 > r9) goto L7a
            if (r10 <= r7) goto L7e
        L7a:
            if (r9 != r6) goto L83
            if (r7 != r6) goto L83
        L7e:
            int r0 = r0 + (-1)
            if (r18 == 0) goto L6c
            goto L70
        L83:
            r6 = 0
        L84:
            r13 = 0
        L85:
            if (r13 != 0) goto Lc
            if (r6 != 0) goto Lc
            int r5 = r5 + 1
            goto L53
        L8c:
            org.apache.commons.text.similarity.LevenshteinResults r0 = new org.apache.commons.text.similarity.LevenshteinResults
            int r1 = r4 + r3
            int r1 = r1 + r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r5)
            r0.<init>(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.similarity.LevenshteinDetailedDistance.findDetailedResults(java.lang.CharSequence, java.lang.CharSequence, int[][], boolean):org.apache.commons.text.similarity.LevenshteinResults");
    }

    public static LevenshteinDetailedDistance getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private static LevenshteinResults limitedCompare(CharSequence charSequence, CharSequence charSequence2, int i) {
        int i2;
        int length;
        boolean z;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("CharSequences must not be null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        int i3 = -1;
        int i4 = 0;
        if (length2 == 0) {
            return length3 <= i ? new LevenshteinResults(Integer.valueOf(length3), Integer.valueOf(length3), 0, 0) : new LevenshteinResults(-1, 0, 0, 0);
        }
        if (length3 == 0) {
            return length2 <= i ? new LevenshteinResults(Integer.valueOf(length2), 0, Integer.valueOf(length2), 0) : new LevenshteinResults(-1, 0, 0, 0);
        }
        int i5 = 1;
        if (length2 > length3) {
            length = charSequence.length();
            i2 = length3;
            z = true;
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            i2 = length2;
            length = length3;
            z = false;
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int i6 = i2 + 1;
        int[] iArr = new int[i6];
        int[] iArr2 = new int[i6];
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) int.class, length + 1, i6);
        for (int i7 = 0; i7 <= i2; i7++) {
            iArr3[0][i7] = i7;
        }
        for (int i8 = 0; i8 <= length; i8++) {
            iArr3[i8][0] = i8;
        }
        int iMin = Math.min(i2, i) + 1;
        for (int i9 = 0; i9 < iMin; i9++) {
            iArr[i9] = i9;
        }
        int i10 = Integer.MAX_VALUE;
        Arrays.fill(iArr, iMin, i6, Integer.MAX_VALUE);
        Arrays.fill(iArr2, Integer.MAX_VALUE);
        int i11 = 1;
        while (i11 <= length) {
            char cCharAt = charSequence4.charAt(i11 - 1);
            iArr2[i4] = i11;
            int iMax = Math.max(i5, i11 - i);
            int iMin2 = i11 > i10 - i ? i2 : Math.min(i2, i11 + i);
            if (iMax > iMin2) {
                return new LevenshteinResults(Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i4), Integer.valueOf(i4));
            }
            if (iMax > 1) {
                iArr2[iMax - 1] = i10;
            }
            while (iMax <= iMin2) {
                int i12 = iMax - 1;
                if (charSequence3.charAt(i12) == cCharAt) {
                    iArr2[iMax] = iArr[i12];
                } else {
                    iArr2[iMax] = Math.min(Math.min(iArr2[i12], iArr[iMax]), iArr[i12]) + 1;
                }
                iArr3[i11][iMax] = iArr2[iMax];
                iMax++;
            }
            i11++;
            i3 = -1;
            i4 = 0;
            i5 = 1;
            i10 = Integer.MAX_VALUE;
            int[] iArr4 = iArr2;
            iArr2 = iArr;
            iArr = iArr4;
        }
        return iArr[i2] <= i ? findDetailedResults(charSequence3, charSequence4, iArr3, z) : new LevenshteinResults(-1, 0, 0, 0);
    }

    private static LevenshteinResults unlimitedCompare(CharSequence charSequence, CharSequence charSequence2) {
        int i;
        int length;
        boolean z;
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("CharSequences must not be null");
        }
        int length2 = charSequence.length();
        int length3 = charSequence2.length();
        char c = 0;
        if (length2 == 0) {
            return new LevenshteinResults(Integer.valueOf(length3), Integer.valueOf(length3), 0, 0);
        }
        if (length3 == 0) {
            return new LevenshteinResults(Integer.valueOf(length2), 0, Integer.valueOf(length2), 0);
        }
        if (length2 > length3) {
            length = charSequence.length();
            i = length3;
            z = true;
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            i = length2;
            length = length3;
            z = false;
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int i2 = i + 1;
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) int.class, length + 1, i2);
        for (int i3 = 0; i3 <= i; i3++) {
            iArr3[0][i3] = i3;
        }
        for (int i4 = 0; i4 <= length; i4++) {
            iArr3[i4][0] = i4;
        }
        for (int i5 = 0; i5 <= i; i5++) {
            iArr[i5] = i5;
        }
        int i6 = 1;
        while (true) {
            int[] iArr4 = iArr2;
            iArr2 = iArr;
            iArr = iArr4;
            if (i6 > length) {
                return findDetailedResults(charSequence3, charSequence4, iArr3, z);
            }
            char cCharAt = charSequence4.charAt(i6 - 1);
            iArr[c] = i6;
            for (int i7 = 1; i7 <= i; i7++) {
                int i8 = i7 - 1;
                iArr[i7] = Math.min(Math.min(iArr[i8] + 1, iArr2[i7] + 1), iArr2[i8] + (charSequence3.charAt(i8) == cCharAt ? 0 : 1));
                iArr3[i6][i7] = iArr[i7];
            }
            i6++;
            c = 0;
        }
    }

    public Integer getThreshold() {
        return this.threshold;
    }

    public LevenshteinDetailedDistance(Integer num) {
        if (num != null && num.intValue() < 0) {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        this.threshold = num;
    }

    @Override // org.apache.commons.text.similarity.EditDistance, org.apache.commons.text.similarity.SimilarityScore
    public LevenshteinResults apply(CharSequence charSequence, CharSequence charSequence2) {
        Integer num = this.threshold;
        return num != null ? limitedCompare(charSequence, charSequence2, num.intValue()) : unlimitedCompare(charSequence, charSequence2);
    }
}
