package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public class t4 {
    public float[] a = new float[0];
    public double[] b = new double[0];
    public double[] c;
    public int d;

    public void a(double d, float f) {
        int length = this.a.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.b, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.b = Arrays.copyOf(this.b, length);
        this.a = Arrays.copyOf(this.a, length);
        this.c = new double[length];
        double[] dArr = this.b;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.b[iBinarySearch] = d;
        this.a[iBinarySearch] = f;
    }

    public double b(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.b, d);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i = (-iBinarySearch) - 1;
        float[] fArr = this.a;
        int i2 = i - 1;
        double d2 = fArr[i] - fArr[i2];
        double[] dArr = this.b;
        double d3 = d2 / (dArr[i] - dArr[i2]);
        return (fArr[i2] - (d3 * dArr[i2])) + (d * d3);
    }

    public double c(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.b, d);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i = (-iBinarySearch) - 1;
        float[] fArr = this.a;
        int i2 = i - 1;
        double d2 = fArr[i] - fArr[i2];
        double[] dArr = this.b;
        double d3 = d2 / (dArr[i] - dArr[i2]);
        return ((((d * d) - (dArr[i2] * dArr[i2])) * d3) / 2.0d) + ((d - dArr[i2]) * (fArr[i2] - (dArr[i2] * d3))) + this.c[i2];
    }

    public double d(double d) {
        double dAbs;
        switch (this.d) {
            case 1:
                return Math.signum(0.5d - (c(d) % 1.0d));
            case 2:
                dAbs = Math.abs((((c(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((c(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((c(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(c(d) * 6.283185307179586d);
            case 6:
                double dAbs2 = 1.0d - Math.abs(((c(d) * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            default:
                return Math.sin(c(d) * 6.283185307179586d);
        }
        return 1.0d - dAbs;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("pos =");
        sbZ.append(Arrays.toString(this.b));
        sbZ.append(" period=");
        sbZ.append(Arrays.toString(this.a));
        return sbZ.toString();
    }
}
