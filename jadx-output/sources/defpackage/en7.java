package defpackage;

import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public class en7 {
    public static final int a(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + FilenameUtils.EXTENSION_SEPARATOR);
    }

    public static final bn7 b(int i, int i2) {
        return new bn7(i, i2, -1);
    }

    public static final bn7 c(bn7 bn7Var, int i) {
        im7.e(bn7Var, "$this$step");
        boolean z = i > 0;
        Integer numValueOf = Integer.valueOf(i);
        im7.e(numValueOf, "step");
        if (z) {
            int i2 = bn7Var.e;
            int i3 = bn7Var.f;
            if (bn7Var.g <= 0) {
                i = -i;
            }
            return new bn7(i2, i3, i);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + FilenameUtils.EXTENSION_SEPARATOR);
    }

    public static final dn7 d(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new dn7(i, i2 - 1);
        }
        dn7 dn7Var = dn7.i;
        return dn7.h;
    }
}
