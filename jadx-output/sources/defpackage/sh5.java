package defpackage;

import android.os.Process;

/* loaded from: classes.dex */
public abstract class sh5 implements Runnable {
    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(10);
        a();
    }
}
