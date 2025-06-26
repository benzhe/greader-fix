package defpackage;

/* loaded from: classes.dex */
public final class jw0 extends zv0 {
    public jw0(iu0 iu0Var) {
        super(iu0Var);
    }

    @Override // defpackage.zv0
    public final void a() {
    }

    @Override // defpackage.zv0
    public final boolean r(String str) {
        iu0 iu0Var = this.g.get();
        if (iu0Var != null) {
            iu0Var.h(zr0.l(str), this);
        }
        is0.zzez("VideoStreamNoopCache is doing nothing.");
        l(str, zr0.l(str), "noop", "Noop cache is a noop.");
        return false;
    }
}
