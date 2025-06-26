package defpackage;

/* loaded from: classes.dex */
public abstract class ww4 extends yv4 {
    public boolean b;

    public ww4(rx4 rx4Var) {
        super(rx4Var);
        this.a.F++;
    }

    public final void f() {
        if (!this.b) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void g() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (h()) {
            return;
        }
        this.a.G.incrementAndGet();
        this.b = true;
    }

    public abstract boolean h();
}
