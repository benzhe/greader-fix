package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class px1 implements fp2 {
    public final Map<ap2, String> e = new HashMap();
    public final Map<ap2, String> f = new HashMap();
    public final qp2 g;

    public px1(Set<ox1> set, qp2 qp2Var) {
        this.g = qp2Var;
        for (ox1 ox1Var : set) {
            this.e.put(ox1Var.b, ox1Var.a);
            this.f.put(ox1Var.c, ox1Var.a);
        }
    }

    @Override // defpackage.fp2
    public final void A(ap2 ap2Var, String str) {
        qp2 qp2Var = this.g;
        String strValueOf = String.valueOf(str);
        qp2Var.d(strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task."));
        if (this.e.containsKey(ap2Var)) {
            qp2 qp2Var2 = this.g;
            String strValueOf2 = String.valueOf(this.e.get(ap2Var));
            qp2Var2.d(strValueOf2.length() != 0 ? "label.".concat(strValueOf2) : new String("label."));
        }
    }

    @Override // defpackage.fp2
    public final void C(ap2 ap2Var, String str) {
        qp2 qp2Var = this.g;
        String strValueOf = String.valueOf(str);
        qp2Var.f(strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task."), "s.");
        if (this.f.containsKey(ap2Var)) {
            qp2 qp2Var2 = this.g;
            String strValueOf2 = String.valueOf(this.f.get(ap2Var));
            qp2Var2.f(strValueOf2.length() != 0 ? "label.".concat(strValueOf2) : new String("label."), "s.");
        }
    }

    @Override // defpackage.fp2
    public final void d(ap2 ap2Var, String str, Throwable th) {
        qp2 qp2Var = this.g;
        String strValueOf = String.valueOf(str);
        qp2Var.f(strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task."), "f.");
        if (this.f.containsKey(ap2Var)) {
            qp2 qp2Var2 = this.g;
            String strValueOf2 = String.valueOf(this.f.get(ap2Var));
            qp2Var2.f(strValueOf2.length() != 0 ? "label.".concat(strValueOf2) : new String("label."), "f.");
        }
    }

    @Override // defpackage.fp2
    public final void z(ap2 ap2Var, String str) {
    }
}
