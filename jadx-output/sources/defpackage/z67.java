package defpackage;

import defpackage.a67;

/* loaded from: classes2.dex */
public class z67 implements Runnable {
    public final /* synthetic */ a67.a e;
    public final /* synthetic */ Throwable f;

    public z67(a67.a aVar, Throwable th) {
        this.e = aVar;
        this.f = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.e.a(this.f);
    }
}
