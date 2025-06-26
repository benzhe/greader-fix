package defpackage;

import defpackage.a67;

/* loaded from: classes2.dex */
public class y67 implements Runnable {
    public final /* synthetic */ a67.a e;
    public final /* synthetic */ long f;

    public y67(a67.a aVar, long j) {
        this.e = aVar;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.e.b(this.f);
    }
}
