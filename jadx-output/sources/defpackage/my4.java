package defpackage;

/* loaded from: classes.dex */
public abstract class my4 extends ly4 {
    public boolean b;

    public my4(rx4 rx4Var) {
        super(rx4Var);
        this.a.F++;
    }

    public abstract boolean f();

    public void g() {
    }

    public final boolean h() {
        return this.b;
    }

    public final void i() {
        if (!h()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void k() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (f()) {
            return;
        }
        this.a.G.incrementAndGet();
        this.b = true;
    }

    public final void l() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        g();
        this.a.G.incrementAndGet();
        this.b = true;
    }
}
