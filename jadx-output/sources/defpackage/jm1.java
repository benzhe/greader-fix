package defpackage;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class jm1 implements cb3<sf1<VideoController.VideoLifecycleCallbacks>> {
    public final mb3<zo1> a;
    public final mb3<Executor> b;

    public jm1(am1 am1Var, mb3<zo1> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new sf1(this.a.get(), this.b.get());
    }
}
