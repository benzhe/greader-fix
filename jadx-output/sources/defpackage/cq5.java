package defpackage;

import defpackage.bq5;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class cq5 {
    public final TreeMap<bu5, bq5> a = new TreeMap<>();

    public void a(bq5 bq5Var) {
        bq5.a aVar = bq5.a.REMOVED;
        bq5.a aVar2 = bq5.a.METADATA;
        bu5 bu5Var = bq5Var.b.a;
        bq5 bq5Var2 = this.a.get(bu5Var);
        if (bq5Var2 == null) {
            this.a.put(bu5Var, bq5Var);
            return;
        }
        bq5.a aVar3 = bq5Var2.a;
        bq5.a aVar4 = bq5Var.a;
        bq5.a aVar5 = bq5.a.ADDED;
        if (aVar4 != aVar5 && aVar3 == aVar2) {
            this.a.put(bu5Var, bq5Var);
            return;
        }
        if (aVar4 == aVar2 && aVar3 != aVar) {
            this.a.put(bu5Var, new bq5(aVar3, bq5Var.b));
            return;
        }
        bq5.a aVar6 = bq5.a.MODIFIED;
        if (aVar4 == aVar6 && aVar3 == aVar6) {
            this.a.put(bu5Var, new bq5(aVar6, bq5Var.b));
            return;
        }
        if (aVar4 == aVar6 && aVar3 == aVar5) {
            this.a.put(bu5Var, new bq5(aVar5, bq5Var.b));
            return;
        }
        if (aVar4 == aVar && aVar3 == aVar5) {
            this.a.remove(bu5Var);
            return;
        }
        if (aVar4 == aVar && aVar3 == aVar6) {
            this.a.put(bu5Var, new bq5(aVar, bq5Var2.b));
        } else if (aVar4 == aVar5 && aVar3 == aVar) {
            this.a.put(bu5Var, new bq5(aVar6, bq5Var.b));
        } else {
            bx5.a("Unsupported combination of changes %s after %s", aVar4, aVar3);
            throw null;
        }
    }
}
