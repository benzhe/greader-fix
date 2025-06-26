package defpackage;

import com.google.firebase.Timestamp;
import defpackage.yt5;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class yu5 extends qu5 {
    public final hu5 c;

    public yu5(bu5 bu5Var, hu5 hu5Var, wu5 wu5Var) {
        super(bu5Var, wu5Var);
        this.c = hu5Var;
    }

    @Override // defpackage.qu5
    public fu5 a(fu5 fu5Var, fu5 fu5Var2, Timestamp timestamp) {
        g(fu5Var);
        if (this.b.c(fu5Var)) {
            return new yt5(this.a, fu5Var instanceof yt5 ? fu5Var.b : ju5.f, this.c, yt5.a.LOCAL_MUTATIONS);
        }
        return fu5Var;
    }

    @Override // defpackage.qu5
    public fu5 b(fu5 fu5Var, tu5 tu5Var) {
        g(fu5Var);
        bx5.c(tu5Var.b == null, "Transform results received by SetMutation.", new Object[0]);
        return new yt5(this.a, tu5Var.a, this.c, yt5.a.COMMITTED_MUTATIONS);
    }

    @Override // defpackage.qu5
    public hu5 c(fu5 fu5Var) {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yu5.class != obj.getClass()) {
            return false;
        }
        yu5 yu5Var = (yu5) obj;
        return d(yu5Var) && this.c.equals(yu5Var.c);
    }

    public int hashCode() {
        return this.c.hashCode() + (e() * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("SetMutation{");
        sbZ.append(f());
        sbZ.append(", value=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
