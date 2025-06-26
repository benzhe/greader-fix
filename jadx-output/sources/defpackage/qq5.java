package defpackage;

import defpackage.fq5;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class qq5 extends eq5 {
    public final List<bu5> d;

    /* JADX WARN: Illegal instructions before constructor call */
    public qq5(eu5 eu5Var, bd6 bd6Var) {
        fq5.a aVar = fq5.a.NOT_IN;
        super(eu5Var, aVar, bd6Var);
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        arrayList.addAll(pq5.e(aVar, bd6Var));
    }

    @Override // defpackage.eq5, defpackage.fq5
    public boolean b(yt5 yt5Var) {
        return !this.d.contains(yt5Var.a);
    }
}
