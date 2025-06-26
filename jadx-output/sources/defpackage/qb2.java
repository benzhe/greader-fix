package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class qb2 implements qd2<nb2> {
    public final zv2 a;
    public final qk2 b;

    public qb2(zv2 zv2Var, qk2 qk2Var) {
        this.a = zv2Var;
        this.b = qk2Var;
    }

    @Override // defpackage.qd2
    public final aw2<nb2> a() {
        return this.a.y(new Callable(this) { // from class: pb2
            public final qb2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new nb2(this.e.b);
            }
        });
    }
}
