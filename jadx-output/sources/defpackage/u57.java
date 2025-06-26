package defpackage;

import defpackage.a37;

/* loaded from: classes2.dex */
public class u57 extends f67 {
    public final /* synthetic */ a37.a f;
    public final /* synthetic */ x47 g;
    public final /* synthetic */ t57 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u57(t57 t57Var, a37.a aVar, x47 x47Var) {
        super(t57Var.e);
        this.h = t57Var;
        this.f = aVar;
        this.g = x47Var;
    }

    @Override // defpackage.f67
    public void a() {
        t57 t57Var = this.h;
        a37.a aVar = this.f;
        x47 x47Var = this.g;
        i47 i47Var = new i47();
        if (t57Var.u) {
            return;
        }
        t57Var.u = true;
        aVar.a(x47Var, i47Var);
    }
}
