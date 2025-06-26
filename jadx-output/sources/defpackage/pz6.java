package defpackage;

import android.graphics.Bitmap;
import android.os.Handler;

/* loaded from: classes2.dex */
public final class pz6 implements Runnable {
    public final kz6 e;
    public final Bitmap f;
    public final lz6 g;
    public final Handler h;

    public pz6(kz6 kz6Var, Bitmap bitmap, lz6 lz6Var, Handler handler) {
        this.e = kz6Var;
        this.f = bitmap;
        this.g = lz6Var;
        this.h = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        p07.a("PostProcess image before displaying [%s]", this.g.b);
        nz6.j(new fz6(this.g.e.p.a(this.f), this.g, this.e, vz6.MEMORY_CACHE), this.g.e.s, this.h, this.e);
    }
}
