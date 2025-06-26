package defpackage;

import java.util.List;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ir extends or {
    public final List<rr> a;

    public ir(List<rr> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.a = list;
    }

    @Override // defpackage.or
    public List<rr> a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof or) {
            return this.a.equals(((or) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("BatchedLogRequest{logRequests=");
        sbZ.append(this.a);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
