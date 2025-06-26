package defpackage;

import defpackage.z57;

/* loaded from: classes2.dex */
public final class m67 extends g87 {
    public boolean b;
    public final x47 c;
    public final z57.a d;

    public m67(x47 x47Var) {
        z57.a aVar = z57.a.PROCESSED;
        c50.t(!x47Var.f(), "error must not be OK");
        this.c = x47Var;
        this.d = aVar;
    }

    @Override // defpackage.g87, defpackage.y57
    public void h(c77 c77Var) {
        c77Var.b("error", this.c);
        c77Var.b("progress", this.d);
    }

    @Override // defpackage.g87, defpackage.y57
    public void k(z57 z57Var) {
        c50.G(!this.b, "already started");
        this.b = true;
        z57Var.e(this.c, this.d, new i47());
    }

    public m67(x47 x47Var, z57.a aVar) {
        c50.t(!x47Var.f(), "error must not be OK");
        this.c = x47Var;
        this.d = aVar;
    }
}
