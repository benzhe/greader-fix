package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class li5 implements Callable<Void> {
    public final /* synthetic */ long e;
    public final /* synthetic */ ii5 f;

    public li5(ii5 ii5Var, long j) {
        this.f = ii5Var;
        this.e = j;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.e);
        this.f.r.a("_ae", bundle);
        return null;
    }
}
