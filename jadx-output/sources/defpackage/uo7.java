package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public class uo7 {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(uo7.class, "_handled");
    private volatile int _handled;
    public final Throwable a;

    public uo7(Throwable th, boolean z) {
        this.a = th;
        this._handled = z ? 1 : 0;
    }

    public String toString() {
        return getClass().getSimpleName() + '[' + this.a + ']';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    public uo7(Throwable th, boolean z, int i) {
        ?? r2 = (i & 2) != 0 ? 0 : z;
        this.a = th;
        this._handled = r2;
    }
}
