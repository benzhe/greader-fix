package defpackage;

import defpackage.c97;
import defpackage.f37;
import defpackage.o87;
import defpackage.v67;
import java.io.Closeable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.DataFormatException;

/* loaded from: classes2.dex */
public class d87 implements Closeable, g67 {
    public b e;
    public int f;
    public final a97 g;
    public final g97 h;
    public n37 i;
    public v67 j;
    public byte[] k;
    public int l;
    public boolean o;
    public c67 p;
    public long r;
    public int u;
    public e m = e.HEADER;
    public int n = 5;
    public c67 q = new c67();
    public boolean s = false;
    public int t = -1;
    public boolean v = false;
    public volatile boolean w = false;

    public interface b {
        void a(c97.a aVar);

        void d(boolean z);

        void g(int i);

        void h(Throwable th);
    }

    public static class c implements c97.a {
        public InputStream a;

        public c(InputStream inputStream, a aVar) {
            this.a = inputStream;
        }

        @Override // c97.a
        public InputStream next() {
            InputStream inputStream = this.a;
            this.a = null;
            return inputStream;
        }
    }

    public enum e {
        HEADER,
        BODY
    }

    public d87(b bVar, n37 n37Var, int i, a97 a97Var, g97 g97Var) {
        c50.A(bVar, "sink");
        this.e = bVar;
        c50.A(n37Var, "decompressor");
        this.i = n37Var;
        this.f = i;
        c50.A(a97Var, "statsTraceCtx");
        this.g = a97Var;
        c50.A(g97Var, "transportTracer");
        this.h = g97Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        if (r7.w == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
    
        close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0059, code lost:
    
        if (r7.v == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005f, code lost:
    
        if (g() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0061, code lost:
    
        close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r7 = this;
            boolean r0 = r7.s
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r7.s = r0
        L8:
            r1 = 0
            boolean r2 = r7.w     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L4d
            long r2 = r7.r     // Catch: java.lang.Throwable -> L67
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L4d
            boolean r2 = r7.q()     // Catch: java.lang.Throwable -> L67
            if (r2 == 0) goto L4d
            d87$e r2 = r7.m     // Catch: java.lang.Throwable -> L67
            int r2 = r2.ordinal()     // Catch: java.lang.Throwable -> L67
            if (r2 == 0) goto L49
            if (r2 != r0) goto L30
            r7.m()     // Catch: java.lang.Throwable -> L67
            long r2 = r7.r     // Catch: java.lang.Throwable -> L67
            r4 = 1
            long r2 = r2 - r4
            r7.r = r2     // Catch: java.lang.Throwable -> L67
            goto L8
        L30:
            java.lang.AssertionError r0 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L67
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67
            r2.<init>()     // Catch: java.lang.Throwable -> L67
            java.lang.String r3 = "Invalid state: "
            r2.append(r3)     // Catch: java.lang.Throwable -> L67
            d87$e r3 = r7.m     // Catch: java.lang.Throwable -> L67
            r2.append(r3)     // Catch: java.lang.Throwable -> L67
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L67
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L67
            throw r0     // Catch: java.lang.Throwable -> L67
        L49:
            r7.n()     // Catch: java.lang.Throwable -> L67
            goto L8
        L4d:
            boolean r0 = r7.w     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L57
            r7.close()     // Catch: java.lang.Throwable -> L67
            r7.s = r1
            return
        L57:
            boolean r0 = r7.v     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L64
            boolean r0 = r7.g()     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L64
            r7.close()     // Catch: java.lang.Throwable -> L67
        L64:
            r7.s = r1
            return
        L67:
            r0 = move-exception
            r7.s = r1
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.d87.a():void");
    }

    @Override // defpackage.g67
    public void b(int i) {
        c50.t(i > 0, "numMessages must be > 0");
        if (isClosed()) {
            return;
        }
        this.r += i;
        a();
    }

    @Override // defpackage.g67
    public void c(int i) {
        this.f = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, defpackage.g67
    public void close() {
        if (isClosed()) {
            return;
        }
        c67 c67Var = this.p;
        boolean z = true;
        boolean z2 = c67Var != null && c67Var.e > 0;
        try {
            v67 v67Var = this.j;
            if (v67Var != null) {
                if (!z2) {
                    c50.G(!v67Var.m, "GzipInflatingBuffer is closed");
                    if (!((v67.b.c(v67Var.g) == 0 && v67Var.l == v67.c.HEADER) ? false : true)) {
                        z = false;
                    }
                }
                this.j.close();
                z2 = z;
            }
            c67 c67Var2 = this.q;
            if (c67Var2 != null) {
                c67Var2.close();
            }
            c67 c67Var3 = this.p;
            if (c67Var3 != null) {
                c67Var3.close();
            }
            this.j = null;
            this.q = null;
            this.p = null;
            this.e.d(z2);
        } catch (Throwable th) {
            this.j = null;
            this.q = null;
            this.p = null;
            throw th;
        }
    }

    @Override // defpackage.g67
    public void e(v67 v67Var) {
        c50.G(this.i == f37.b.a, "per-message decompressor already set");
        c50.G(this.j == null, "full stream decompressor already set");
        c50.A(v67Var, "Can't pass a null full stream decompressor");
        this.j = v67Var;
        this.q = null;
    }

    @Override // defpackage.g67
    public void f() {
        if (isClosed()) {
            return;
        }
        if (g()) {
            close();
        } else {
            this.v = true;
        }
    }

    public final boolean g() {
        v67 v67Var = this.j;
        if (v67Var == null) {
            return this.q.e == 0;
        }
        c50.G(true ^ v67Var.m, "GzipInflatingBuffer is closed");
        return v67Var.s;
    }

    @Override // defpackage.g67
    public void i(n37 n37Var) {
        c50.G(this.j == null, "Already set full stream decompressor");
        c50.A(n37Var, "Can't pass an empty decompressor");
        this.i = n37Var;
    }

    public boolean isClosed() {
        return this.q == null && this.j == null;
    }

    @Override // defpackage.g67
    public void k(n87 n87Var) throws Throwable {
        c50.A(n87Var, "data");
        boolean z = false;
        boolean z2 = true;
        try {
            if (isClosed() || this.v) {
                z = true;
            } else {
                v67 v67Var = this.j;
                if (v67Var != null) {
                    c50.G(!v67Var.m, "GzipInflatingBuffer is closed");
                    v67Var.e.b(n87Var);
                    v67Var.s = false;
                } else {
                    this.q.b(n87Var);
                }
                try {
                    a();
                } catch (Throwable th) {
                    th = th;
                    z2 = false;
                    if (z2) {
                        n87Var.close();
                    }
                    throw th;
                }
            }
            if (z) {
                n87Var.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void m() {
        InputStream aVar;
        for (a57 a57Var : this.g.a) {
            Objects.requireNonNull(a57Var);
        }
        this.u = 0;
        if (this.o) {
            n37 n37Var = this.i;
            if (n37Var == f37.b.a) {
                throw x47.m.h("Can't decode compressed gRPC message as compression not configured").a();
            }
            try {
                c67 c67Var = this.p;
                int i = o87.a;
                aVar = new d(n37Var.b(new o87.a(c67Var)), this.f, this.g);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } else {
            a97 a97Var = this.g;
            int i2 = this.p.e;
            for (a57 a57Var2 : a97Var.a) {
                Objects.requireNonNull(a57Var2);
            }
            c67 c67Var2 = this.p;
            int i3 = o87.a;
            aVar = new o87.a(c67Var2);
        }
        this.p = null;
        this.e.a(new c(aVar, null));
        this.m = e.HEADER;
        this.n = 5;
    }

    public final void n() {
        int unsignedByte = this.p.readUnsignedByte();
        if ((unsignedByte & 254) != 0) {
            throw x47.m.h("gRPC frame header malformed: reserved bits not zero").a();
        }
        this.o = (unsignedByte & 1) != 0;
        c67 c67Var = this.p;
        c67Var.a(4);
        int unsignedByte2 = c67Var.readUnsignedByte() | (c67Var.readUnsignedByte() << 24) | (c67Var.readUnsignedByte() << 16) | (c67Var.readUnsignedByte() << 8);
        this.n = unsignedByte2;
        if (unsignedByte2 < 0 || unsignedByte2 > this.f) {
            throw x47.l.h(String.format("gRPC message exceeds maximum size %d: %d", Integer.valueOf(this.f), Integer.valueOf(this.n))).a();
        }
        this.t++;
        for (a57 a57Var : this.g.a) {
            Objects.requireNonNull(a57Var);
        }
        g97 g97Var = this.h;
        g97Var.g.a(1L);
        g97Var.a.a();
        this.m = e.BODY;
    }

    public final boolean q() throws Throwable {
        int i;
        e eVar = e.BODY;
        int i2 = 0;
        try {
            if (this.p == null) {
                this.p = new c67();
            }
            int i3 = 0;
            i = 0;
            while (true) {
                try {
                    int i4 = this.n - this.p.e;
                    if (i4 <= 0) {
                        if (i3 > 0) {
                            this.e.g(i3);
                            if (this.m == eVar) {
                                if (this.j != null) {
                                    this.g.a(i);
                                    this.u += i;
                                } else {
                                    this.g.a(i3);
                                    this.u += i3;
                                }
                            }
                        }
                        return true;
                    }
                    if (this.j != null) {
                        try {
                            byte[] bArr = this.k;
                            if (bArr == null || this.l == bArr.length) {
                                this.k = new byte[Math.min(i4, 2097152)];
                                this.l = 0;
                            }
                            int iA = this.j.a(this.k, this.l, Math.min(i4, this.k.length - this.l));
                            v67 v67Var = this.j;
                            int i5 = v67Var.q;
                            v67Var.q = 0;
                            i3 += i5;
                            int i6 = v67Var.r;
                            v67Var.r = 0;
                            i += i6;
                            if (iA == 0) {
                                if (i3 > 0) {
                                    this.e.g(i3);
                                    if (this.m == eVar) {
                                        if (this.j != null) {
                                            this.g.a(i);
                                            this.u += i;
                                        } else {
                                            this.g.a(i3);
                                            this.u += i3;
                                        }
                                    }
                                }
                                return false;
                            }
                            c67 c67Var = this.p;
                            byte[] bArr2 = this.k;
                            int i7 = this.l;
                            int i8 = o87.a;
                            c67Var.b(new o87.b(bArr2, i7, iA));
                            this.l += iA;
                        } catch (IOException e2) {
                            throw new RuntimeException(e2);
                        } catch (DataFormatException e3) {
                            throw new RuntimeException(e3);
                        }
                    } else {
                        int i9 = this.q.e;
                        if (i9 == 0) {
                            if (i3 > 0) {
                                this.e.g(i3);
                                if (this.m == eVar) {
                                    if (this.j != null) {
                                        this.g.a(i);
                                        this.u += i;
                                    } else {
                                        this.g.a(i3);
                                        this.u += i3;
                                    }
                                }
                            }
                            return false;
                        }
                        int iMin = Math.min(i4, i9);
                        i3 += iMin;
                        this.p.b(this.q.A(iMin));
                    }
                } catch (Throwable th) {
                    int i10 = i3;
                    th = th;
                    i2 = i10;
                    if (i2 > 0) {
                        this.e.g(i2);
                        if (this.m == eVar) {
                            if (this.j != null) {
                                this.g.a(i);
                                this.u += i;
                            } else {
                                this.g.a(i2);
                                this.u += i2;
                            }
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            i = 0;
        }
    }

    public static final class d extends FilterInputStream {
        public final int e;
        public final a97 f;
        public long g;
        public long h;
        public long i;

        public d(InputStream inputStream, int i, a97 a97Var) {
            super(inputStream);
            this.i = -1L;
            this.e = i;
            this.f = a97Var;
        }

        public final void a() {
            if (this.h > this.g) {
                for (a57 a57Var : this.f.a) {
                    Objects.requireNonNull(a57Var);
                }
                this.g = this.h;
            }
        }

        public final void b() {
            long j = this.h;
            int i = this.e;
            if (j > i) {
                throw x47.l.h(String.format("Compressed gRPC message exceeds maximum size %d: %d bytes read", Integer.valueOf(i), Long.valueOf(this.h))).a();
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.i = this.h;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i = ((FilterInputStream) this).in.read();
            if (i != -1) {
                this.h++;
            }
            b();
            a();
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.i == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.h = this.i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long jSkip = ((FilterInputStream) this).in.skip(j);
            this.h += jSkip;
            b();
            a();
            return jSkip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
            if (i3 != -1) {
                this.h += i3;
            }
            b();
            a();
            return i3;
        }
    }
}
