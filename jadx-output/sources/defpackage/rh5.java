package defpackage;

import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class rh5 extends zi5 {
    public final tk5 a;
    public final String b;

    public rh5(tk5 tk5Var, String str) {
        Objects.requireNonNull(tk5Var, "Null report");
        this.a = tk5Var;
        Objects.requireNonNull(str, "Null sessionId");
        this.b = str;
    }

    @Override // defpackage.zi5
    public tk5 a() {
        return this.a;
    }

    @Override // defpackage.zi5
    public String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zi5)) {
            return false;
        }
        zi5 zi5Var = (zi5) obj;
        return this.a.equals(zi5Var.a()) && this.b.equals(zi5Var.b());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("CrashlyticsReportWithSessionId{report=");
        sbZ.append(this.a);
        sbZ.append(", sessionId=");
        return jo.s(sbZ, this.b, StringSubstitutor.DEFAULT_VAR_END);
    }
}
