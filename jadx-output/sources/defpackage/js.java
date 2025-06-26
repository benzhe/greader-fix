package defpackage;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class js implements Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((xr) this).j.get().close();
    }
}
