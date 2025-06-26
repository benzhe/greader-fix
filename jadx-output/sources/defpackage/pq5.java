package defpackage;

import defpackage.fq5;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class pq5 extends eq5 {
    public final List<bu5> d;

    /* JADX WARN: Illegal instructions before constructor call */
    public pq5(eu5 eu5Var, bd6 bd6Var) {
        fq5.a aVar = fq5.a.IN;
        super(eu5Var, aVar, bd6Var);
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        arrayList.addAll(e(aVar, bd6Var));
    }

    public static List<bu5> e(fq5.a aVar, bd6 bd6Var) {
        bx5.c(aVar == fq5.a.IN || aVar == fq5.a.NOT_IN, "extractDocumentKeysFromArrayValue requires IN or NOT_IN operators", new Object[0]);
        bx5.c(lu5.f(bd6Var), "KeyFieldInFilter/KeyFieldNotInFilter expects an ArrayValue", new Object[0]);
        ArrayList arrayList = new ArrayList();
        for (bd6 bd6Var2 : bd6Var.N().i()) {
            bx5.c(lu5.k(bd6Var2), jo.s(jo.z("Comparing on key with "), aVar.e, ", but an array value was not a ReferenceValue"), new Object[0]);
            arrayList.add(bu5.k(bd6Var2.V()));
        }
        return arrayList;
    }

    @Override // defpackage.eq5, defpackage.fq5
    public boolean b(yt5 yt5Var) {
        return this.d.contains(yt5Var.a);
    }
}
