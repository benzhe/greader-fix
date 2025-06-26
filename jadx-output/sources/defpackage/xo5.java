package defpackage;

import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class xo5 {
    public static final Pattern b = Pattern.compile("[~*/\\[\\]]");
    public final eu5 a;

    static {
        eu5 eu5Var = eu5.f;
    }

    public xo5(List<String> list) {
        this.a = list.isEmpty() ? eu5.g : new eu5(list);
    }

    public static xo5 a(String str) {
        c50.B(str, "Provided field path must not be null.");
        c50.q(!b.matcher(str).find(), "Use FieldPath.of() for field names containing '~*/[]'.", new Object[0]);
        try {
            return b(str.split("\\.", -1));
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException(jo.o("Invalid field path (", str, "). Paths must not be empty, begin with '.', end with '.', or contain '..'"));
        }
    }

    public static xo5 b(String... strArr) {
        c50.q(strArr.length > 0, "Invalid field path. Provided path must not be empty.", new Object[0]);
        int i = 0;
        while (i < strArr.length) {
            boolean z = (strArr[i] == null || strArr[i].isEmpty()) ? false : true;
            StringBuilder sbZ = jo.z("Invalid field name at argument ");
            i++;
            sbZ.append(i);
            sbZ.append(". Field names must not be null or empty.");
            c50.q(z, sbZ.toString(), new Object[0]);
        }
        return new xo5(Arrays.asList(strArr));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || xo5.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((xo5) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.l();
    }
}
