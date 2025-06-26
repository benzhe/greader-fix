package defpackage;

/* loaded from: classes2.dex */
public abstract class g57 implements n87 {
    public final void a(int i) {
        if (d() < i) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // defpackage.n87, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
