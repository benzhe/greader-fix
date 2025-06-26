package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class ul3 implements Runnable {
    public final /* synthetic */ xf3 e;
    public final /* synthetic */ rl3 f;

    public ul3(rl3 rl3Var, xf3 xf3Var) {
        this.f = rl3Var;
        this.e = xf3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.f.b);
    }
}
