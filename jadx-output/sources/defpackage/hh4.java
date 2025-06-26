package defpackage;

/* loaded from: classes.dex */
public final class hh4 {
    public static int a(int i, int i2) {
        String strN1;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strN1 = c50.N1("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException(jo.M(26, "negative size: ", i2));
            }
            strN1 = c50.N1("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strN1);
    }

    public static String b(int i, int i2, String str) {
        if (i < 0) {
            return c50.N1("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return c50.N1("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(jo.M(26, "negative size: ", i2));
    }

    public static void c(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? b(i, i3, "start index") : (i2 < 0 || i2 > i3) ? b(i2, i3, "end index") : c50.N1("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }
}
