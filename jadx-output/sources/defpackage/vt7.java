package defpackage;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface vt7 extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(xs7 xs7Var, long j) throws IOException;

    wt7 timeout();
}
