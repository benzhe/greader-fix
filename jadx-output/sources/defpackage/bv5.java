package defpackage;

import com.google.firebase.Timestamp;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class bv5 extends qu5 {
    public bv5(bu5 bu5Var, wu5 wu5Var) {
        super(bu5Var, wu5Var);
    }

    @Override // defpackage.qu5
    public fu5 a(fu5 fu5Var, fu5 fu5Var2, Timestamp timestamp) {
        bx5.a("VerifyMutation should only be used in Transactions.", new Object[0]);
        throw null;
    }

    @Override // defpackage.qu5
    public fu5 b(fu5 fu5Var, tu5 tu5Var) {
        bx5.a("VerifyMutation should only be used in Transactions.", new Object[0]);
        throw null;
    }

    @Override // defpackage.qu5
    public hu5 c(fu5 fu5Var) {
        bx5.a("VerifyMutation should only be used in Transactions.", new Object[0]);
        throw null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || bv5.class != obj.getClass()) {
            return false;
        }
        return d((bv5) obj);
    }

    public int hashCode() {
        return e();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("VerifyMutation{");
        sbZ.append(f());
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
