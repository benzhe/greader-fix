package defpackage;

import java.util.Collections;
import java.util.Map;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class xn5 {
    public final String a;
    public final Map<Class<?>, Object> b;

    public xn5(String str, Map<Class<?>, Object> map) {
        this.a = str;
        this.b = map;
    }

    public static xn5 a(String str) {
        return new xn5(str, Collections.emptyMap());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xn5)) {
            return false;
        }
        xn5 xn5Var = (xn5) obj;
        return this.a.equals(xn5Var.a) && this.b.equals(xn5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("FieldDescriptor{name=");
        sbZ.append(this.a);
        sbZ.append(", properties=");
        sbZ.append(this.b.values());
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
