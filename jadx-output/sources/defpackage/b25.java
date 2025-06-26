package defpackage;

/* loaded from: classes.dex */
public abstract class b25 extends ly4 implements ny4 {
    public final j25 b;
    public boolean c;

    public b25(j25 j25Var) {
        super(j25Var.j);
        this.b = j25Var;
        j25Var.o++;
    }

    public final void f() {
        if (!this.c) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void g() {
        if (this.c) {
            throw new IllegalStateException("Can't initialize twice");
        }
        h();
        this.b.p++;
        this.c = true;
    }

    public abstract boolean h();
}
