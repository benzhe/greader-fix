package defpackage;

/* loaded from: classes.dex */
public final class y86 implements Object<r56> {
    public final jj7<pe5> a;
    public final jj7<zq> b;
    public final jj7<bf5> c;
    public final jj7<z96> d;
    public final jj7<z86> e;
    public final jj7<v26> f;

    public y86(jj7<pe5> jj7Var, jj7<zq> jj7Var2, jj7<bf5> jj7Var3, jj7<z96> jj7Var4, jj7<z86> jj7Var5, jj7<v26> jj7Var6) {
        this.a = jj7Var;
        this.b = jj7Var2;
        this.c = jj7Var3;
        this.d = jj7Var4;
        this.e = jj7Var5;
        this.f = jj7Var6;
    }

    public Object get() {
        pe5 pe5Var = this.a.get();
        zq zqVar = this.b.get();
        return new r56(new x86(zqVar.a("FIREBASE_INAPPMESSAGING", byte[].class, new xq() { // from class: w86
            @Override // defpackage.xq
            public Object apply(Object obj) {
                return (byte[]) obj;
            }
        })), this.c.get(), pe5Var, this.d.get(), this.e.get(), this.f.get());
    }
}
