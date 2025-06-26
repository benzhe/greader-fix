package defpackage;

import android.os.Looper;

/* loaded from: classes.dex */
public final class eu0 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
