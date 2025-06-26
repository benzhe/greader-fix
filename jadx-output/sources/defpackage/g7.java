package defpackage;

import android.app.Activity;

/* loaded from: classes.dex */
public class g7 implements Runnable {
    public final /* synthetic */ Activity e;

    public g7(Activity activity) {
        this.e = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.e.isFinishing() || i7.b(this.e)) {
            return;
        }
        this.e.recreate();
    }
}
