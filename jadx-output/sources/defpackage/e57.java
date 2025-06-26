package defpackage;

import defpackage.e87;
import defpackage.f37;
import defpackage.h57;
import defpackage.i47;
import defpackage.o37;
import defpackage.o97;
import defpackage.z57;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class e57 extends h57 implements y57, e87.d {
    public static final Logger f = Logger.getLogger(e57.class.getName());
    public final g97 a;
    public final s67 b;
    public boolean c;
    public boolean d;
    public i47 e;

    public class a implements s67 {
        public i47 a;
        public boolean b;
        public final a97 c;
        public byte[] d;

        public a(i47 i47Var, a97 a97Var) {
            c50.A(i47Var, "headers");
            this.a = i47Var;
            c50.A(a97Var, "statsTraceCtx");
            this.c = a97Var;
        }

        @Override // defpackage.s67
        public s67 a(g37 g37Var) {
            return this;
        }

        @Override // defpackage.s67
        public void b(InputStream inputStream) {
            c50.G(this.d == null, "writePayload should not be called multiple times");
            try {
                this.d = ee5.b(inputStream);
                for (a57 a57Var : this.c.a) {
                    Objects.requireNonNull(a57Var);
                }
                a97 a97Var = this.c;
                int length = this.d.length;
                for (a57 a57Var2 : a97Var.a) {
                    Objects.requireNonNull(a57Var2);
                }
                a97 a97Var2 = this.c;
                int length2 = this.d.length;
                for (a57 a57Var3 : a97Var2.a) {
                    Objects.requireNonNull(a57Var3);
                }
                a97 a97Var3 = this.c;
                long length3 = this.d.length;
                for (a57 a57Var4 : a97Var3.a) {
                    a57Var4.a(length3);
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // defpackage.s67
        public void close() {
            this.b = true;
            c50.G(this.d != null, "Lack of request message. GET request is only supported for unary requests");
            ((o97.a) e57.this.o()).a(this.a, this.d);
            this.d = null;
            this.a = null;
        }

        @Override // defpackage.s67
        public void d(int i) {
        }

        @Override // defpackage.s67
        public void flush() {
        }

        @Override // defpackage.s67
        public boolean isClosed() {
            return this.b;
        }
    }

    public interface b {
    }

    public static abstract class c extends h57.a {
        public final a97 k;
        public boolean l;
        public z57 m;
        public boolean n;
        public o37 o;
        public boolean p;
        public Runnable q;
        public volatile boolean r;
        public boolean s;
        public boolean t;

        public class a implements Runnable {
            public final /* synthetic */ x47 e;
            public final /* synthetic */ z57.a f;
            public final /* synthetic */ i47 g;

            public a(x47 x47Var, z57.a aVar, i47 i47Var) {
                this.e = x47Var;
                this.f = aVar;
                this.g = i47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.e(this.e, this.f, this.g);
            }
        }

        public c(int i, a97 a97Var, g97 g97Var) {
            super(i, a97Var, g97Var);
            this.o = o37.d;
            this.p = false;
            c50.A(a97Var, "statsTraceCtx");
            this.k = a97Var;
        }

        @Override // d87.b
        public void d(boolean z) {
            c50.G(this.s, "status should have been reported on deframer closed");
            this.p = true;
            if (this.t && z) {
                i(x47.m.h("Encountered end-of-stream mid-frame"), z57.a.PROCESSED, true, new i47());
            }
            Runnable runnable = this.q;
            if (runnable != null) {
                runnable.run();
                this.q = null;
            }
        }

        public final void e(x47 x47Var, z57.a aVar, i47 i47Var) {
            if (this.l) {
                return;
            }
            this.l = true;
            a97 a97Var = this.k;
            if (a97Var.b.compareAndSet(false, true)) {
                for (a57 a57Var : a97Var.a) {
                    Objects.requireNonNull(a57Var);
                }
            }
            this.m.e(x47Var, aVar, i47Var);
            g97 g97Var = this.g;
            if (g97Var != null) {
                if (x47Var.f()) {
                    g97Var.c++;
                } else {
                    g97Var.d++;
                }
            }
        }

        public void f(i47 i47Var) throws EOFException {
            boolean z;
            c50.G(!this.s, "Received headers on closed stream");
            for (a57 a57Var : this.k.a) {
                Objects.requireNonNull((e37) a57Var);
            }
            String str = (String) i47Var.d(u67.e);
            if (!this.n || str == null) {
                z = false;
            } else if (str.equalsIgnoreCase("gzip")) {
                this.e.e(new v67());
                this.e = new j57(this, this, (d87) this.e);
                z = true;
            } else {
                if (!str.equalsIgnoreCase("identity")) {
                    ((o97.b) this).h(x47.m.h(String.format("Can't find full stream decompressor for %s", str)).a());
                    return;
                }
                z = false;
            }
            String str2 = (String) i47Var.d(u67.c);
            if (str2 != null) {
                o37.a aVar = this.o.a.get(str2);
                n37 n37Var = aVar != null ? aVar.a : null;
                if (n37Var == null) {
                    ((o97.b) this).h(x47.m.h(String.format("Can't find decompressor for %s", str2)).a());
                    return;
                } else if (n37Var != f37.b.a) {
                    if (z) {
                        ((o97.b) this).h(x47.m.h(String.format("Full stream and gRPC message encoding cannot both be set", new Object[0])).a());
                        return;
                    }
                    this.e.i(n37Var);
                }
            }
            this.m.c(i47Var);
        }

        public final void i(x47 x47Var, z57.a aVar, boolean z, i47 i47Var) {
            c50.A(x47Var, "status");
            c50.A(i47Var, "trailers");
            if (!this.s || z) {
                this.s = true;
                this.t = x47Var.f();
                synchronized (this.f) {
                    this.j = true;
                }
                if (this.p) {
                    this.q = null;
                    e(x47Var, aVar, i47Var);
                    return;
                }
                this.q = new a(x47Var, aVar, i47Var);
                if (z) {
                    this.e.close();
                } else {
                    this.e.f();
                }
            }
        }
    }

    public e57(i97 i97Var, a97 a97Var, g97 g97Var, i47 i47Var, x27 x27Var, boolean z) {
        c50.A(i47Var, "headers");
        c50.A(g97Var, "transportTracer");
        this.a = g97Var;
        this.c = !Boolean.TRUE.equals(x27Var.a(u67.l));
        this.d = z;
        if (z) {
            this.b = new a(i47Var, a97Var);
        } else {
            this.b = new e87(this, i97Var, a97Var);
            this.e = i47Var;
        }
    }

    @Override // defpackage.b97
    public final void b(int i) {
        o97.a aVar = (o97.a) o();
        Objects.requireNonNull(aVar);
        Objects.requireNonNull(eb7.a);
        try {
            synchronized (o97.this.m.B) {
                o97.b bVar = o97.this.m;
                Objects.requireNonNull(bVar);
                try {
                    bVar.e.b(i);
                } catch (Throwable th) {
                    bVar.h(th);
                }
            }
        } finally {
            Objects.requireNonNull(eb7.a);
        }
    }

    @Override // defpackage.y57
    public void c(int i) {
        p().e.c(i);
    }

    @Override // defpackage.y57
    public void d(int i) {
        this.b.d(i);
    }

    @Override // defpackage.y57
    public final void e(o37 o37Var) {
        c cVarP = p();
        c50.G(cVarP.m == null, "Already called start");
        c50.A(o37Var, "decompressorRegistry");
        cVarP.o = o37Var;
    }

    @Override // defpackage.y57
    public final void f(x47 x47Var) {
        c50.t(!x47Var.f(), "Should not cancel with OK status");
        o97.a aVar = (o97.a) o();
        Objects.requireNonNull(aVar);
        Objects.requireNonNull(eb7.a);
        try {
            synchronized (o97.this.m.B) {
                o97.this.m.n(x47Var, true, null);
            }
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }

    @Override // defpackage.y57
    public final void h(c77 c77Var) {
        v27 v27Var = ((o97) this).o;
        c77Var.b("remote_addr", v27Var.a.get(t37.a));
    }

    @Override // defpackage.y57
    public final void i() {
        if (p().r) {
            return;
        }
        p().r = true;
        this.b.close();
    }

    @Override // defpackage.y57
    public void j(m37 m37Var) {
        i47 i47Var = this.e;
        i47.f<Long> fVar = u67.b;
        i47Var.b(fVar);
        this.e.h(fVar, Long.valueOf(Math.max(0L, m37Var.t(TimeUnit.NANOSECONDS))));
    }

    @Override // defpackage.y57
    public final void k(z57 z57Var) {
        c cVarP = p();
        c50.G(cVarP.m == null, "Already called setListener");
        c50.A(z57Var, "listener");
        cVarP.m = z57Var;
        if (this.d) {
            return;
        }
        ((o97.a) o()).a(this.e, null);
        this.e = null;
    }

    @Override // e87.d
    public final void m(h97 h97Var, boolean z, boolean z2, int i) {
        xs7 xs7Var;
        c50.t(h97Var != null || z, "null frame before EOS");
        o97.a aVar = (o97.a) o();
        Objects.requireNonNull(aVar);
        if (h97Var == null) {
            xs7Var = o97.q;
        } else {
            xs7Var = ((u97) h97Var).a;
            int i2 = (int) xs7Var.f;
            if (i2 > 0) {
                h57.a aVarQ = o97.this.q();
                synchronized (aVarQ.f) {
                    aVarQ.h += i2;
                }
            }
        }
        try {
            synchronized (o97.this.m.B) {
                o97.b.m(o97.this.m, xs7Var, z, z2);
                g97 g97Var = o97.this.a;
                Objects.requireNonNull(g97Var);
                if (i != 0) {
                    g97Var.f += i;
                    g97Var.a.a();
                }
            }
        } finally {
            Objects.requireNonNull(eb7.a);
        }
    }

    @Override // defpackage.y57
    public final void n(boolean z) {
        p().n = z;
    }

    public abstract b o();

    public abstract c p();
}
