package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class qo7 extends uo7 {
    public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(qo7.class, "_resumed");
    private volatile int _resumed;

    public qo7(pk7<?> pk7Var, Throwable th, boolean z) {
        if (th == null) {
            th = new CancellationException("Continuation " + pk7Var + " was cancelled normally");
        }
        super(th, z);
        this._resumed = 0;
    }
}
