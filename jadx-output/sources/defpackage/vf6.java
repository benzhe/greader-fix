package defpackage;

/* loaded from: classes.dex */
public class vf6 implements ee6 {
    public final /* synthetic */ Class e;
    public final /* synthetic */ de6 f;

    public vf6(Class cls, de6 de6Var) {
        this.e = cls;
        this.f = de6Var;
    }

    @Override // defpackage.ee6
    public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
        if (dg6Var.a == this.e) {
            return this.f;
        }
        return null;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Factory[type=");
        sbZ.append(this.e.getName());
        sbZ.append(",adapter=");
        sbZ.append(this.f);
        sbZ.append("]");
        return sbZ.toString();
    }
}
