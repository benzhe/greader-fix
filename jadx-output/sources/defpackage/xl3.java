package defpackage;

import android.view.Surface;
import java.util.Objects;

/* loaded from: classes.dex */
public final class xl3 implements Runnable {
    public final /* synthetic */ Surface e;
    public final /* synthetic */ rl3 f;

    public xl3(rl3 rl3Var, Surface surface) {
        this.f = rl3Var;
        this.e = surface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Objects.requireNonNull((cv0) this.f.b);
    }
}
