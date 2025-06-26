package defpackage;

import defpackage.k97;
import java.io.IOException;
import java.net.Socket;
import java.util.Objects;
import java.util.Queue;

/* loaded from: classes2.dex */
public final class j97 implements tt7 {
    public final u87 g;
    public final k97.a h;
    public tt7 l;
    public Socket m;
    public final Object e = new Object();
    public final xs7 f = new xs7();
    public boolean i = false;
    public boolean j = false;
    public boolean k = false;

    public class a extends d {
        public final db7 f;

        public a() {
            super(null);
            eb7.a();
            this.f = cb7.b;
        }

        @Override // j97.d
        public void a() throws IOException {
            j97 j97Var;
            Objects.requireNonNull(eb7.a);
            xs7 xs7Var = new xs7();
            try {
                synchronized (j97.this.e) {
                    xs7 xs7Var2 = j97.this.f;
                    xs7Var.write(xs7Var2, xs7Var2.c());
                    j97Var = j97.this;
                    j97Var.i = false;
                }
                j97Var.l.write(xs7Var, xs7Var.f);
            } catch (Throwable th) {
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }
    }

    public class b extends d {
        public final db7 f;

        public b() {
            super(null);
            eb7.a();
            this.f = cb7.b;
        }

        @Override // j97.d
        public void a() throws IOException {
            j97 j97Var;
            Objects.requireNonNull(eb7.a);
            xs7 xs7Var = new xs7();
            try {
                synchronized (j97.this.e) {
                    xs7 xs7Var2 = j97.this.f;
                    xs7Var.write(xs7Var2, xs7Var2.f);
                    j97Var = j97.this;
                    j97Var.j = false;
                }
                j97Var.l.write(xs7Var, xs7Var.f);
                j97.this.l.flush();
            } catch (Throwable th) {
                Objects.requireNonNull(eb7.a);
                throw th;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            Objects.requireNonNull(j97.this.f);
            try {
                tt7 tt7Var = j97.this.l;
                if (tt7Var != null) {
                    tt7Var.close();
                }
            } catch (IOException e) {
                j97.this.h.a(e);
            }
            try {
                Socket socket = j97.this.m;
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException e2) {
                j97.this.h.a(e2);
            }
        }
    }

    public abstract class d implements Runnable {
        public d(a aVar) {
        }

        public abstract void a() throws IOException;

        @Override // java.lang.Runnable
        public final void run() throws IOException {
            try {
                if (j97.this.l == null) {
                    throw new IOException("Unable to perform write due to unavailable sink.");
                }
                a();
            } catch (Exception e) {
                j97.this.h.a(e);
            }
        }
    }

    public j97(u87 u87Var, k97.a aVar) {
        c50.A(u87Var, "executor");
        this.g = u87Var;
        c50.A(aVar, "exceptionHandler");
        this.h = aVar;
    }

    public void a(tt7 tt7Var, Socket socket) {
        c50.G(this.l == null, "AsyncSink's becomeConnected should only be called once.");
        c50.A(tt7Var, "sink");
        this.l = tt7Var;
        c50.A(socket, "socket");
        this.m = socket;
    }

    @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.k) {
            return;
        }
        this.k = true;
        u87 u87Var = this.g;
        c cVar = new c();
        Queue<Runnable> queue = u87Var.f;
        c50.A(cVar, "'r' must not be null.");
        queue.add(cVar);
        u87Var.c(cVar);
    }

    @Override // defpackage.tt7, java.io.Flushable
    public void flush() throws IOException {
        if (this.k) {
            throw new IOException("closed");
        }
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            synchronized (this.e) {
                if (this.j) {
                    Objects.requireNonNull(cb7Var);
                    return;
                }
                this.j = true;
                u87 u87Var = this.g;
                b bVar = new b();
                Queue<Runnable> queue = u87Var.f;
                c50.A(bVar, "'r' must not be null.");
                queue.add(bVar);
                u87Var.c(bVar);
                Objects.requireNonNull(cb7Var);
            }
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }

    @Override // defpackage.tt7
    public wt7 timeout() {
        return wt7.NONE;
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) throws IOException {
        c50.A(xs7Var, "source");
        if (this.k) {
            throw new IOException("closed");
        }
        cb7 cb7Var = eb7.a;
        Objects.requireNonNull(cb7Var);
        try {
            synchronized (this.e) {
                this.f.write(xs7Var, j);
                if (!this.i && !this.j && this.f.c() > 0) {
                    this.i = true;
                    u87 u87Var = this.g;
                    a aVar = new a();
                    Queue<Runnable> queue = u87Var.f;
                    c50.A(aVar, "'r' must not be null.");
                    queue.add(aVar);
                    u87Var.c(aVar);
                    Objects.requireNonNull(cb7Var);
                    return;
                }
                Objects.requireNonNull(cb7Var);
            }
        } catch (Throwable th) {
            Objects.requireNonNull(eb7.a);
            throw th;
        }
    }
}
