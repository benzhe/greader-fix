package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class z17 extends InputStream {
    public final InputStream e;
    public long f;
    public long g;
    public long h;
    public long i = -1;
    public boolean j = true;
    public int k;

    public z17(InputStream inputStream) {
        this.k = -1;
        this.e = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
        this.k = 1024;
    }

    public void a(long j) throws IOException {
        if (this.f > this.h || j < this.g) {
            throw new IOException("Cannot reset");
        }
        this.e.reset();
        c(this.g, j);
        this.f = j;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.e.available();
    }

    public final void b(long j) throws IOException {
        try {
            long j2 = this.g;
            long j3 = this.f;
            if (j2 >= j3 || j3 > this.h) {
                this.g = j3;
                this.e.mark((int) (j - j3));
            } else {
                this.e.reset();
                this.e.mark((int) (j - this.g));
                c(this.g, this.f);
            }
            this.h = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    public final void c(long j, long j2) throws IOException {
        while (j < j2) {
            long jSkip = this.e.skip(j2 - j);
            if (jSkip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    jSkip = 1;
                }
            }
            j += jSkip;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.e.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) throws IOException {
        long j = this.f + i;
        if (this.h < j) {
            b(j);
        }
        this.i = this.f;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.j) {
            long j = this.f + 1;
            long j2 = this.h;
            if (j > j2) {
                b(j2 + this.k);
            }
        }
        int i = this.e.read();
        if (i != -1) {
            this.f++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        a(this.i);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.j) {
            long j2 = this.f;
            if (j2 + j > this.h) {
                b(j2 + j + this.k);
            }
        }
        long jSkip = this.e.skip(j);
        this.f += jSkip;
        return jSkip;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.j) {
            long j = this.f;
            if (bArr.length + j > this.h) {
                b(j + bArr.length + this.k);
            }
        }
        int i = this.e.read(bArr);
        if (i != -1) {
            this.f += i;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.j) {
            long j = this.f;
            long j2 = i2;
            if (j + j2 > this.h) {
                b(j + j2 + this.k);
            }
        }
        int i3 = this.e.read(bArr, i, i2);
        if (i3 != -1) {
            this.f += i3;
        }
        return i3;
    }
}
