package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.f37;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class e87 implements s67 {
    public final d a;
    public h97 c;
    public final i97 g;
    public final a97 h;
    public boolean i;
    public int j;
    public long l;
    public int b = -1;
    public g37 d = f37.b.a;
    public final c e = new c(null);
    public final byte[] f = new byte[5];
    public int k = -1;

    public interface d {
        void m(h97 h97Var, boolean z, boolean z2, int i);
    }

    public e87(d dVar, i97 i97Var, a97 a97Var) {
        c50.A(dVar, "sink");
        this.a = dVar;
        c50.A(i97Var, "bufferAllocator");
        this.g = i97Var;
        c50.A(a97Var, "statsTraceCtx");
        this.h = a97Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int h(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream instanceof p37) {
            return ((p37) inputStream).a(outputStream);
        }
        int i = ee5.a;
        Objects.requireNonNull(inputStream);
        Objects.requireNonNull(outputStream);
        byte[] bArr = new byte[RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        long j = 0;
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                break;
            }
            outputStream.write(bArr, 0, i2);
            j += i2;
        }
        c50.n(j <= 2147483647L, "Message size overflow: %s", j);
        return (int) j;
    }

    @Override // defpackage.s67
    public s67 a(g37 g37Var) {
        c50.A(g37Var, "Can't pass an empty compressor");
        this.d = g37Var;
        return this;
    }

    @Override // defpackage.s67
    public void b(InputStream inputStream) {
        if (this.i) {
            throw new IllegalStateException("Framer already closed");
        }
        this.j++;
        this.k++;
        this.l = 0L;
        for (a57 a57Var : this.h.a) {
            Objects.requireNonNull(a57Var);
        }
        boolean z = this.d != f37.b.a;
        try {
            int iAvailable = ((inputStream instanceof b47) || (inputStream instanceof ByteArrayInputStream)) ? inputStream.available() : -1;
            int i = (iAvailable == 0 || !z) ? i(inputStream, iAvailable) : f(inputStream);
            if (iAvailable != -1 && i != iAvailable) {
                throw x47.m.h(String.format("Message length inaccurate %s != %s", Integer.valueOf(i), Integer.valueOf(iAvailable))).a();
            }
            for (a57 a57Var2 : this.h.a) {
                Objects.requireNonNull(a57Var2);
            }
            a97 a97Var = this.h;
            long j = this.l;
            for (a57 a57Var3 : a97Var.a) {
                a57Var3.a(j);
            }
            for (a57 a57Var4 : this.h.a) {
                Objects.requireNonNull(a57Var4);
            }
        } catch (IOException e) {
            throw x47.m.h("Failed to frame message").g(e).a();
        } catch (RuntimeException e2) {
            throw x47.m.h("Failed to frame message").g(e2).a();
        }
    }

    public final void c(boolean z, boolean z2) {
        h97 h97Var = this.c;
        this.c = null;
        this.a.m(h97Var, z, z2, this.j);
        this.j = 0;
    }

    @Override // defpackage.s67
    public void close() {
        h97 h97Var;
        if (this.i) {
            return;
        }
        this.i = true;
        h97 h97Var2 = this.c;
        if (h97Var2 != null && h97Var2.d() == 0 && (h97Var = this.c) != null) {
            h97Var.release();
            this.c = null;
        }
        c(true, true);
    }

    @Override // defpackage.s67
    public void d(int i) {
        c50.G(this.b == -1, "max size already set");
        this.b = i;
    }

    public final void e(b bVar, boolean z) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f);
        byteBufferWrap.put(z ? (byte) 1 : (byte) 0);
        Iterator<h97> it = bVar.e.iterator();
        int iD = 0;
        while (it.hasNext()) {
            iD += it.next().d();
        }
        byteBufferWrap.putInt(iD);
        h97 h97VarA = this.g.a(5);
        h97VarA.j(this.f, 0, byteBufferWrap.position());
        if (iD == 0) {
            this.c = h97VarA;
            return;
        }
        this.a.m(h97VarA, false, false, this.j - 1);
        this.j = 1;
        List<h97> list = bVar.e;
        for (int i = 0; i < list.size() - 1; i++) {
            this.a.m(list.get(i), false, false, 0);
        }
        this.c = list.get(list.size() - 1);
        this.l = iD;
    }

    public final int f(InputStream inputStream) throws IOException {
        b bVar = new b(null);
        OutputStream outputStreamC = this.d.c(bVar);
        try {
            int iH = h(inputStream, outputStreamC);
            outputStreamC.close();
            int i = this.b;
            if (i >= 0 && iH > i) {
                throw x47.l.h(String.format("message too large %d > %d", Integer.valueOf(iH), Integer.valueOf(this.b))).a();
            }
            e(bVar, true);
            return iH;
        } catch (Throwable th) {
            outputStreamC.close();
            throw th;
        }
    }

    @Override // defpackage.s67
    public void flush() {
        h97 h97Var = this.c;
        if (h97Var == null || h97Var.d() <= 0) {
            return;
        }
        c(false, true);
    }

    public final void g(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            h97 h97Var = this.c;
            if (h97Var != null && h97Var.k() == 0) {
                c(false, false);
            }
            if (this.c == null) {
                this.c = this.g.a(i2);
            }
            int iMin = Math.min(i2, this.c.k());
            this.c.j(bArr, i, iMin);
            i += iMin;
            i2 -= iMin;
        }
    }

    public final int i(InputStream inputStream, int i) throws IOException {
        if (i == -1) {
            b bVar = new b(null);
            int iH = h(inputStream, bVar);
            int i2 = this.b;
            if (i2 >= 0 && iH > i2) {
                throw x47.l.h(String.format("message too large %d > %d", Integer.valueOf(iH), Integer.valueOf(this.b))).a();
            }
            e(bVar, false);
            return iH;
        }
        this.l = i;
        int i3 = this.b;
        if (i3 >= 0 && i > i3) {
            throw x47.l.h(String.format("message too large %d > %d", Integer.valueOf(i), Integer.valueOf(this.b))).a();
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f);
        byteBufferWrap.put((byte) 0);
        byteBufferWrap.putInt(i);
        if (this.c == null) {
            this.c = this.g.a(byteBufferWrap.position() + i);
        }
        g(this.f, 0, byteBufferWrap.position());
        return h(inputStream, this.e);
    }

    @Override // defpackage.s67
    public boolean isClosed() {
        return this.i;
    }

    public class c extends OutputStream {
        public c(a aVar) {
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            e87.this.g(new byte[]{(byte) i}, 0, 1);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            e87.this.g(bArr, i, i2);
        }
    }

    public final class b extends OutputStream {
        public final List<h97> e = new ArrayList();
        public h97 f;

        public b(a aVar) {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            h97 h97Var = this.f;
            if (h97Var == null || h97Var.k() <= 0) {
                write(new byte[]{(byte) i}, 0, 1);
            } else {
                this.f.l((byte) i);
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            if (this.f == null) {
                h97 h97VarA = e87.this.g.a(i2);
                this.f = h97VarA;
                this.e.add(h97VarA);
            }
            while (i2 > 0) {
                int iMin = Math.min(i2, this.f.k());
                if (iMin == 0) {
                    h97 h97VarA2 = e87.this.g.a(Math.max(i2, this.f.d() * 2));
                    this.f = h97VarA2;
                    this.e.add(h97VarA2);
                } else {
                    this.f.j(bArr, i, iMin);
                    i += iMin;
                    i2 -= iMin;
                }
            }
        }
    }
}
