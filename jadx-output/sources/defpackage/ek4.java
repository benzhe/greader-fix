package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ek4 implements vn4 {
    public final ck4 a;

    public ek4(ck4 ck4Var) {
        Charset charset = rk4.a;
        this.a = ck4Var;
        ck4Var.a = this;
    }

    public final void a(int i, double d) throws IOException {
        ck4 ck4Var = this.a;
        Objects.requireNonNull(ck4Var);
        ck4Var.y(i, Double.doubleToRawLongBits(d));
    }

    public final void b(int i, float f) throws IOException {
        ck4 ck4Var = this.a;
        Objects.requireNonNull(ck4Var);
        ck4Var.F(i, Float.floatToRawIntBits(f));
    }

    public final void c(int i, Object obj) throws IOException {
        if (obj instanceof vj4) {
            this.a.s(i, (vj4) obj);
        } else {
            this.a.h(i, (am4) obj);
        }
    }

    public final void d(int i, Object obj, om4 om4Var) throws IOException {
        this.a.i(i, (am4) obj, om4Var);
    }

    public final void e(int i, Object obj, om4 om4Var) throws IOException {
        ck4 ck4Var = this.a;
        ck4Var.e(i, 3);
        om4Var.g((am4) obj, ck4Var.a);
        ck4Var.e(i, 4);
    }

    public final void f(int i, long j) throws IOException {
        this.a.f(i, ck4.Q(j));
    }

    public final void g(int i, int i2) throws IOException {
        this.a.x(i, ck4.U(i2));
    }
}
