package defpackage;

import java.util.Set;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ou5 {
    public final Set<eu5> a;

    public ou5(Set<eu5> set) {
        this.a = set;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ou5.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((ou5) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("FieldMask{mask=");
        sbZ.append(this.a.toString());
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
