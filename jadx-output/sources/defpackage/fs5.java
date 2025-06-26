package defpackage;

import android.util.SparseArray;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class fs5 {
    public static final long k = TimeUnit.MINUTES.toSeconds(5);
    public static final /* synthetic */ int l = 0;
    public final ts5 a;
    public ss5 b;
    public final zs5 c;
    public tr5 d;
    public us5 e;
    public final ys5 f;
    public final tt5 g;
    public final SparseArray<ut5> h;
    public final Map<dr5, Integer> i;
    public final er5 j;

    public static class b {
        public ut5 a;
        public int b;

        public b(a aVar) {
        }
    }

    public fs5(ts5 ts5Var, us5 us5Var, tp5 tp5Var) {
        bx5.c(ts5Var.f(), "LocalStore was passed an unstarted persistence implementation", new Object[0]);
        this.a = ts5Var;
        tt5 tt5VarE = ts5Var.e();
        this.g = tt5VarE;
        er5 er5Var = new er5(0, tt5VarE.c());
        er5Var.a();
        this.j = er5Var;
        this.b = ts5Var.b(tp5Var);
        zs5 zs5VarD = ts5Var.d();
        this.c = zs5VarD;
        tr5 tr5Var = new tr5(zs5VarD, this.b, ts5Var.a());
        this.d = tr5Var;
        this.e = us5Var;
        ((nr5) us5Var).a = tr5Var;
        ys5 ys5Var = new ys5();
        this.f = ys5Var;
        ts5Var.c().g(ys5Var);
        this.h = new SparseArray<>();
        this.i = new HashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.ws5 a(defpackage.yq5 r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fs5.a(yq5, boolean):ws5");
    }
}
