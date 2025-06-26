package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import defpackage.f07;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public final class nz6 implements Runnable, o07 {
    public final kz6 e;
    public final lz6 f;
    public final Handler g;
    public final iz6 h;
    public final f07 i;
    public final f07 j;
    public final f07 k;
    public final b07 l;
    public final String m;
    public final String n;
    public final g07 o;
    public final uz6 p;
    public final gz6 q;
    public final l07 r;
    public final k07 s;
    public final boolean t;
    public vz6 u = vz6.NETWORK;

    public class a implements Runnable {
        public final /* synthetic */ rz6 e;
        public final /* synthetic */ Throwable f;

        public a(rz6 rz6Var, Throwable th) {
            this.e = rz6Var;
            this.f = th;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            nz6 nz6Var = nz6.this;
            gz6 gz6Var = nz6Var.q;
            Drawable drawable = gz6Var.f;
            if ((drawable == null && gz6Var.c == 0) ? false : true) {
                g07 g07Var = nz6Var.o;
                Resources resources = nz6Var.h.a;
                int i = gz6Var.c;
                if (i != 0) {
                    drawable = resources.getDrawable(i);
                }
                g07Var.a(drawable);
            }
            nz6 nz6Var2 = nz6.this;
            l07 l07Var = nz6Var2.r;
            String str = nz6Var2.m;
            nz6Var2.o.b();
            Objects.requireNonNull(l07Var);
        }
    }

    public class b extends Exception {
        public b(nz6 nz6Var) {
        }
    }

    public nz6(kz6 kz6Var, lz6 lz6Var, Handler handler) {
        this.e = kz6Var;
        this.f = lz6Var;
        this.g = handler;
        iz6 iz6Var = kz6Var.a;
        this.h = iz6Var;
        this.i = iz6Var.k;
        this.j = iz6Var.n;
        this.k = iz6Var.o;
        this.l = iz6Var.l;
        this.m = lz6Var.a;
        this.n = lz6Var.b;
        this.o = lz6Var.c;
        this.p = lz6Var.d;
        gz6 gz6Var = lz6Var.e;
        this.q = gz6Var;
        this.r = lz6Var.f;
        this.s = lz6Var.g;
        this.t = gz6Var.s;
    }

    public static void j(Runnable runnable, boolean z, Handler handler, kz6 kz6Var) {
        if (z) {
            runnable.run();
        } else if (handler == null) {
            kz6Var.d.execute(runnable);
        } else {
            handler.post(runnable);
        }
    }

    public final void a() throws b {
        if (h()) {
            throw new b(this);
        }
        if (i()) {
            throw new b(this);
        }
    }

    public final Bitmap b(String str) throws IOException {
        return ((a07) this.l).a(new c07(this.n, str, this.m, this.p, this.o.d(), e(), this.q));
    }

    public final boolean c() throws IOException {
        InputStream inputStreamA = e().a(this.m, this.q.n);
        if (inputStreamA == null) {
            p07.b("No stream for image [%s]", this.n);
            return false;
        }
        try {
            return this.h.j.b(this.m, inputStreamA, this);
        } finally {
            try {
                inputStreamA.close();
            } catch (Exception unused) {
            }
        }
    }

    public final void d(rz6 rz6Var, Throwable th) {
        if (this.t || f() || g()) {
            return;
        }
        j(new a(rz6Var, th), false, this.g, this.e);
    }

    public final f07 e() {
        return this.e.h.get() ? this.j : this.e.i.get() ? this.k : this.i;
    }

    public final boolean f() {
        if (!Thread.interrupted()) {
            return false;
        }
        p07.a("Task was interrupted [%s]", this.n);
        return true;
    }

    public final boolean g() {
        return h() || i();
    }

    public final boolean h() {
        if (!this.o.c()) {
            return false;
        }
        p07.a("ImageAware was collected by GC. Task is cancelled. [%s]", this.n);
        return true;
    }

    public final boolean i() {
        if (!(!this.n.equals(this.e.e.get(Integer.valueOf(this.o.n()))))) {
            return false;
        }
        p07.a("ImageAware is reused for another image. Task is cancelled. [%s]", this.n);
        return true;
    }

    public final boolean k() throws b {
        p07.a("Cache image on disk [%s]", this.n);
        try {
            boolean zC = c();
            if (zC) {
                Objects.requireNonNull(this.h);
                Objects.requireNonNull(this.h);
            }
            return zC;
        } catch (IOException e) {
            p07.c(e);
            return false;
        }
    }

    public final Bitmap l() throws b {
        Bitmap bitmapB;
        File fileA;
        Bitmap bitmap = null;
        try {
            try {
                File fileA2 = this.h.j.a(this.m);
                if (fileA2 == null || !fileA2.exists() || fileA2.length() <= 0) {
                    bitmapB = null;
                } else {
                    p07.a("Load image from disk cache [%s]", this.n);
                    this.u = vz6.DISC_CACHE;
                    a();
                    bitmapB = b(f07.a.FILE.l(fileA2.getAbsolutePath()));
                }
                if (bitmapB != null) {
                    try {
                        if (bitmapB.getWidth() > 0 && bitmapB.getHeight() > 0) {
                            return bitmapB;
                        }
                    } catch (IOException e) {
                        Bitmap bitmap2 = bitmapB;
                        e = e;
                        bitmap = bitmap2;
                        p07.c(e);
                        d(rz6.IO_ERROR, e);
                        return bitmap;
                    } catch (IllegalStateException unused) {
                        d(rz6.NETWORK_DENIED, null);
                        return bitmapB;
                    } catch (OutOfMemoryError e2) {
                        Bitmap bitmap3 = bitmapB;
                        e = e2;
                        bitmap = bitmap3;
                        p07.c(e);
                        d(rz6.OUT_OF_MEMORY, e);
                        return bitmap;
                    } catch (Throwable th) {
                        Bitmap bitmap4 = bitmapB;
                        th = th;
                        bitmap = bitmap4;
                        p07.c(th);
                        d(rz6.UNKNOWN, th);
                        return bitmap;
                    }
                }
                p07.a("Load image from network [%s]", this.n);
                this.u = vz6.NETWORK;
                String strL = this.m;
                if (this.q.i && k() && (fileA = this.h.j.a(this.m)) != null) {
                    strL = f07.a.FILE.l(fileA.getAbsolutePath());
                }
                a();
                bitmapB = b(strL);
                if (bitmapB != null && bitmapB.getWidth() > 0 && bitmapB.getHeight() > 0) {
                    return bitmapB;
                }
                d(rz6.DECODING_ERROR, null);
                return bitmapB;
            } catch (b e3) {
                throw e3;
            }
        } catch (IOException e4) {
            e = e4;
        } catch (IllegalStateException unused2) {
            bitmapB = null;
        } catch (OutOfMemoryError e5) {
            e = e5;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zG;
        boolean zG2;
        AtomicBoolean atomicBoolean = this.e.g;
        if (atomicBoolean.get()) {
            synchronized (this.e.j) {
                if (atomicBoolean.get()) {
                    p07.a("ImageLoader is paused. Waiting...  [%s]", this.n);
                    try {
                        this.e.j.wait();
                        p07.a(".. Resume loading [%s]", this.n);
                    } catch (InterruptedException unused) {
                        p07.b("Task was interrupted [%s]", this.n);
                        zG = true;
                    }
                }
            }
            zG = g();
        } else {
            zG = g();
        }
        if (zG) {
            return;
        }
        int i = this.q.l;
        if (i > 0) {
            p07.a("Delay %d ms before loading...  [%s]", Integer.valueOf(i), this.n);
            try {
                Thread.sleep(this.q.l);
                zG2 = g();
            } catch (InterruptedException unused2) {
                p07.b("Task was interrupted [%s]", this.n);
                zG2 = true;
            }
        } else {
            zG2 = false;
        }
        if (zG2) {
            return;
        }
        ReentrantLock reentrantLock = this.f.h;
        p07.a("Start display image task [%s]", this.n);
        if (reentrantLock.isLocked()) {
            p07.a("Image already is loading. Waiting... [%s]", this.n);
        }
        reentrantLock.lock();
        try {
            a();
            Bitmap bitmapA = this.h.i.a(this.n);
            if (bitmapA == null || bitmapA.isRecycled()) {
                bitmapA = l();
                if (bitmapA == null) {
                    return;
                }
                a();
                if (f()) {
                    throw new b(this);
                }
                if (this.q.o != null) {
                    p07.a("PreProcess image before caching in memory [%s]", this.n);
                    bitmapA = this.q.o.a(bitmapA);
                    if (bitmapA == null) {
                        p07.b("Pre-processor returned null [%s]", this.n);
                    }
                }
                if (bitmapA != null && this.q.h) {
                    p07.a("Cache image in memory [%s]", this.n);
                    this.h.i.d(this.n, bitmapA);
                }
            } else {
                this.u = vz6.MEMORY_CACHE;
                p07.a("...Get cached bitmap from memory after waiting. [%s]", this.n);
            }
            if (bitmapA != null) {
                if (this.q.p != null) {
                    p07.a("PostProcess image before displaying [%s]", this.n);
                    bitmapA = this.q.p.a(bitmapA);
                    if (bitmapA == null) {
                        p07.b("Post-processor returned null [%s]", this.n);
                    }
                }
            }
            a();
            if (f()) {
                throw new b(this);
            }
            reentrantLock.unlock();
            j(new fz6(bitmapA, this.f, this.e, this.u), this.t, this.g, this.e);
        } catch (b unused3) {
            if (!this.t && !f()) {
                j(new oz6(this), false, this.g, this.e);
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}
