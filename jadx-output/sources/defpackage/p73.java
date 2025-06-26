package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class p73 extends o73 {
    public p73(n73 n73Var) {
        super(null);
    }

    public static <E> b73<E> d(Object obj, long j) {
        return (b73) r93.t(obj, j);
    }

    @Override // defpackage.o73
    public final <L> List<L> a(Object obj, long j) {
        b73 b73VarD = d(obj, j);
        if (b73VarD.h0()) {
            return b73VarD;
        }
        int size = b73VarD.size();
        b73 b73VarD2 = b73VarD.D(size == 0 ? 10 : size << 1);
        r93.e(obj, j, b73VarD2);
        return b73VarD2;
    }

    @Override // defpackage.o73
    public final <E> void b(Object obj, Object obj2, long j) {
        b73 b73VarD = d(obj, j);
        b73 b73VarD2 = d(obj2, j);
        int size = b73VarD.size();
        int size2 = b73VarD2.size();
        if (size > 0 && size2 > 0) {
            if (!b73VarD.h0()) {
                b73VarD = b73VarD.D(size2 + size);
            }
            b73VarD.addAll(b73VarD2);
        }
        if (size > 0) {
            b73VarD2 = b73VarD;
        }
        r93.e(obj, j, b73VarD2);
    }

    @Override // defpackage.o73
    public final void c(Object obj, long j) {
        d(obj, j).t0();
    }
}
