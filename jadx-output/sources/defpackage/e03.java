package defpackage;

import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class e03 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ int g;

    public e03(int i, int i2, int i3) {
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            lu2.C.zza(MotionEvent.obtain(0L, this.e, 0, this.f, this.g, 0));
        } catch (Exception e) {
            lu2.E.b(2022, -1L, e);
        }
    }
}
