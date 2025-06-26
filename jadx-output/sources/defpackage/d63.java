package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public final class d63 implements ga3 {
    public final b63 a;

    public d63(b63 b63Var) {
        Charset charset = u63.a;
        this.a = b63Var;
        b63Var.a = this;
    }

    public final void a(int i, float f) throws IOException {
        b63 b63Var = this.a;
        Objects.requireNonNull(b63Var);
        b63Var.i(i, Float.floatToRawIntBits(f));
    }

    public final void b(int i, Object obj, w83 w83Var) throws IOException {
        this.a.f(i, (e83) obj, w83Var);
    }

    public final void c(int i, int i2) throws IOException {
        this.a.h(i, b63.K(i2));
    }

    public final void d(int i, double d) throws IOException {
        b63 b63Var = this.a;
        Objects.requireNonNull(b63Var);
        b63Var.Q(i, Double.doubleToRawLongBits(d));
    }

    public final void e(int i, Object obj, w83 w83Var) throws IOException {
        b63 b63Var = this.a;
        b63Var.b(i, 3);
        w83Var.f((e83) obj, b63Var.a);
        b63Var.b(i, 4);
    }

    public final void f(int i, Object obj) throws IOException {
        if (obj instanceof k53) {
            this.a.r(i, (k53) obj);
        } else {
            this.a.e(i, (e83) obj);
        }
    }

    public final void g(int i, long j) throws IOException {
        this.a.M(i, b63.B(j));
    }
}
