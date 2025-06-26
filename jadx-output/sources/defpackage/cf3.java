package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class cf3 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ long f;
    public final /* synthetic */ long g;
    public final /* synthetic */ ye3 h;

    public cf3(ye3 ye3Var, int i, long j, long j2) {
        this.h = ye3Var;
        this.e = i;
        this.f = j;
        this.g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.h.b);
    }
}
