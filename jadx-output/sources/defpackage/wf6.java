package defpackage;

/* loaded from: classes.dex */
public class wf6 implements ee6 {
    public final /* synthetic */ Class e;
    public final /* synthetic */ Class f;
    public final /* synthetic */ de6 g;

    public wf6(Class cls, Class cls2, de6 de6Var) {
        this.e = cls;
        this.f = cls2;
        this.g = de6Var;
    }

    @Override // defpackage.ee6
    public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
        Class<? super T> cls = dg6Var.a;
        if (cls == this.e || cls == this.f) {
            return this.g;
        }
        return null;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Factory[type=");
        sbZ.append(this.f.getName());
        sbZ.append("+");
        sbZ.append(this.e.getName());
        sbZ.append(",adapter=");
        sbZ.append(this.g);
        sbZ.append("]");
        return sbZ.toString();
    }
}
