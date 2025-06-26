package defpackage;

/* loaded from: classes2.dex */
public abstract class f67 implements Runnable {
    public final l37 e;

    public f67(l37 l37Var) {
        this.e = l37Var;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        l37 l37VarB = this.e.b();
        try {
            a();
        } finally {
            this.e.i(l37VarB);
        }
    }
}
