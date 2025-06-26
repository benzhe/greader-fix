package defpackage;

import defpackage.bf5;

/* loaded from: classes.dex */
public class g26 {
    public final bf5 a;
    public final pc7<String> b;
    public bf5.a c;

    public class a implements ob7<String> {
        public a() {
        }

        @Override // defpackage.ob7
        public void a(nb7<String> nb7Var) {
            n56.t1("Subscribing to analytics events.");
            g26 g26Var = g26.this;
            g26Var.c = g26Var.a.f("fiam", new k36(nb7Var));
        }
    }

    public g26(bf5 bf5Var) {
        this.a = bf5Var;
        a aVar = new a();
        gb7 gb7Var = gb7.BUFFER;
        int i = mb7.e;
        pc7 pc7VarP = new je7(aVar, gb7Var).p();
        this.b = pc7VarP;
        pc7VarP.w();
    }
}
