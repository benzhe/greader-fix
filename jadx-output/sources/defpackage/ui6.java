package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ui6 implements hl6 {
    public final ti6 a;

    public ui6(ti6 ti6Var) {
        Charset charset = jj6.a;
        this.a = ti6Var;
        ti6Var.a = this;
    }

    public void a(int i, double d) throws IOException {
        ti6 ti6Var = this.a;
        Objects.requireNonNull(ti6Var);
        ti6Var.O(i, Double.doubleToRawLongBits(d));
    }

    public void b(int i, float f) throws IOException {
        ti6 ti6Var = this.a;
        Objects.requireNonNull(ti6Var);
        ti6Var.M(i, Float.floatToRawIntBits(f));
    }

    public void c(int i, Object obj, qk6 qk6Var) throws IOException {
        ti6 ti6Var = this.a;
        ti6Var.Y(i, 3);
        qk6Var.e((ak6) obj, ti6Var.a);
        ti6Var.Y(i, 4);
    }

    public void d(int i, Object obj, qk6 qk6Var) throws IOException {
        this.a.S(i, (ak6) obj, qk6Var);
    }

    public final void e(int i, Object obj) throws IOException {
        if (obj instanceof qi6) {
            this.a.V(i, (qi6) obj);
        } else {
            this.a.U(i, (ak6) obj);
        }
    }

    public void f(int i, int i2) throws IOException {
        this.a.Z(i, ti6.D(i2));
    }

    public void g(int i, long j) throws IOException {
        this.a.b0(i, ti6.E(j));
    }
}
