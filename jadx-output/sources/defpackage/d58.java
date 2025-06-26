package defpackage;

import defpackage.e58;
import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class d58<D extends e58> extends e58 implements t68, v68, Serializable {
    @Override // defpackage.e58
    public f58<?> K(r48 r48Var) {
        return new g58(this, r48Var);
    }

    @Override // defpackage.e58
    /* renamed from: T, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public d58<D> O(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return (d58) M().l(b78Var.k(this, j));
        }
        switch (((r68) b78Var).ordinal()) {
            case 7:
                return U(j);
            case 8:
                return U(kt7.r(j, 7));
            case 9:
                return V(j);
            case 10:
                return W(j);
            case 11:
                return W(kt7.r(j, 10));
            case 12:
                return W(kt7.r(j, 100));
            case 13:
                return W(kt7.r(j, 1000));
            default:
                throw new l48(b78Var + " not valid for chronology " + M().D());
        }
    }

    public abstract d58<D> U(long j);

    public abstract d58<D> V(long j);

    public abstract d58<D> W(long j);
}
