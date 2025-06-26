package defpackage;

import java.util.Arrays;
import java.util.Map;

/* loaded from: classes2.dex */
public final class w87 {
    public final String a;
    public final Map<String, ?> b;

    public w87(String str, Map<String, ?> map) {
        c50.A(str, "policyName");
        this.a = str;
        c50.A(map, "rawConfigValue");
        this.b = map;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w87)) {
            return false;
        }
        w87 w87Var = (w87) obj;
        return this.a.equals(w87Var.a) && this.b.equals(w87Var.b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("policyName", this.a);
        nd5VarK0.d("rawConfigValue", this.b);
        return nd5VarK0.toString();
    }
}
