package defpackage;

/* loaded from: classes2.dex */
public abstract class fi7<T, R> implements fd7<T>, kd7<R> {
    public final fd7<? super R> e;
    public y38 f;
    public kd7<T> g;
    public boolean h;
    public int i;

    public fi7(fd7<? super R> fd7Var) {
        this.e = fd7Var;
    }

    @Override // defpackage.x38
    public void a() {
        if (this.h) {
            return;
        }
        this.h = true;
        this.e.a();
    }

    @Override // defpackage.x38
    public void b(Throwable th) {
        if (this.h) {
            n56.z1(th);
        } else {
            this.h = true;
            this.e.b(th);
        }
    }

    public final void c(Throwable th) {
        n56.r2(th);
        this.f.cancel();
        b(th);
    }

    @Override // defpackage.y38
    public void cancel() {
        this.f.cancel();
    }

    @Override // defpackage.nd7
    public void clear() {
        this.g.clear();
    }

    @Override // defpackage.pb7, defpackage.x38
    public final void e(y38 y38Var) {
        if (pi7.C(this.f, y38Var)) {
            this.f = y38Var;
            if (y38Var instanceof kd7) {
                this.g = (kd7) y38Var;
            }
            this.e.e(this);
        }
    }

    public final int g(int i) {
        kd7<T> kd7Var = this.g;
        if (kd7Var == null || (i & 4) != 0) {
            return 0;
        }
        int i2 = kd7Var.i(i);
        if (i2 != 0) {
            this.i = i2;
        }
        return i2;
    }

    @Override // defpackage.nd7
    public boolean isEmpty() {
        return this.g.isEmpty();
    }

    @Override // defpackage.y38
    public void l(long j) {
        this.f.l(j);
    }

    @Override // defpackage.nd7
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
