package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface tt7 extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    wt7 timeout();

    void write(xs7 xs7Var, long j) throws IOException;
}
