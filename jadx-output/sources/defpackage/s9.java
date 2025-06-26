package defpackage;

import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public class s9<F, S> {
    public final F a;
    public final S b;

    public s9(F f, S s) {
        this.a = f;
        this.b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s9)) {
            return false;
        }
        s9 s9Var = (s9) obj;
        return Objects.equals(s9Var.a, this.a) && Objects.equals(s9Var.b, this.b);
    }

    public int hashCode() {
        F f = this.a;
        int iHashCode = f == null ? 0 : f.hashCode();
        S s = this.b;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Pair{");
        sbZ.append(String.valueOf(this.a));
        sbZ.append(StringUtils.SPACE);
        sbZ.append(String.valueOf(this.b));
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
