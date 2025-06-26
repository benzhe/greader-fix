package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class gu5 extends fu5 {
    public boolean c;

    public gu5(bu5 bu5Var, ju5 ju5Var, boolean z) {
        super(bu5Var, ju5Var);
        this.c = z;
    }

    @Override // defpackage.fu5
    public boolean a() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gu5.class != obj.getClass()) {
            return false;
        }
        gu5 gu5Var = (gu5) obj;
        return this.c == gu5Var.c && this.b.equals(gu5Var.b) && this.a.equals(gu5Var.a);
    }

    public int hashCode() {
        return this.b.hashCode() + (((this.a.hashCode() * 31) + (this.c ? 1 : 0)) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("NoDocument{key=");
        sbZ.append(this.a);
        sbZ.append(", version=");
        sbZ.append(this.b);
        sbZ.append(", hasCommittedMutations=");
        sbZ.append(this.c);
        sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ.toString();
    }
}
