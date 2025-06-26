package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public class dp5 implements Comparable<dp5> {
    public final double e;
    public final double f;

    public dp5(double d, double d2) {
        if (Double.isNaN(d) || d < -90.0d || d > 90.0d) {
            throw new IllegalArgumentException("Latitude must be in the range of [-90, 90]");
        }
        if (Double.isNaN(d2) || d2 < -180.0d || d2 > 180.0d) {
            throw new IllegalArgumentException("Longitude must be in the range of [-180, 180]");
        }
        this.e = d;
        this.f = d2;
    }

    @Override // java.lang.Comparable
    public int compareTo(dp5 dp5Var) {
        dp5 dp5Var2 = dp5Var;
        double d = this.e;
        double d2 = dp5Var2.e;
        Comparator comparator = vx5.a;
        int iV = c50.V(d, d2);
        return iV == 0 ? c50.V(this.f, dp5Var2.f) : iV;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof dp5)) {
            return false;
        }
        dp5 dp5Var = (dp5) obj;
        return this.e == dp5Var.e && this.f == dp5Var.f;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.e);
        int i = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f);
        return (i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
    }

    public String toString() {
        StringBuilder sbZ = jo.z("GeoPoint { latitude=");
        sbZ.append(this.e);
        sbZ.append(", longitude=");
        sbZ.append(this.f);
        sbZ.append(" }");
        return sbZ.toString();
    }
}
