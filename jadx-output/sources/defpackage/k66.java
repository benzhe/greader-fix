package defpackage;

import defpackage.z56;
import java.util.Objects;

/* loaded from: classes.dex */
public class k66 {
    public static final a66 d = a66.D();
    public final v56 a;
    public final z86 b;
    public rb7<a66> c = bg7.e;

    public k66(v56 v56Var, z86 z86Var) {
        this.a = v56Var;
        this.b = z86Var;
    }

    public final rb7<a66> a() {
        return this.c.o(this.a.a(a66.G()).e(new tc7(this) { // from class: e66
            public final k66 e;

            {
                this.e = this;
            }

            @Override // defpackage.tc7
            public void accept(Object obj) {
                k66 k66Var = this.e;
                a66 a66Var = (a66) obj;
                a66 a66Var2 = k66.d;
                Objects.requireNonNull(k66Var);
                Objects.requireNonNull(a66Var, "item is null");
                k66Var.c = new kg7(a66Var);
            }
        })).d(new tc7(this) { // from class: f66
            public final k66 e;

            {
                this.e = this;
            }

            @Override // defpackage.tc7
            public void accept(Object obj) {
                this.e.c = bg7.e;
            }
        });
    }

    public final boolean b(z56 z56Var, o96 o96Var) {
        return this.b.a() - z56Var.G() > o96Var.c();
    }

    public final z56 c() {
        z56.a aVarI = z56.I();
        aVarI.o();
        z56.C((z56) aVarI.f, 0L);
        long jA = this.b.a();
        aVarI.o();
        z56.E((z56) aVarI.f, jA);
        return aVarI.l();
    }
}
