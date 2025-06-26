package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class tl3 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ long f;
    public final /* synthetic */ long g;
    public final /* synthetic */ rl3 h;

    public tl3(rl3 rl3Var, String str, long j, long j2) {
        this.h = rl3Var;
        this.e = str;
        this.f = j;
        this.g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.h.b);
    }
}
