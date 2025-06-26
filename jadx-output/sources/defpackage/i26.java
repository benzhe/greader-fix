package defpackage;

import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class i26 extends m56 {
    public final String a;
    public final ea6 b;

    public i26(String str, ea6 ea6Var) {
        Objects.requireNonNull(str, "Null installationId");
        this.a = str;
        Objects.requireNonNull(ea6Var, "Null installationTokenResult");
        this.b = ea6Var;
    }

    @Override // defpackage.m56
    public String a() {
        return this.a;
    }

    @Override // defpackage.m56
    public ea6 b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m56)) {
            return false;
        }
        m56 m56Var = (m56) obj;
        return this.a.equals(m56Var.a()) && this.b.equals(m56Var.b());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("InstallationIdResult{installationId=");
        sbZ.append(this.a);
        sbZ.append(", installationTokenResult=");
        sbZ.append(this.b);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
