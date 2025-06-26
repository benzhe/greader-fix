package defpackage;

/* loaded from: classes2.dex */
public final class er7 extends fr7 {
    public static final cp7 l;
    public static final er7 m;

    static {
        er7 er7Var = new er7();
        m = er7Var;
        int i = zq7.a;
        l = new hr7(er7Var, n56.p2("kotlinx.coroutines.io.parallelism", 64 < i ? i : 64, 0, 0, 12, null), "Dispatchers.IO", 1);
    }

    public er7() {
        super(0, 0, null, 7);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // defpackage.cp7
    public String toString() {
        return "Dispatchers.Default";
    }
}
