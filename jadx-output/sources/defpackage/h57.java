package defpackage;

import defpackage.c97;
import defpackage.d87;
import defpackage.e57;
import defpackage.f37;
import defpackage.j57;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class h57 implements b97 {

    public static abstract class a implements j57.i, d87.b {
        public g67 e;
        public final Object f = new Object();
        public final g97 g;
        public int h;
        public boolean i;
        public boolean j;

        public a(int i, a97 a97Var, g97 g97Var) {
            c50.A(a97Var, "statsTraceCtx");
            c50.A(g97Var, "transportTracer");
            this.g = g97Var;
            this.e = new d87(this, f37.b.a, i, a97Var, g97Var);
        }

        @Override // d87.b
        public void a(c97.a aVar) {
            ((e57.c) this).m.a(aVar);
        }

        public final void c() {
            boolean z;
            synchronized (this.f) {
                synchronized (this.f) {
                    z = this.i && this.h < 32768 && !this.j;
                }
            }
            if (z) {
                ((e57.c) this).m.d();
            }
        }
    }

    @Override // defpackage.b97
    public final void a(g37 g37Var) {
        s67 s67Var = ((e57) this).b;
        c50.A(g37Var, "compressor");
        s67Var.a(g37Var);
    }

    @Override // defpackage.b97
    public final void flush() {
        e57 e57Var = (e57) this;
        if (e57Var.b.isClosed()) {
            return;
        }
        e57Var.b.flush();
    }

    @Override // defpackage.b97
    public final void l(InputStream inputStream) throws IOException {
        c50.A(inputStream, "message");
        try {
            if (!((e57) this).b.isClosed()) {
                ((e57) this).b.b(inputStream);
            }
        } finally {
            u67.b(inputStream);
        }
    }
}
