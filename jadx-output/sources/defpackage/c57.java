package defpackage;

import defpackage.l37;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class c57 extends l37.g {
    public static final Logger a = Logger.getLogger(c57.class.getName());
    public static final ThreadLocal<l37> b = new ThreadLocal<>();

    @Override // l37.g
    public l37 a() {
        l37 l37Var = b.get();
        return l37Var == null ? l37.k : l37Var;
    }

    @Override // l37.g
    public void b(l37 l37Var, l37 l37Var2) {
        if (a() != l37Var) {
            a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (l37Var2 != l37.k) {
            b.set(l37Var2);
        } else {
            b.set(null);
        }
    }

    @Override // l37.g
    public l37 c(l37 l37Var) {
        l37 l37VarA = a();
        b.set(l37Var);
        return l37VarA;
    }
}
