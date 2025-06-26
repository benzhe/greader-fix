package defpackage;

import android.graphics.Bitmap;
import android.net.Uri;
import defpackage.e27;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class h27 {
    public static final long s = TimeUnit.SECONDS.toNanos(5);
    public int a;
    public long b;
    public final Uri c;
    public final int d;
    public final List<n27> e = null;
    public final int f;
    public final int g;
    public final boolean h;
    public final int i;
    public final boolean j;
    public final boolean k;
    public final float l;
    public final float m;
    public final float n;
    public final boolean o;
    public final boolean p;
    public final Bitmap.Config q;
    public final e27.e r;

    public static final class b {
        public Uri a;
        public int b;
        public int c;
        public int d;
        public Bitmap.Config e;
        public e27.e f;

        public b(Uri uri, int i, Bitmap.Config config) {
            this.a = uri;
            this.b = i;
            this.e = config;
        }

        public b a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            }
            if (i2 == 0 && i == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            }
            this.c = i;
            this.d = i2;
            return this;
        }
    }

    public h27(Uri uri, int i, String str, List list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config, e27.e eVar, a aVar) {
        this.c = uri;
        this.d = i;
        this.f = i2;
        this.g = i3;
        this.h = z;
        this.j = z2;
        this.i = i4;
        this.k = z3;
        this.l = f;
        this.m = f2;
        this.n = f3;
        this.o = z4;
        this.p = z5;
        this.q = config;
        this.r = eVar;
    }

    public boolean a() {
        return (this.f == 0 && this.g == 0) ? false : true;
    }

    public String b() {
        long jNanoTime = System.nanoTime() - this.b;
        if (jNanoTime > s) {
            return d() + '+' + TimeUnit.NANOSECONDS.toSeconds(jNanoTime) + 's';
        }
        return d() + '+' + TimeUnit.NANOSECONDS.toMillis(jNanoTime) + "ms";
    }

    public boolean c() {
        return a() || this.l != 0.0f;
    }

    public String d() {
        StringBuilder sbZ = jo.z("[R");
        sbZ.append(this.a);
        sbZ.append(']');
        return sbZ.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.d;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.c);
        }
        List<n27> list = this.e;
        if (list != null && !list.isEmpty()) {
            for (n27 n27Var : this.e) {
                sb.append(' ');
                sb.append(n27Var.key());
            }
        }
        if (this.f > 0) {
            sb.append(" resize(");
            sb.append(this.f);
            sb.append(',');
            sb.append(this.g);
            sb.append(')');
        }
        if (this.h) {
            sb.append(" centerCrop");
        }
        if (this.j) {
            sb.append(" centerInside");
        }
        if (this.l != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.l);
            if (this.o) {
                sb.append(" @ ");
                sb.append(this.m);
                sb.append(',');
                sb.append(this.n);
            }
            sb.append(')');
        }
        if (this.p) {
            sb.append(" purgeable");
        }
        if (this.q != null) {
            sb.append(' ');
            sb.append(this.q);
        }
        sb.append('}');
        return sb.toString();
    }
}
