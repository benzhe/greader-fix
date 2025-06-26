package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class ef3 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ ye3 f;

    public ef3(ye3 ye3Var, int i) {
        this.f = ye3Var;
        this.e = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.f.b);
    }
}
