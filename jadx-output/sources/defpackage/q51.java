package defpackage;

/* loaded from: classes.dex */
public final class q51 implements cb3<Boolean> {
    public final mb3<ll2> a;

    public q51(mb3<ll2> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        boolean zBooleanValue;
        if (this.a.get().a() != null) {
            zBooleanValue = ((Boolean) os3.j.f.a(y40.L0)).booleanValue();
        } else {
            zBooleanValue = ((Boolean) os3.j.f.a(y40.i3)).booleanValue();
        }
        return Boolean.valueOf(zBooleanValue);
    }
}
