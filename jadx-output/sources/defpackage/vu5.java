package defpackage;

import com.google.firebase.Timestamp;
import defpackage.hu5;
import defpackage.yt5;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class vu5 extends qu5 {
    public final hu5 c;
    public final ou5 d;

    public vu5(bu5 bu5Var, hu5 hu5Var, ou5 ou5Var, wu5 wu5Var) {
        super(bu5Var, wu5Var);
        this.c = hu5Var;
        this.d = ou5Var;
    }

    @Override // defpackage.qu5
    public fu5 a(fu5 fu5Var, fu5 fu5Var2, Timestamp timestamp) {
        g(fu5Var);
        if (this.b.c(fu5Var)) {
            return new yt5(this.a, fu5Var instanceof yt5 ? fu5Var.b : ju5.f, h(fu5Var), yt5.a.LOCAL_MUTATIONS);
        }
        return fu5Var;
    }

    @Override // defpackage.qu5
    public fu5 b(fu5 fu5Var, tu5 tu5Var) {
        g(fu5Var);
        bx5.c(tu5Var.b == null, "Transform results received by PatchMutation.", new Object[0]);
        if (this.b.c(fu5Var)) {
            return new yt5(this.a, tu5Var.a, h(fu5Var), yt5.a.COMMITTED_MUTATIONS);
        }
        return new ku5(this.a, tu5Var.a);
    }

    @Override // defpackage.qu5
    public hu5 c(fu5 fu5Var) {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vu5.class != obj.getClass()) {
            return false;
        }
        vu5 vu5Var = (vu5) obj;
        return d(vu5Var) && this.c.equals(vu5Var.c);
    }

    public final hu5 h(fu5 fu5Var) {
        hu5 hu5Var = fu5Var instanceof yt5 ? ((yt5) fu5Var).d : hu5.b;
        Objects.requireNonNull(hu5Var);
        hu5.a aVar = new hu5.a(hu5Var);
        for (eu5 eu5Var : this.d.a) {
            if (!eu5Var.C()) {
                bd6 bd6VarC = this.c.c(eu5Var);
                if (bd6VarC == null) {
                    bx5.c(!eu5Var.C(), "Cannot delete field for empty path on ObjectValue", new Object[0]);
                    aVar.d(eu5Var, null);
                } else {
                    aVar.c(eu5Var, bd6VarC);
                }
            }
        }
        return aVar.b();
    }

    public int hashCode() {
        return this.c.hashCode() + (e() * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("PatchMutation{");
        sbZ.append(f());
        sbZ.append(", mask=");
        sbZ.append(this.d);
        sbZ.append(", value=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
