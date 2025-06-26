package defpackage;

import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class ex2 implements Runnable {
    public final /* synthetic */ MotionEvent e;

    public ex2(MotionEvent motionEvent) {
        this.e = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            lu2.C.zza(this.e);
        } catch (Exception e) {
            lu2.E.b(2022, -1L, e);
        }
    }
}
