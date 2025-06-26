package defpackage;

/* loaded from: classes2.dex */
public class d68 extends p68 {
    public final /* synthetic */ e58 e;
    public final /* synthetic */ u68 f;
    public final /* synthetic */ j58 g;
    public final /* synthetic */ z48 h;

    public d68(e58 e58Var, u68 u68Var, j58 j58Var, z48 z48Var) {
        this.e = e58Var;
        this.f = u68Var;
        this.g = j58Var;
        this.h = z48Var;
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        return (this.e == null || !y68Var.i()) ? this.f.D(y68Var) : this.e.D(y68Var);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return (this.e == null || !y68Var.i()) ? this.f.t(y68Var) : this.e.t(y68Var);
    }

    @Override // defpackage.p68, defpackage.u68
    public <R> R w(a78<R> a78Var) {
        return a78Var == z68.b ? (R) this.g : a78Var == z68.a ? (R) this.h : a78Var == z68.c ? (R) this.f.w(a78Var) : a78Var.a(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return (this.e == null || !y68Var.i()) ? this.f.y(y68Var) : this.e.y(y68Var);
    }
}
