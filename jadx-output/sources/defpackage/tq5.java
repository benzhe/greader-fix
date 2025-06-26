package defpackage;

import defpackage.dq5;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class tq5 implements fp5 {
    public final mq5 a;
    public final zq5 b;
    public final xp5<mr5> c;

    public tq5(mq5 mq5Var, zq5 zq5Var, xp5<mr5> xp5Var) {
        this.a = mq5Var;
        this.b = zq5Var;
        this.c = xp5Var;
    }

    @Override // defpackage.fp5
    public void remove() {
        this.c.c = true;
        final mq5 mq5Var = this.a;
        final zq5 zq5Var = this.b;
        synchronized (mq5Var.c.a) {
        }
        mq5Var.c.a(new cx5(new Runnable(mq5Var, zq5Var) { // from class: lq5
            public final mq5 e;
            public final zq5 f;

            {
                this.e = mq5Var;
                this.f = zq5Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsEmpty;
                mq5 mq5Var2 = this.e;
                zq5 zq5Var2 = this.f;
                dq5 dq5Var = mq5Var2.f;
                Objects.requireNonNull(dq5Var);
                yq5 yq5Var = zq5Var2.a;
                dq5.b bVar = dq5Var.b.get(yq5Var);
                if (bVar != null) {
                    bVar.a.remove(zq5Var2);
                    zIsEmpty = bVar.a.isEmpty();
                } else {
                    zIsEmpty = false;
                }
                if (zIsEmpty) {
                    dq5Var.b.remove(yq5Var);
                    cr5 cr5Var = dq5Var.a;
                    cr5Var.g("stopListening");
                    ar5 ar5Var = cr5Var.c.get(yq5Var);
                    bx5.c(ar5Var != null, "Trying to stop listening to a query not found", new Object[0]);
                    cr5Var.c.remove(yq5Var);
                    int i = ar5Var.b;
                    List<yq5> list = cr5Var.d.get(Integer.valueOf(i));
                    list.remove(yq5Var);
                    if (list.isEmpty()) {
                        fs5 fs5Var = cr5Var.a;
                        fs5Var.a.h("Release target", new es5(fs5Var, i));
                        cr5Var.b.k(i);
                        cr5Var.l(i, x47.f);
                    }
                }
            }
        }));
    }
}
