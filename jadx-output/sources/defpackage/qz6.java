package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class qz6 extends InputStream {
    public final InputStream e;
    public final int f;

    public qz6(InputStream inputStream, int i) {
        this.e = inputStream;
        this.f = i;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.e.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.e.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.e.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.e.skip(j);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.e.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.e.read(bArr, i, i2);
    }
}
