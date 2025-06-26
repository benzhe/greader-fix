package defpackage;

import defpackage.fq5;
import java.util.Iterator;

/* loaded from: classes.dex */
public class up5 extends eq5 {
    public up5(eu5 eu5Var, bd6 bd6Var) {
        super(eu5Var, fq5.a.ARRAY_CONTAINS_ANY, bd6Var);
        bx5.c(lu5.f(bd6Var), "ArrayContainsAnyFilter expects an ArrayValue", new Object[0]);
    }

    @Override // defpackage.eq5, defpackage.fq5
    public boolean b(yt5 yt5Var) {
        bd6 bd6VarB = yt5Var.b(this.c);
        if (!lu5.f(bd6VarB)) {
            return false;
        }
        Iterator<bd6> it = bd6VarB.N().i().iterator();
        while (it.hasNext()) {
            if (lu5.d(this.b.N(), it.next())) {
                return true;
            }
        }
        return false;
    }
}
