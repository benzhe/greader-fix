package defpackage;

import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public class qv2<V> extends ov2 implements aw2 {
    public final aw2<V> e;

    public qv2(aw2<V> aw2Var) {
        Objects.requireNonNull(aw2Var);
        this.e = aw2Var;
    }

    @Override // defpackage.aw2
    public void i(Runnable runnable, Executor executor) {
        this.e.i(runnable, executor);
    }
}
