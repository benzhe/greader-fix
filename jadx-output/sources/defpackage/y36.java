package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public class y36 {
    public static final ng6 c = ng6.E();
    public final v56 a;
    public rb7<ng6> b = bg7.e;

    public y36(v56 v56Var) {
        this.a = v56Var;
    }

    public rb7<ng6> a() {
        return this.b.o(this.a.a(ng6.H()).e(new tc7(this) { // from class: q36
            public final y36 e;

            {
                this.e = this;
            }

            @Override // defpackage.tc7
            public void accept(Object obj) {
                ng6 ng6Var = y36.c;
                this.e.b((ng6) obj);
            }
        })).d(new tc7(this) { // from class: r36
            public final y36 e;

            {
                this.e = this;
            }

            @Override // defpackage.tc7
            public void accept(Object obj) {
                this.e.b = bg7.e;
            }
        });
    }

    public final void b(ng6 ng6Var) {
        Objects.requireNonNull(ng6Var, "item is null");
        this.b = new kg7(ng6Var);
    }
}
