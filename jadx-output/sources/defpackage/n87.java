package defpackage;

import java.io.Closeable;

/* loaded from: classes2.dex */
public interface n87 extends Closeable {
    n87 A(int i);

    void W(byte[] bArr, int i, int i2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int d();

    int readUnsignedByte();
}
