package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class d78 implements Serializable {
    public final long e;
    public final long f;
    public final long g;
    public final long h;

    public d78(long j, long j2, long j3, long j4) {
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = j4;
    }

    public static d78 d(long j, long j2) {
        if (j <= j2) {
            return new d78(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public static d78 e(long j, long j2, long j3) {
        return f(j, j, j2, j3);
    }

    public static d78 f(long j, long j2, long j3, long j4) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
        }
        if (j3 > j4) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 <= j4) {
            return new d78(j, j2, j3, j4);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public int a(long j, y68 y68Var) {
        boolean z = false;
        if ((this.e >= -2147483648L && this.h <= 2147483647L) && c(j)) {
            z = true;
        }
        if (z) {
            return (int) j;
        }
        throw new l48("Invalid int value for " + y68Var + ": " + j);
    }

    public long b(long j, y68 y68Var) {
        if (c(j)) {
            return j;
        }
        if (y68Var == null) {
            throw new l48("Invalid value (valid values " + this + "): " + j);
        }
        throw new l48("Invalid value for " + y68Var + " (valid values " + this + "): " + j);
    }

    public boolean c(long j) {
        return j >= this.e && j <= this.h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d78)) {
            return false;
        }
        d78 d78Var = (d78) obj;
        return this.e == d78Var.e && this.f == d78Var.f && this.g == d78Var.g && this.h == d78Var.h;
    }

    public int hashCode() {
        long j = this.e;
        long j2 = this.f;
        long j3 = (j + j2) << ((int) (j2 + 16));
        long j4 = this.g;
        long j5 = (j3 >> ((int) (j4 + 48))) << ((int) (j4 + 32));
        long j6 = this.h;
        long j7 = ((j5 >> ((int) (32 + j6))) << ((int) (j6 + 48))) >> 16;
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.e);
        if (this.e != this.f) {
            sb.append('/');
            sb.append(this.f);
        }
        sb.append(" - ");
        sb.append(this.g);
        if (this.g != this.h) {
            sb.append('/');
            sb.append(this.h);
        }
        return sb.toString();
    }
}
