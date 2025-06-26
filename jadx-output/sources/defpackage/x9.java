package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class x9 {
    public final Object a;

    public x9(Object obj) {
        this.a = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x9.class != obj.getClass()) {
            return false;
        }
        x9 x9Var = (x9) obj;
        Object obj2 = this.a;
        return obj2 == null ? x9Var.a == null : obj2.equals(x9Var.a);
    }

    public int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DisplayCutoutCompat{");
        sbZ.append(this.a);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
