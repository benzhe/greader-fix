package defpackage;

import com.google.android.apps.dashclock.api.DashClockExtension;

/* loaded from: classes.dex */
public class pq implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ DashClockExtension.a f;

    public pq(DashClockExtension.a aVar, int i) {
        this.f = aVar;
        this.e = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        DashClockExtension.this.b(this.e);
    }
}
