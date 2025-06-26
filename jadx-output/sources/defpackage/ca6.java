package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class ca6 implements ga6 {
    public final ha6 a;
    public final f45<ea6> b;

    public ca6(ha6 ha6Var, f45<ea6> f45Var) {
        this.a = ha6Var;
        this.b = f45Var;
    }

    @Override // defpackage.ga6
    public boolean a(Exception exc) {
        this.b.a(exc);
        return true;
    }

    @Override // defpackage.ga6
    public boolean b(ma6 ma6Var) {
        if (!ma6Var.j() || this.a.d(ma6Var)) {
            return false;
        }
        f45<ea6> f45Var = this.b;
        String strA = ma6Var.a();
        Objects.requireNonNull(strA, "Null token");
        Long lValueOf = Long.valueOf(ma6Var.b());
        Long lValueOf2 = Long.valueOf(ma6Var.g());
        String strN = lValueOf == null ? jo.n("", " tokenExpirationTimestamp") : "";
        if (lValueOf2 == null) {
            strN = jo.n(strN, " tokenCreationTimestamp");
        }
        if (!strN.isEmpty()) {
            throw new IllegalStateException(jo.n("Missing required properties:", strN));
        }
        f45Var.a.s(new t96(strA, lValueOf.longValue(), lValueOf2.longValue(), null));
        return true;
    }
}
