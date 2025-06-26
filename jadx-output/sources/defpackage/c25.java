package defpackage;

/* loaded from: classes.dex */
public final class c25 implements Runnable {
    public final /* synthetic */ k25 e;
    public final /* synthetic */ j25 f;

    public c25(j25 j25Var, k25 k25Var) {
        this.f = j25Var;
        this.e = k25Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j25 j25Var = this.f;
        j25Var.j.m().d();
        gs4 gs4Var = new gs4(j25Var);
        gs4Var.g();
        j25Var.c = gs4Var;
        j25Var.j.g.c = j25Var.a;
        i15 i15Var = new i15(j25Var);
        i15Var.g();
        j25Var.i = i15Var;
        b35 b35Var = new b35(j25Var);
        b35Var.g();
        j25Var.f = b35Var;
        yz4 yz4Var = new yz4(j25Var);
        yz4Var.g();
        j25Var.h = yz4Var;
        a25 a25Var = new a25(j25Var);
        a25Var.g();
        j25Var.e = a25Var;
        j25Var.d = new yw4(j25Var);
        if (j25Var.o != j25Var.p) {
            j25Var.j.a().f.c("Not all upload components initialized", Integer.valueOf(j25Var.o), Integer.valueOf(j25Var.p));
        }
        j25Var.k = true;
        j25 j25Var2 = this.f;
        j25Var2.j.m().d();
        j25Var2.L().Q();
        if (j25Var2.j.q().e.a() == 0) {
            j25Var2.j.q().e.b(j25Var2.j.n.a());
        }
        j25Var2.D();
    }
}
