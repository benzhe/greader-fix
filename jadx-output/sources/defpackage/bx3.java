package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public final class bx3 implements v04 {
    public final zw3 a;

    public bx3(zw3 zw3Var) {
        Charset charset = ux3.a;
        this.a = zw3Var;
        zw3Var.a = this;
    }

    public final void a(int i, double d) throws IOException {
        zw3 zw3Var = this.a;
        Objects.requireNonNull(zw3Var);
        zw3Var.B(i, Double.doubleToRawLongBits(d));
    }

    public final void b(int i, float f) throws IOException {
        zw3 zw3Var = this.a;
        Objects.requireNonNull(zw3Var);
        zw3Var.I(i, Float.floatToRawIntBits(f));
    }

    public final void c(int i, Object obj) throws IOException {
        if (obj instanceof sw3) {
            this.a.r(i, (sw3) obj);
        } else {
            this.a.s(i, (xy3) obj);
        }
    }

    public final void d(int i, Object obj, nz3 nz3Var) throws IOException {
        this.a.i(i, (xy3) obj, nz3Var);
    }

    public final void e(int i, long j) throws IOException {
        this.a.f(i, zw3.R(j));
    }

    public final void f(int i, Object obj, nz3 nz3Var) throws IOException {
        zw3 zw3Var = this.a;
        zw3Var.q(i, 3);
        nz3Var.f((xy3) obj, zw3Var.a);
        zw3Var.q(i, 4);
    }

    public final void g(int i, int i2) throws IOException {
        this.a.D(i, zw3.b0(i2));
    }
}
