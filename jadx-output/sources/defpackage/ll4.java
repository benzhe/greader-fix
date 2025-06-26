package defpackage;

/* loaded from: classes.dex */
public final class ll4 extends kl4 {
    public ll4(jl4 jl4Var) {
        super(null);
    }

    public static <E> wk4<E> c(Object obj, long j) {
        return (wk4) in4.q(obj, j);
    }

    @Override // defpackage.kl4
    public final void a(Object obj, long j) {
        c(obj, j).Q();
    }

    @Override // defpackage.kl4
    public final <E> void b(Object obj, Object obj2, long j) {
        wk4 wk4VarC = c(obj, j);
        wk4 wk4VarC2 = c(obj2, j);
        int size = wk4VarC.size();
        int size2 = wk4VarC2.size();
        if (size > 0 && size2 > 0) {
            if (!wk4VarC.a()) {
                wk4VarC = wk4VarC.i(size2 + size);
            }
            wk4VarC.addAll(wk4VarC2);
        }
        if (size > 0) {
            wk4VarC2 = wk4VarC;
        }
        in4.e(obj, j, wk4VarC2);
    }
}
