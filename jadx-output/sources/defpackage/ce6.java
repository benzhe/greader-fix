package defpackage;

import java.io.IOException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public class ce6<T> extends de6<T> {
    public final /* synthetic */ de6 a;

    public ce6(de6 de6Var) {
        this.a = de6Var;
    }

    @Override // defpackage.de6
    public T a(eg6 eg6Var) throws IOException {
        if (eg6Var.Q() != fg6.NULL) {
            return (T) this.a.a(eg6Var);
        }
        eg6Var.E();
        return null;
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, T t) throws IOException {
        if (t == null) {
            gg6Var.m();
        } else {
            this.a.b(gg6Var, t);
        }
    }
}
