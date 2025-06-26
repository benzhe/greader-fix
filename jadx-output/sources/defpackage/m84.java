package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class m84 {
    public final l84 a;

    public m84(l84 l84Var) {
        Charset charset = j94.a;
        this.a = l84Var;
        l84Var.a = this;
    }

    public final void a(int i, float f) throws IOException {
        this.a.i(i, Float.floatToRawIntBits(f));
    }

    public final void b(int i, double d) throws IOException {
        this.a.k(i, Double.doubleToRawLongBits(d));
    }

    public final void c(int i, int i2) throws IOException {
        this.a.h(i, l84.c(i2));
    }

    public final void d(int i, long j) throws IOException {
        this.a.j(i, l84.d(j));
    }

    public final void e(int i, Object obj, na4 na4Var) throws IOException {
        da4 da4Var = (da4) obj;
        j84 j84Var = (j84) this.a;
        j84Var.q((i << 3) | 2);
        t74 t74Var = (t74) da4Var;
        int iG = t74Var.g();
        if (iG == -1) {
            iG = na4Var.e(t74Var);
            t74Var.h(iG);
        }
        j84Var.q(iG);
        na4Var.i(da4Var, j84Var.a);
    }

    public final void f(int i, Object obj, na4 na4Var) throws IOException {
        l84 l84Var = this.a;
        l84Var.f(i, 3);
        na4Var.i((da4) obj, l84Var.a);
        l84Var.f(i, 4);
    }
}
