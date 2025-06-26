package defpackage;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public final class a35 extends z25 {
    public final e44 g;
    public final /* synthetic */ b35 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a35(b35 b35Var, String str, int i, e44 e44Var) {
        super(str, i);
        this.h = b35Var;
        this.g = e44Var;
    }

    @Override // defpackage.z25
    public final int a() {
        return this.g.t();
    }

    @Override // defpackage.z25
    public final boolean b() {
        return true;
    }

    @Override // defpackage.z25
    public final boolean c() {
        return false;
    }

    public final boolean i(Long l, Long l2, r54 r54Var, boolean z) {
        bd4.b();
        boolean zS = this.h.a.g.s(this.a, ew4.Z);
        boolean zW = this.g.w();
        boolean zX = this.g.x();
        boolean z2 = this.g.z();
        boolean z3 = zW || zX || z2;
        Boolean boolD = null;
        Boolean boolH = null;
        boolD = null;
        boolD = null;
        boolD = null;
        boolD = null;
        if (z && !z3) {
            this.h.a.a().n.c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.b), this.g.s() ? Integer.valueOf(this.g.t()) : null);
            return true;
        }
        x34 x34VarV = this.g.v();
        boolean zX2 = x34VarV.x();
        if (r54Var.x()) {
            if (x34VarV.u()) {
                boolD = z25.d(z25.f(r54Var.y(), x34VarV.v()), zX2);
            } else {
                this.h.a.a().i.b("No number filter for long property. property", this.h.a.u().r(r54Var.u()));
            }
        } else if (r54Var.z()) {
            if (x34VarV.u()) {
                double dA = r54Var.A();
                try {
                    boolH = z25.h(new BigDecimal(dA), x34VarV.v(), Math.ulp(dA));
                } catch (NumberFormatException unused) {
                }
                boolD = z25.d(boolH, zX2);
            } else {
                this.h.a.a().i.b("No number filter for double property. property", this.h.a.u().r(r54Var.u()));
            }
        } else if (!r54Var.v()) {
            this.h.a.a().i.b("User property has no value, property", this.h.a.u().r(r54Var.u()));
        } else if (x34VarV.s()) {
            boolD = z25.d(z25.e(r54Var.w(), x34VarV.t(), this.h.a.a()), zX2);
        } else if (!x34VarV.u()) {
            this.h.a.a().i.b("No string or number filter defined. property", this.h.a.u().r(r54Var.u()));
        } else if (l25.z(r54Var.w())) {
            boolD = z25.d(z25.g(r54Var.w(), x34VarV.v()), zX2);
        } else {
            this.h.a.a().i.c("Invalid user property value for Numeric number filter. property, value", this.h.a.u().r(r54Var.u()), r54Var.w());
        }
        this.h.a.a().n.b("Property filter result", boolD == null ? "null" : boolD);
        if (boolD == null) {
            return false;
        }
        this.c = Boolean.TRUE;
        if (z2 && !boolD.booleanValue()) {
            return true;
        }
        if (!z || this.g.w()) {
            this.d = boolD;
        }
        if (boolD.booleanValue() && z3 && r54Var.s()) {
            long jT = r54Var.t();
            if (l != null) {
                jT = l.longValue();
            }
            if (zS && this.g.w() && !this.g.x() && l2 != null) {
                jT = l2.longValue();
            }
            if (this.g.x()) {
                this.f = Long.valueOf(jT);
            } else {
                this.e = Long.valueOf(jT);
            }
        }
        return true;
    }
}
