package defpackage;

import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ig5 {
    public final Class<?> a;
    public final int b;
    public final int c;

    public ig5(Class<?> cls, int i, int i2) {
        Objects.requireNonNull(cls, "Null dependency anInterface.");
        this.a = cls;
        this.b = i;
        this.c = i2;
    }

    public boolean a() {
        return this.b == 2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ig5)) {
            return false;
        }
        ig5 ig5Var = (ig5) obj;
        return this.a == ig5Var.a && this.b == ig5Var.b && this.c == ig5Var.c;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.c;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i2 = this.c;
        if (i2 == 0) {
            str = "direct";
        } else if (i2 == 1) {
            str = "provider";
        } else {
            if (i2 != 2) {
                throw new AssertionError(jo.g("Unsupported injection: ", i2));
            }
            str = "deferred";
        }
        return jo.s(sb, str, StringSubstitutor.DEFAULT_VAR_END);
    }
}
