package defpackage;

import defpackage.c47;

/* loaded from: classes2.dex */
public final class s77 extends c47.i {
    public final c47.e a;
    public final /* synthetic */ Throwable b;

    public s77(q77 q77Var, Throwable th) {
        this.b = th;
        x47 x47VarG = x47.m.h("Panic! This is a bug!").g(th);
        c47.e eVar = c47.e.e;
        c50.t(!x47VarG.f(), "drop status shouldn't be OK");
        this.a = new c47.e(null, null, x47VarG, true);
    }

    @Override // c47.i
    public c47.e a(c47.f fVar) {
        return this.a;
    }

    public String toString() {
        nd5 nd5Var = new nd5(s77.class.getSimpleName(), null);
        nd5Var.d("panicPickResult", this.a);
        return nd5Var.toString();
    }
}
