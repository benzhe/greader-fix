package defpackage;

/* loaded from: classes2.dex */
public abstract class od7<T, R> implements yb7<T>, id7<R> {
    public final yb7<? super R> e;
    public ic7 f;
    public id7<T> g;
    public boolean h;

    public od7(yb7<? super R> yb7Var) {
        this.e = yb7Var;
    }

    @Override // defpackage.yb7
    public void a() {
        if (this.h) {
            return;
        }
        this.h = true;
        this.e.a();
    }

    @Override // defpackage.yb7
    public void b(Throwable th) {
        if (this.h) {
            n56.z1(th);
        } else {
            this.h = true;
            this.e.b(th);
        }
    }

    @Override // defpackage.yb7
    public final void c(ic7 ic7Var) {
        if (yc7.x(this.f, ic7Var)) {
            this.f = ic7Var;
            if (ic7Var instanceof id7) {
                this.g = (id7) ic7Var;
            }
            this.e.c(this);
        }
    }

    @Override // defpackage.nd7
    public void clear() {
        this.g.clear();
    }

    @Override // defpackage.nd7
    public boolean isEmpty() {
        return this.g.isEmpty();
    }

    @Override // defpackage.ic7
    public void k() {
        this.f.k();
    }

    @Override // defpackage.nd7
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
