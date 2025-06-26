package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class hz6 {
    public static final String d = "hz6";
    public static volatile hz6 e;
    public iz6 a;
    public kz6 b;
    public l07 c = new l07();

    public static Handler d(gz6 gz6Var) {
        Handler handler = gz6Var.r;
        if (gz6Var.s) {
            return null;
        }
        return (handler == null && Looper.myLooper() == Looper.getMainLooper()) ? new Handler() : handler;
    }

    public static hz6 j() {
        if (e == null) {
            synchronized (hz6.class) {
                if (e == null) {
                    e = new hz6();
                }
            }
        }
        return e;
    }

    public void a(ImageView imageView) {
        this.b.e.remove(Integer.valueOf(new h07(imageView).n()));
    }

    public void b(g07 g07Var) {
        this.b.e.remove(Integer.valueOf(g07Var.n()));
    }

    public final void c() {
        if (this.a == null) {
            throw new IllegalStateException("ImageLoader must be init with configuration before using");
        }
    }

    public void e(boolean z) {
        this.b.h.set(z);
    }

    public void f(String str, ImageView imageView) throws Resources.NotFoundException {
        h(str, new h07(imageView), null, null, null);
    }

    public void g(String str, ImageView imageView, gz6 gz6Var) throws Resources.NotFoundException {
        h(str, new h07(imageView), gz6Var, null, null);
    }

    public void h(String str, g07 g07Var, gz6 gz6Var, l07 l07Var, k07 k07Var) throws Resources.NotFoundException {
        c();
        l07 l07Var2 = l07Var == null ? this.c : l07Var;
        gz6 gz6Var2 = gz6Var == null ? this.a.m : gz6Var;
        if (TextUtils.isEmpty(str)) {
            this.b.e.remove(Integer.valueOf(g07Var.n()));
            g07Var.b();
            Objects.requireNonNull(l07Var2);
            Drawable drawable = gz6Var2.e;
            if ((drawable == null && gz6Var2.b == 0) ? false : true) {
                Resources resources = this.a.a;
                int i = gz6Var2.b;
                if (i != 0) {
                    drawable = resources.getDrawable(i);
                }
                g07Var.a(drawable);
            } else {
                g07Var.a(null);
            }
            l07Var2.a(str, g07Var.b(), null);
            return;
        }
        DisplayMetrics displayMetrics = this.a.a.getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        uz6 uz6Var = n07.a;
        int width = g07Var.getWidth();
        if (width > 0) {
            i2 = width;
        }
        int height = g07Var.getHeight();
        if (height > 0) {
            i3 = height;
        }
        uz6 uz6Var2 = new uz6(i2, i3);
        String str2 = str + "_" + uz6Var2.a + "x" + uz6Var2.b;
        this.b.e.put(Integer.valueOf(g07Var.n()), str2);
        g07Var.b();
        Objects.requireNonNull(l07Var2);
        Bitmap bitmapA = this.a.i.a(str2);
        if (bitmapA != null && !bitmapA.isRecycled()) {
            p07.a("Load image from memory cache [%s]", str2);
            if (!(gz6Var2.p != null)) {
                Objects.requireNonNull(gz6Var2.q);
                g07Var.e(bitmapA);
                l07Var2.a(str, g07Var.b(), bitmapA);
                return;
            }
            kz6 kz6Var = this.b;
            ReentrantLock reentrantLock = kz6Var.f.get(str);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                kz6Var.f.put(str, reentrantLock);
            }
            pz6 pz6Var = new pz6(this.b, bitmapA, new lz6(str, g07Var, uz6Var2, str2, gz6Var2, l07Var2, k07Var, reentrantLock), d(gz6Var2));
            if (gz6Var2.s) {
                pz6Var.run();
                return;
            }
            kz6 kz6Var2 = this.b;
            kz6Var2.b();
            kz6Var2.c.execute(pz6Var);
            return;
        }
        Drawable drawable2 = gz6Var2.d;
        if ((drawable2 == null && gz6Var2.a == 0) ? false : true) {
            Resources resources2 = this.a.a;
            int i4 = gz6Var2.a;
            if (i4 != 0) {
                drawable2 = resources2.getDrawable(i4);
            }
            g07Var.a(drawable2);
        } else if (gz6Var2.g) {
            g07Var.a(null);
        }
        kz6 kz6Var3 = this.b;
        ReentrantLock reentrantLock2 = kz6Var3.f.get(str);
        if (reentrantLock2 == null) {
            reentrantLock2 = new ReentrantLock();
            kz6Var3.f.put(str, reentrantLock2);
        }
        nz6 nz6Var = new nz6(this.b, new lz6(str, g07Var, uz6Var2, str2, gz6Var2, l07Var2, k07Var, reentrantLock2), d(gz6Var2));
        if (gz6Var2.s) {
            nz6Var.run();
        } else {
            kz6 kz6Var4 = this.b;
            kz6Var4.d.execute(new jz6(kz6Var4, nz6Var));
        }
    }

    public ty6 i() {
        c();
        return this.a.j;
    }

    public synchronized void k(iz6 iz6Var) {
        if (this.a == null) {
            p07.a("Initialize ImageLoader with configuration", new Object[0]);
            this.b = new kz6(iz6Var);
            this.a = iz6Var;
        } else {
            p07.e("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
        }
    }

    public void l(String str, uz6 uz6Var, gz6 gz6Var, l07 l07Var) throws Resources.NotFoundException {
        m(str, uz6Var, null, l07Var, null);
    }

    public void m(String str, uz6 uz6Var, gz6 gz6Var, l07 l07Var, k07 k07Var) throws Resources.NotFoundException {
        c();
        if (uz6Var == null) {
            DisplayMetrics displayMetrics = this.a.a.getDisplayMetrics();
            uz6Var = new uz6(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        if (gz6Var == null) {
            gz6Var = this.a.m;
        }
        h(str, new i07(str, uz6Var, xz6.CROP), gz6Var, l07Var, k07Var);
    }
}
