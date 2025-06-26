package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class wp7 extends aq7<yp7> {
    public static final AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(wp7.class, "_invoked");
    private volatile int _invoked;
    public final pl7<Throwable, yj7> i;

    /* JADX WARN: Multi-variable type inference failed */
    public wp7(yp7 yp7Var, pl7<? super Throwable, yj7> pl7Var) {
        super(yp7Var);
        this.i = pl7Var;
        this._invoked = 0;
    }

    @Override // defpackage.pl7
    public yj7 invoke(Throwable th) {
        Throwable th2 = th;
        if (j.compareAndSet(this, 0, 1)) {
            this.i.invoke(th2);
        }
        return yj7.a;
    }

    @Override // defpackage.sq7
    public String toString() {
        StringBuilder sbZ = jo.z("InvokeOnCancelling[");
        sbZ.append(wp7.class.getSimpleName());
        sbZ.append('@');
        sbZ.append(n56.L0(this));
        sbZ.append(']');
        return sbZ.toString();
    }
}
