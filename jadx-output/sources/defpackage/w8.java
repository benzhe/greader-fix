package defpackage;

import android.os.CancellationSignal;

/* loaded from: classes.dex */
public final class w8 {
    public boolean a;
    public Object b;

    public void a() {
        synchronized (this) {
            if (this.a) {
                return;
            }
            this.a = true;
            Object obj = this.b;
            if (obj != null) {
                try {
                    ((CancellationSignal) obj).cancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                notifyAll();
            }
        }
    }
}
