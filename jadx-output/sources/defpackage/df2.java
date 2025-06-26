package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class df2 implements qd2<ef2> {
    public gr0 a;
    public zv2 b;
    public String c;

    public df2(gr0 gr0Var, zv2 zv2Var, String str) {
        this.a = gr0Var;
        this.b = zv2Var;
        this.c = str;
    }

    @Override // defpackage.qd2
    public final aw2<ef2> a() {
        final aw2<String> aw2VarJ = vt2.j(null);
        if (((Boolean) os3.j.f.a(y40.u3)).booleanValue()) {
            aw2VarJ = this.a.b(this.c);
        }
        final aw2<String> aw2VarA = this.a.a(this.c);
        return new gv2(nt2.u(new aw2[]{aw2VarJ, aw2VarA}), true, ms0.a, new Callable(aw2VarJ, aw2VarA) { // from class: gf2
            public final aw2 e;
            public final aw2 f;

            {
                this.e = aw2VarJ;
                this.f = aw2VarA;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new ef2((String) this.e.get(), (String) this.f.get());
            }
        });
    }
}
