package defpackage;

import android.graphics.Bitmap;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class fz6 implements Runnable {
    public final Bitmap e;
    public final String f;
    public final g07 g;
    public final String h;
    public final d07 i;
    public final l07 j;
    public final kz6 k;
    public final vz6 l;

    public fz6(Bitmap bitmap, lz6 lz6Var, kz6 kz6Var, vz6 vz6Var) {
        this.e = bitmap;
        this.f = lz6Var.a;
        this.g = lz6Var.c;
        this.h = lz6Var.b;
        this.i = lz6Var.e.q;
        this.j = lz6Var.f;
        this.k = kz6Var;
        this.l = vz6Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.g.c()) {
            p07.a("ImageAware was collected by GC. Task is cancelled. [%s]", this.h);
            l07 l07Var = this.j;
            this.g.b();
            Objects.requireNonNull(l07Var);
            return;
        }
        if (!this.h.equals(this.k.e.get(Integer.valueOf(this.g.n())))) {
            p07.a("ImageAware is reused for another image. Task is cancelled. [%s]", this.h);
            l07 l07Var2 = this.j;
            this.g.b();
            Objects.requireNonNull(l07Var2);
            return;
        }
        p07.a("Display image in ImageAware (loaded from %1$s) [%2$s]", this.l, this.h);
        d07 d07Var = this.i;
        Bitmap bitmap = this.e;
        g07 g07Var = this.g;
        Objects.requireNonNull(d07Var);
        g07Var.e(bitmap);
        this.k.a(this.g);
        this.j.a(this.f, this.g.b(), this.e);
    }
}
