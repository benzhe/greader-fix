package defpackage;

import android.graphics.Color;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class d8 {
    public static final ThreadLocal<double[]> a = new ThreadLocal<>();

    public static void a(int i, int i2, int i3, float[] fArr) {
        float f;
        float fAbs;
        float f2 = i / 255.0f;
        float f3 = i2 / 255.0f;
        float f4 = i3 / 255.0f;
        float fMax = Math.max(f2, Math.max(f3, f4));
        float fMin = Math.min(f2, Math.min(f3, f4));
        float f5 = fMax - fMin;
        float f6 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f = 0.0f;
            fAbs = 0.0f;
        } else {
            f = fMax == f2 ? ((f3 - f4) / f5) % 6.0f : fMax == f3 ? ((f4 - f2) / f5) + 2.0f : 4.0f + ((f2 - f3) / f5);
            fAbs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < 0.0f) {
            f7 += 360.0f;
        }
        fArr[0] = g(f7, 0.0f, 360.0f);
        fArr[1] = g(fAbs, 0.0f, 1.0f);
        fArr[2] = g(f6, 0.0f, 1.0f);
    }

    public static double b(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            StringBuilder sbZ = jo.z("background can not be translucent: #");
            sbZ.append(Integer.toHexString(i2));
            throw new IllegalArgumentException(sbZ.toString());
        }
        if (Color.alpha(i) < 255) {
            i = e(i, i2);
        }
        double dC = c(i) + 0.05d;
        double dC2 = c(i2) + 0.05d;
        return Math.max(dC, dC2) / Math.min(dC, dC2);
    }

    public static double c(int i) {
        ThreadLocal<double[]> threadLocal = a;
        double[] dArr = threadLocal.get();
        if (dArr == null) {
            dArr = new double[3];
            threadLocal.set(dArr);
        }
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d = iRed / 255.0d;
        double dPow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = iGreen / 255.0d;
        double dPow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = iBlue / 255.0d;
        double dPow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * 100.0d;
        dArr[1] = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * 100.0d;
        dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * 100.0d;
        return dArr[1] / 100.0d;
    }

    public static int d(int i, int i2, float f) {
        int iAlpha = Color.alpha(i2);
        int i3 = Base64.BASELENGTH;
        if (iAlpha != 255) {
            StringBuilder sbZ = jo.z("background can not be translucent: #");
            sbZ.append(Integer.toHexString(i2));
            throw new IllegalArgumentException(sbZ.toString());
        }
        double d = f;
        if (b(h(i, Base64.BASELENGTH), i2) < d) {
            return -1;
        }
        int i4 = 0;
        for (int i5 = 0; i5 <= 10 && i3 - i4 > 1; i5++) {
            int i6 = (i4 + i3) / 2;
            if (b(h(i, i6), i2) < d) {
                i4 = i6;
            } else {
                i3 = i6;
            }
        }
        return i3;
    }

    public static int e(int i, int i2) {
        int iAlpha = Color.alpha(i2);
        int iAlpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - iAlpha2) * (255 - iAlpha)) / Base64.BASELENGTH);
        return Color.argb(i3, f(Color.red(i), iAlpha2, Color.red(i2), iAlpha, i3), f(Color.green(i), iAlpha2, Color.green(i2), iAlpha, i3), f(Color.blue(i), iAlpha2, Color.blue(i2), iAlpha, i3));
    }

    public static int f(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((255 - i2) * (i3 * i4)) + ((i * Base64.BASELENGTH) * i2)) / (i5 * Base64.BASELENGTH);
    }

    public static float g(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int h(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }
}
