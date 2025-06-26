package defpackage;

import defpackage.e58;
import java.io.Serializable;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class g58<D extends e58> extends f58<D> implements t68, v68, Serializable {
    public final D e;
    public final r48 f;

    public g58(D d, r48 r48Var) {
        kt7.o(d, StringLookupFactory.KEY_DATE);
        kt7.o(r48Var, "time");
        this.e = d;
        this.f = r48Var;
    }

    private Object writeReplace() {
        return new w58((byte) 12, this);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() ? this.f.D(y68Var) : this.e.D(y68Var) : y68Var.x(this);
    }

    @Override // defpackage.f58
    public h58<D> K(z48 z48Var) {
        return i58.W(this, z48Var, null);
    }

    @Override // defpackage.f58
    public D Q() {
        return this.e;
    }

    @Override // defpackage.f58
    public r48 R() {
        return this.f;
    }

    @Override // defpackage.f58
    /* renamed from: U, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public g58<D> I(long j, b78 b78Var) {
        if (!(b78Var instanceof r68)) {
            return this.e.M().t(b78Var.k(this, j));
        }
        switch ((r68) b78Var) {
            case NANOS:
                return W(j);
            case MICROS:
                return V(j / 86400000000L).W((j % 86400000000L) * 1000);
            case MILLIS:
                return V(j / DateUtils.MILLIS_PER_DAY).W((j % DateUtils.MILLIS_PER_DAY) * 1000000);
            case SECONDS:
                return X(this.e, 0L, 0L, j, 0L);
            case MINUTES:
                return X(this.e, 0L, j, 0L, 0L);
            case HOURS:
                return X(this.e, j, 0L, 0L, 0L);
            case HALF_DAYS:
                g58<D> g58VarV = V(j / 256);
                return g58VarV.X(g58VarV.e, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return Y(this.e.O(j, b78Var), this.f);
        }
    }

    public final g58<D> V(long j) {
        return Y(this.e.O(j, r68.DAYS), this.f);
    }

    public final g58<D> W(long j) {
        return X(this.e, 0L, 0L, 0L, j);
    }

    public final g58<D> X(D d, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return Y(d, this.f);
        }
        long j5 = j / 24;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long jV = this.f.V();
        long j7 = j6 + jV;
        long jF = kt7.f(j7, 86400000000000L) + j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long jI = kt7.i(j7, 86400000000000L);
        return Y(d.O(jF, r68.DAYS), jI == jV ? this.f : r48.O(jI));
    }

    public final g58<D> Y(t68 t68Var, r48 r48Var) {
        D d = this.e;
        return (d == t68Var && this.f == r48Var) ? this : new g58<>(d.M().l(t68Var), r48Var);
    }

    @Override // defpackage.f58, defpackage.t68
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public g58<D> x(v68 v68Var) {
        return v68Var instanceof e58 ? Y((e58) v68Var, this.f) : v68Var instanceof r48 ? Y(this.e, (r48) v68Var) : v68Var instanceof g58 ? this.e.M().t((g58) v68Var) : this.e.M().t((g58) v68Var.l(this));
    }

    @Override // defpackage.f58, defpackage.t68
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public g58<D> i(y68 y68Var, long j) {
        return y68Var instanceof q68 ? y68Var.y() ? Y(this.e, this.f.i(y68Var, j)) : Y(this.e.i(y68Var, j), this.f) : this.e.M().t(y68Var.l(this, j));
    }

    @Override // defpackage.p68, defpackage.u68
    public int k(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() ? this.f.k(y68Var) : this.e.k(y68Var) : t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.p68, defpackage.u68
    public d78 t(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.y() ? this.f.t(y68Var) : this.e.t(y68Var) : y68Var.t(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var.i() || y68Var.y() : y68Var != null && y68Var.k(this);
    }
}
