package defpackage;

import com.google.firebase.Timestamp;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class nu5 extends qu5 {
    public nu5(bu5 bu5Var, wu5 wu5Var) {
        super(bu5Var, wu5Var);
    }

    @Override // defpackage.qu5
    public fu5 a(fu5 fu5Var, fu5 fu5Var2, Timestamp timestamp) {
        g(fu5Var);
        return !this.b.c(fu5Var) ? fu5Var : new gu5(this.a, ju5.f, false);
    }

    @Override // defpackage.qu5
    public fu5 b(fu5 fu5Var, tu5 tu5Var) {
        g(fu5Var);
        bx5.c(tu5Var.b == null, "Transform results received by DeleteMutation.", new Object[0]);
        return new gu5(this.a, tu5Var.a, true);
    }

    @Override // defpackage.qu5
    public hu5 c(fu5 fu5Var) {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || nu5.class != obj.getClass()) {
            return false;
        }
        return d((nu5) obj);
    }

    public int hashCode() {
        return e();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DeleteMutation{");
        sbZ.append(f());
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
