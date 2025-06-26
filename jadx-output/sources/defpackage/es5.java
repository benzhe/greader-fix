package defpackage;

import defpackage.ln5;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class es5 implements Runnable {
    public final fs5 e;
    public final int f;

    public es5(fs5 fs5Var, int i) {
        this.e = fs5Var;
        this.f = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        fs5 fs5Var = this.e;
        int i = this.f;
        ut5 ut5Var = fs5Var.h.get(i);
        bx5.c(ut5Var != null, "Tried to release nonexistent target: %s", Integer.valueOf(i));
        Iterator<bu5> it = fs5Var.f.g(i).iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                fs5Var.a.c().f(ut5Var);
                fs5Var.h.remove(i);
                fs5Var.i.remove(ut5Var.a);
                return;
            }
            fs5Var.a.c().i((bu5) aVar.next());
        }
    }
}
