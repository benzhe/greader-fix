package defpackage;

import java.math.BigInteger;
import java.util.Objects;

/* loaded from: classes.dex */
public final class yd6 extends td6 {
    public final Object a;

    public yd6(Boolean bool) {
        Objects.requireNonNull(bool);
        this.a = bool;
    }

    public static boolean n(yd6 yd6Var) {
        Object obj = yd6Var.a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yd6.class != obj.getClass()) {
            return false;
        }
        yd6 yd6Var = (yd6) obj;
        if (this.a == null) {
            return yd6Var.a == null;
        }
        if (n(this) && n(yd6Var)) {
            return j().longValue() == yd6Var.j().longValue();
        }
        Object obj2 = this.a;
        if (!(obj2 instanceof Number) || !(yd6Var.a instanceof Number)) {
            return obj2.equals(yd6Var.a);
        }
        double dDoubleValue = j().doubleValue();
        double dDoubleValue2 = yd6Var.j().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public boolean h() {
        Object obj = this.a;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(l());
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.a == null) {
            return 31;
        }
        if (n(this)) {
            jDoubleToLongBits = j().longValue();
        } else {
            Object obj = this.a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(j().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public Number j() {
        Object obj = this.a;
        return obj instanceof String ? new ye6((String) this.a) : (Number) obj;
    }

    public String l() {
        Object obj = this.a;
        return obj instanceof Number ? j().toString() : obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    public yd6(Number number) {
        Objects.requireNonNull(number);
        this.a = number;
    }

    public yd6(String str) {
        Objects.requireNonNull(str);
        this.a = str;
    }
}
