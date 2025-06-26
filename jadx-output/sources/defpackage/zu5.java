package defpackage;

import com.google.firebase.Timestamp;
import defpackage.hu5;
import defpackage.yt5;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class zu5 extends qu5 {
    public final List<pu5> c;

    public zu5(bu5 bu5Var, List<pu5> list) {
        super(bu5Var, wu5.a(true));
        this.c = list;
    }

    @Override // defpackage.qu5
    public fu5 a(fu5 fu5Var, fu5 fu5Var2, Timestamp timestamp) {
        g(fu5Var);
        if (!this.b.c(fu5Var)) {
            return fu5Var;
        }
        yt5 yt5VarH = h(fu5Var);
        ArrayList arrayList = new ArrayList(this.c.size());
        for (pu5 pu5Var : this.c) {
            av5 av5Var = pu5Var.b;
            bd6 bd6VarB = fu5Var instanceof yt5 ? ((yt5) fu5Var).b(pu5Var.a) : null;
            if (bd6VarB == null && (fu5Var2 instanceof yt5)) {
                bd6VarB = ((yt5) fu5Var2).b(pu5Var.a);
            }
            arrayList.add(av5Var.a(bd6VarB, timestamp));
        }
        return new yt5(this.a, yt5VarH.b, i(yt5VarH.d, arrayList), yt5.a.LOCAL_MUTATIONS);
    }

    @Override // defpackage.qu5
    public fu5 b(fu5 fu5Var, tu5 tu5Var) {
        g(fu5Var);
        bx5.c(tu5Var.b != null, "Transform results missing for TransformMutation.", new Object[0]);
        if (!this.b.c(fu5Var)) {
            return new ku5(this.a, tu5Var.a);
        }
        yt5 yt5VarH = h(fu5Var);
        List<bd6> list = tu5Var.b;
        ArrayList arrayList = new ArrayList(this.c.size());
        bx5.c(this.c.size() == list.size(), "server transform count (%d) should match field transform count (%d)", Integer.valueOf(list.size()), Integer.valueOf(this.c.size()));
        for (int i = 0; i < list.size(); i++) {
            pu5 pu5Var = this.c.get(i);
            arrayList.add(pu5Var.b.c(yt5VarH.b(pu5Var.a), list.get(i)));
        }
        return new yt5(this.a, tu5Var.a, i(yt5VarH.d, arrayList), yt5.a.COMMITTED_MUTATIONS);
    }

    @Override // defpackage.qu5
    public hu5 c(fu5 fu5Var) {
        hu5.a aVar = null;
        for (pu5 pu5Var : this.c) {
            bd6 bd6VarB = pu5Var.b.b(fu5Var instanceof yt5 ? ((yt5) fu5Var).b(pu5Var.a) : null);
            if (bd6VarB != null) {
                if (aVar == null) {
                    hu5 hu5Var = hu5.b;
                    Objects.requireNonNull(hu5Var);
                    aVar = new hu5.a(hu5Var);
                }
                aVar.c(pu5Var.a, bd6VarB);
            }
        }
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zu5.class != obj.getClass()) {
            return false;
        }
        zu5 zu5Var = (zu5) obj;
        return d(zu5Var) && this.c.equals(zu5Var.c);
    }

    public final yt5 h(fu5 fu5Var) {
        bx5.c(fu5Var instanceof yt5, "Unknown MaybeDocument type %s", fu5Var);
        yt5 yt5Var = (yt5) fu5Var;
        bx5.c(yt5Var.a.equals(this.a), "Can only transform a document with the same key", new Object[0]);
        return yt5Var;
    }

    public int hashCode() {
        return this.c.hashCode() + (e() * 31);
    }

    public final hu5 i(hu5 hu5Var, List<bd6> list) {
        bx5.c(list.size() == this.c.size(), "Transform results length mismatch.", new Object[0]);
        Objects.requireNonNull(hu5Var);
        hu5.a aVar = new hu5.a(hu5Var);
        for (int i = 0; i < this.c.size(); i++) {
            aVar.c(this.c.get(i).a, list.get(i));
        }
        return aVar.b();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("TransformMutation{");
        sbZ.append(f());
        sbZ.append(", fieldTransforms=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
