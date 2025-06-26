package defpackage;

import android.os.Build;

/* loaded from: classes.dex */
public final class qj {
    public static final qj i = new a().a();
    public wj a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public long f;
    public long g;
    public rj h;

    public static final class a {
        public wj a = wj.NOT_REQUIRED;
        public rj b = new rj();

        public qj a() {
            return new qj(this);
        }
    }

    public qj() {
        this.a = wj.NOT_REQUIRED;
        this.f = -1L;
        this.g = -1L;
        this.h = new rj();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qj.class != obj.getClass()) {
            return false;
        }
        qj qjVar = (qj) obj;
        if (this.b == qjVar.b && this.c == qjVar.c && this.d == qjVar.d && this.e == qjVar.e && this.f == qjVar.f && this.g == qjVar.g && this.a == qjVar.a) {
            return this.h.equals(qjVar.h);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31;
        long j = this.f;
        int i2 = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.g;
        return this.h.hashCode() + ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public qj(a aVar) {
        this.a = wj.NOT_REQUIRED;
        this.f = -1L;
        this.g = -1L;
        this.h = new rj();
        this.b = false;
        int i2 = Build.VERSION.SDK_INT;
        this.c = false;
        this.a = aVar.a;
        this.d = false;
        this.e = false;
        if (i2 >= 24) {
            this.h = aVar.b;
            this.f = -1L;
            this.g = -1L;
        }
    }

    public qj(qj qjVar) {
        this.a = wj.NOT_REQUIRED;
        this.f = -1L;
        this.g = -1L;
        this.h = new rj();
        this.b = qjVar.b;
        this.c = qjVar.c;
        this.a = qjVar.a;
        this.d = qjVar.d;
        this.e = qjVar.e;
        this.h = qjVar.h;
    }
}
