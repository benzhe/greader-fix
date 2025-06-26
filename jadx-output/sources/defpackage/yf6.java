package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class yf6 implements ee6 {
    public final /* synthetic */ Class e;
    public final /* synthetic */ de6 f;

    /* JADX INFO: Add missing generic type declarations: [T1] */
    public class a<T1> extends de6<T1> {
        public final /* synthetic */ Class a;

        public a(Class cls) {
            this.a = cls;
        }

        @Override // defpackage.de6
        public T1 a(eg6 eg6Var) throws IOException {
            T1 t1 = (T1) yf6.this.f.a(eg6Var);
            if (t1 == null || this.a.isInstance(t1)) {
                return t1;
            }
            StringBuilder sbZ = jo.z("Expected a ");
            sbZ.append(this.a.getName());
            sbZ.append(" but was ");
            sbZ.append(t1.getClass().getName());
            throw new be6(sbZ.toString());
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, T1 t1) throws IOException {
            yf6.this.f.b(gg6Var, t1);
        }
    }

    public yf6(Class cls, de6 de6Var) {
        this.e = cls;
        this.f = de6Var;
    }

    @Override // defpackage.ee6
    public <T2> de6<T2> b(od6 od6Var, dg6<T2> dg6Var) {
        Class<? super T2> cls = dg6Var.a;
        if (this.e.isAssignableFrom(cls)) {
            return new a(cls);
        }
        return null;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Factory[typeHierarchy=");
        sbZ.append(this.e.getName());
        sbZ.append(",adapter=");
        sbZ.append(this.f);
        sbZ.append("]");
        return sbZ.toString();
    }
}
