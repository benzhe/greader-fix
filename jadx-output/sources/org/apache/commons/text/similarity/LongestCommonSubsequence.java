package org.apache.commons.text.similarity;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class LongestCommonSubsequence implements SimilarityScore<Integer> {
    @Deprecated
    public CharSequence logestCommonSubsequence(CharSequence charSequence, CharSequence charSequence2) {
        return longestCommonSubsequence(charSequence, charSequence2);
    }

    public CharSequence longestCommonSubsequence(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Inputs must not be null");
        }
        StringBuilder sb = new StringBuilder(Math.max(charSequence.length(), charSequence2.length()));
        int[][] iArrLongestCommonSubstringLengthArray = longestCommonSubstringLengthArray(charSequence, charSequence2);
        int length = charSequence.length() - 1;
        int length2 = charSequence2.length() - 1;
        int i = iArrLongestCommonSubstringLengthArray[charSequence.length()][charSequence2.length()];
        while (true) {
            i--;
            while (i >= 0) {
                if (charSequence.charAt(length) == charSequence2.charAt(length2)) {
                    break;
                }
                if (iArrLongestCommonSubstringLengthArray[length + 1][length2] < iArrLongestCommonSubstringLengthArray[length][length2 + 1]) {
                    length--;
                } else {
                    length2--;
                }
            }
            return sb.reverse().toString();
            sb.append(charSequence.charAt(length));
            length--;
            length2--;
        }
    }

    public int[][] longestCommonSubstringLengthArray(CharSequence charSequence, CharSequence charSequence2) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, charSequence.length() + 1, charSequence2.length() + 1);
        for (int i = 0; i < charSequence.length(); i++) {
            for (int i2 = 0; i2 < charSequence2.length(); i2++) {
                if (i == 0) {
                    iArr[i][i2] = 0;
                }
                if (i2 == 0) {
                    iArr[i][i2] = 0;
                }
                if (charSequence.charAt(i) == charSequence2.charAt(i2)) {
                    iArr[i + 1][i2 + 1] = iArr[i][i2] + 1;
                } else {
                    int i3 = i + 1;
                    int i4 = i2 + 1;
                    iArr[i3][i4] = Math.max(iArr[i3][i2], iArr[i][i4]);
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.text.similarity.SimilarityScore
    public Integer apply(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Inputs must not be null");
        }
        return Integer.valueOf(longestCommonSubsequence(charSequence, charSequence2).length());
    }
}
