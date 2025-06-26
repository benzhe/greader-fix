package defpackage;

import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class j45 implements h45 {
    public final Object a = new Object();
    public final int b;
    public final e55<Void> c;
    public int d;
    public int e;
    public int f;
    public Exception g;
    public boolean h;

    public j45(int i, e55<Void> e55Var) {
        this.b = i;
        this.c = e55Var;
    }

    public final void a() {
        if (this.d + this.e + this.f == this.b) {
            if (this.g == null) {
                if (this.h) {
                    this.c.t();
                    return;
                } else {
                    this.c.s(null);
                    return;
                }
            }
            e55<Void> e55Var = this.c;
            int i = this.e;
            int i2 = this.b;
            StringBuilder sb = new StringBuilder(54);
            sb.append(i);
            sb.append(" out of ");
            sb.append(i2);
            sb.append(" underlying tasks failed");
            e55Var.r(new ExecutionException(sb.toString(), this.g));
        }
    }

    @Override // defpackage.y35
    public final void b() {
        synchronized (this.a) {
            this.f++;
            this.h = true;
            a();
        }
    }

    @Override // defpackage.a45
    public final void c(Exception exc) {
        synchronized (this.a) {
            this.e++;
            this.g = exc;
            a();
        }
    }

    @Override // defpackage.b45
    public final void onSuccess(Object obj) {
        synchronized (this.a) {
            this.d++;
            a();
        }
    }
}
