package defpackage;

import java.io.EOFException;

/* loaded from: classes2.dex */
public final class ws7 implements tt7 {
    @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // defpackage.tt7, java.io.Flushable
    public void flush() {
    }

    @Override // defpackage.tt7
    public wt7 timeout() {
        return wt7.NONE;
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) throws EOFException {
        im7.e(xs7Var, "source");
        xs7Var.skip(j);
    }
}
