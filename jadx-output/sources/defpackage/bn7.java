package defpackage;

import java.util.Iterator;

/* loaded from: classes2.dex */
public class bn7 implements Iterable<Integer>, wm7 {
    public final int e;
    public final int f;
    public final int g;

    public bn7(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.e = i;
        if (i3 > 0) {
            if (i < i2) {
                i2 -= n56.w1(n56.w1(i2, i3) - n56.w1(i, i3), i3);
            }
        } else {
            if (i3 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (i > i2) {
                int i4 = -i3;
                i2 += n56.w1(n56.w1(i, i4) - n56.w1(i2, i4), i4);
            }
        }
        this.f = i2;
        this.g = i3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof bn7) {
            if (!isEmpty() || !((bn7) obj).isEmpty()) {
                bn7 bn7Var = (bn7) obj;
                if (this.e != bn7Var.e || this.f != bn7Var.f || this.g != bn7Var.g) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.e * 31) + this.f) * 31) + this.g;
    }

    public boolean isEmpty() {
        if (this.g > 0) {
            if (this.e > this.f) {
                return true;
            }
        } else if (this.e < this.f) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<Integer> iterator() {
        return new cn7(this.e, this.f, this.g);
    }

    public String toString() {
        StringBuilder sb;
        int i;
        if (this.g > 0) {
            sb = new StringBuilder();
            sb.append(this.e);
            sb.append("..");
            sb.append(this.f);
            sb.append(" step ");
            i = this.g;
        } else {
            sb = new StringBuilder();
            sb.append(this.e);
            sb.append(" downTo ");
            sb.append(this.f);
            sb.append(" step ");
            i = -this.g;
        }
        sb.append(i);
        return sb.toString();
    }
}
