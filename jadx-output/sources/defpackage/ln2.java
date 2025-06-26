package defpackage;

import java.util.Objects;

/* JADX INFO: Add missing generic type declarations: [AdT] */
/* loaded from: classes.dex */
public final class ln2<AdT> implements rv2<cn2<AdT>> {
    public final /* synthetic */ kn2 a;

    public ln2(kn2 kn2Var) {
        this.a = kn2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        synchronized (this.a) {
            Objects.requireNonNull(this.a.g);
            this.a.c.j(th);
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(Object obj) {
        cn2<?> cn2Var = (cn2) obj;
        synchronized (this.a) {
            cn2Var.a = ((l91) this.a.g.a.b()).d();
            kn2 kn2Var = this.a;
            if (kn2Var.e != 2) {
                ((rm2) kn2Var.f).c(kn2Var.b.a(), cn2Var);
            }
            kn2 kn2Var2 = this.a;
            if (kn2Var2.e == 1) {
                kn2Var2.a(kn2Var2.b);
            }
            kn2 kn2Var3 = this.a;
            kn2Var3.e = 1;
            kn2Var3.c.h(cn2Var);
        }
    }
}
