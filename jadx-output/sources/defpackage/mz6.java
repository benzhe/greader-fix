package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public class mz6 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ nz6 g;

    public mz6(nz6 nz6Var, int i, int i2) {
        this.g = nz6Var;
        this.e = i;
        this.f = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        nz6 nz6Var = this.g;
        k07 k07Var = nz6Var.s;
        String str = nz6Var.m;
        nz6Var.o.b();
        int i = this.e;
        int i2 = this.f;
        cx6 cx6Var = (cx6) k07Var;
        Objects.requireNonNull(cx6Var);
        if (i2 > 0) {
            cx6Var.a.f.setProgress((i * 100) / i2);
        }
    }
}
