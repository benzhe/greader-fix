package defpackage;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class dt7 implements tt7 {
    private final tt7 delegate;

    public dt7(tt7 tt7Var) {
        im7.e(tt7Var, "delegate");
        this.delegate = tt7Var;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final tt7 m0deprecated_delegate() {
        return this.delegate;
    }

    @Override // defpackage.tt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final tt7 delegate() {
        return this.delegate;
    }

    @Override // defpackage.tt7, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // defpackage.tt7
    public wt7 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "source");
        this.delegate.write(xs7Var, j);
    }
}
