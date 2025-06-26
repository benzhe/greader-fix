package defpackage;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class et7 implements vt7 {
    private final vt7 delegate;

    public et7(vt7 vt7Var) {
        im7.e(vt7Var, "delegate");
        this.delegate = vt7Var;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final vt7 m1deprecated_delegate() {
        return this.delegate;
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final vt7 delegate() {
        return this.delegate;
    }

    @Override // defpackage.vt7
    public long read(xs7 xs7Var, long j) throws IOException {
        im7.e(xs7Var, "sink");
        return this.delegate.read(xs7Var, j);
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
