package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class af3 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ long f;
    public final /* synthetic */ long g;
    public final /* synthetic */ ye3 h;

    public af3(ye3 ye3Var, String str, long j, long j2) {
        this.h = ye3Var;
        this.e = str;
        this.f = j;
        this.g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.h.b);
    }
}
