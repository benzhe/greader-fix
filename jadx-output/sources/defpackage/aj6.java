package defpackage;

import defpackage.gj6;
import defpackage.yi6;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class aj6 extends zi6<gj6.d> {
    @Override // defpackage.zi6
    public int a(Map.Entry<?, ?> entry) {
        Objects.requireNonNull((gj6.d) entry.getKey());
        return 0;
    }

    @Override // defpackage.zi6
    public Object b(yi6 yi6Var, ak6 ak6Var, int i) {
        return yi6Var.a.get(new yi6.a(ak6Var, i));
    }

    @Override // defpackage.zi6
    public cj6<gj6.d> c(Object obj) {
        return ((gj6.c) obj).extensions;
    }

    @Override // defpackage.zi6
    public cj6<gj6.d> d(Object obj) {
        return ((gj6.c) obj).B();
    }

    @Override // defpackage.zi6
    public boolean e(ak6 ak6Var) {
        return ak6Var instanceof gj6.c;
    }

    @Override // defpackage.zi6
    public void f(Object obj) {
        ((gj6.c) obj).extensions.l();
    }

    @Override // defpackage.zi6
    public <UT, UB> UB g(ok6 ok6Var, Object obj, yi6 yi6Var, cj6<gj6.d> cj6Var, UB ub, yk6<UT, UB> yk6Var) throws IOException {
        Objects.requireNonNull((gj6.e) obj);
        throw null;
    }

    @Override // defpackage.zi6
    public void h(ok6 ok6Var, Object obj, yi6 yi6Var, cj6<gj6.d> cj6Var) throws IOException {
        Objects.requireNonNull((gj6.e) obj);
        throw null;
    }

    @Override // defpackage.zi6
    public void i(qi6 qi6Var, Object obj, yi6 yi6Var, cj6<gj6.d> cj6Var) throws IOException {
        Objects.requireNonNull((gj6.e) obj);
        throw null;
    }

    @Override // defpackage.zi6
    public void j(hl6 hl6Var, Map.Entry<?, ?> entry) throws IOException {
        Objects.requireNonNull((gj6.d) entry.getKey());
        throw null;
    }
}
