package org.apache.commons.lang3;

import java.util.Random;

/* loaded from: classes2.dex */
public class RandomUtils {
    private static final Random RANDOM = new Random();

    public static boolean nextBoolean() {
        return RANDOM.nextBoolean();
    }

    public static byte[] nextBytes(int i) {
        Validate.isTrue(i >= 0, "Count cannot be negative.", new Object[0]);
        byte[] bArr = new byte[i];
        RANDOM.nextBytes(bArr);
        return bArr;
    }

    public static double nextDouble(double d, double d2) {
        Validate.isTrue(d2 >= d, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(d >= 0.0d, "Both range values must be non-negative.", new Object[0]);
        if (d == d2) {
            return d;
        }
        return (RANDOM.nextDouble() * (d2 - d)) + d;
    }

    public static float nextFloat(float f, float f2) {
        Validate.isTrue(f2 >= f, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(f >= 0.0f, "Both range values must be non-negative.", new Object[0]);
        if (f == f2) {
            return f;
        }
        return (RANDOM.nextFloat() * (f2 - f)) + f;
    }

    public static int nextInt(int i, int i2) {
        Validate.isTrue(i2 >= i, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(i >= 0, "Both range values must be non-negative.", new Object[0]);
        return i == i2 ? i : RANDOM.nextInt(i2 - i) + i;
    }

    public static long nextLong(long j, long j2) {
        Validate.isTrue(j2 >= j, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(j >= 0, "Both range values must be non-negative.", new Object[0]);
        return j == j2 ? j : (long) nextDouble(j, j2);
    }

    public static double nextDouble() {
        return nextDouble(0.0d, Double.MAX_VALUE);
    }

    public static float nextFloat() {
        return nextFloat(0.0f, Float.MAX_VALUE);
    }

    public static int nextInt() {
        return nextInt(0, Integer.MAX_VALUE);
    }

    public static long nextLong() {
        return nextLong(0L, Long.MAX_VALUE);
    }
}
