package defpackage;

/* loaded from: classes.dex */
public final class ly3 extends iy3 {
    public ly3(jy3 jy3Var) {
        super(null);
    }

    public static <E> xx3<E> c(Object obj, long j) {
        return (xx3) h04.t(obj, j);
    }

    @Override // defpackage.iy3
    public final void a(Object obj, long j) {
        c(obj, j).f();
    }

    @Override // defpackage.iy3
    public final <E> void b(Object obj, Object obj2, long j) {
        xx3 xx3VarC = c(obj, j);
        xx3 xx3VarC2 = c(obj2, j);
        int size = xx3VarC.size();
        int size2 = xx3VarC2.size();
        if (size > 0 && size2 > 0) {
            if (!xx3VarC.q()) {
                xx3VarC = xx3VarC.k(size2 + size);
            }
            xx3VarC.addAll(xx3VarC2);
        }
        if (size > 0) {
            xx3VarC2 = xx3VarC;
        }
        h04.f(obj, j, xx3VarC2);
    }
}
