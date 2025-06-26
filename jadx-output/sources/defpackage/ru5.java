package defpackage;

import com.google.firebase.Timestamp;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class ru5 {
    public final int a;
    public final Timestamp b;
    public final List<qu5> c;
    public final List<qu5> d;

    public ru5(int i, Timestamp timestamp, List<qu5> list, List<qu5> list2) {
        bx5.c(!list2.isEmpty(), "Cannot create an empty mutation batch", new Object[0]);
        this.a = i;
        this.b = timestamp;
        this.c = list;
        this.d = list2;
    }

    public fu5 a(bu5 bu5Var, fu5 fu5Var) {
        if (fu5Var != null) {
            bx5.c(fu5Var.a.equals(bu5Var), "applyToRemoteDocument: key %s doesn't match maybeDoc key %s", bu5Var, fu5Var.a);
        }
        for (int i = 0; i < this.c.size(); i++) {
            qu5 qu5Var = this.c.get(i);
            if (qu5Var.a.equals(bu5Var)) {
                fu5Var = qu5Var.a(fu5Var, fu5Var, this.b);
            }
        }
        fu5 fu5VarA = fu5Var;
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            qu5 qu5Var2 = this.d.get(i2);
            if (qu5Var2.a.equals(bu5Var)) {
                fu5VarA = qu5Var2.a(fu5VarA, fu5Var, this.b);
            }
        }
        return fu5VarA;
    }

    public Set<bu5> b() {
        HashSet hashSet = new HashSet();
        Iterator<qu5> it = this.d.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().a);
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ru5.class != obj.getClass()) {
            return false;
        }
        ru5 ru5Var = (ru5) obj;
        return this.a == ru5Var.a && this.b.equals(ru5Var.b) && this.c.equals(ru5Var.c) && this.d.equals(ru5Var.d);
    }

    public int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("MutationBatch(batchId=");
        sbZ.append(this.a);
        sbZ.append(", localWriteTime=");
        sbZ.append(this.b);
        sbZ.append(", baseMutations=");
        sbZ.append(this.c);
        sbZ.append(", mutations=");
        sbZ.append(this.d);
        sbZ.append(')');
        return sbZ.toString();
    }
}
