package defpackage;

/* loaded from: classes2.dex */
public final class c18 {
    public final j18 a;
    public final o18 b;
    public final el7<j18> c;

    /* JADX WARN: Multi-variable type inference failed */
    public c18(k08 k08Var, o18 o18Var, el7<? extends j18> el7Var) {
        j18 j18Var;
        im7.e(k08Var, "koin");
        im7.e(o18Var, "scope");
        this.b = o18Var;
        this.c = el7Var;
        this.a = (el7Var == 0 || (j18Var = (j18) el7Var.invoke()) == null) ? new j18(null, 1) : j18Var;
    }
}
