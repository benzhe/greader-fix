package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class bf3 implements Runnable {
    public final /* synthetic */ xf3 e;
    public final /* synthetic */ ye3 f;

    public bf3(ye3 ye3Var, xf3 xf3Var) {
        this.f = ye3Var;
        this.e = xf3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.f.b);
    }
}
