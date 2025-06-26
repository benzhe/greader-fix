package defpackage;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public final class ye6 extends Number {
    public final String e;

    public ye6(String str) {
        this.e = str;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.e);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ye6)) {
            return false;
        }
        String str = this.e;
        String str2 = ((ye6) obj).e;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.e);
    }

    public int hashCode() {
        return this.e.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.e);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.e);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.e).intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.e);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.e).longValue();
        }
    }

    public String toString() {
        return this.e;
    }
}
