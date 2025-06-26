package defpackage;

import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class ys7 extends OutputStream {
    public final /* synthetic */ xs7 e;

    public ys7(xs7 xs7Var) {
        this.e = xs7Var;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public String toString() {
        return this.e + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.e.Q(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        im7.e(bArr, "data");
        this.e.L(bArr, i, i2);
    }
}
