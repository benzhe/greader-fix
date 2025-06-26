package defpackage;

import android.content.Context;
import defpackage.ii5;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ni5 implements d45<pm5, Void> {
    public final /* synthetic */ Executor a;
    public final /* synthetic */ oi5 b;

    public ni5(oi5 oi5Var, Executor executor) {
        this.b = oi5Var;
        this.a = executor;
    }

    @Override // defpackage.d45
    public e45<Void> a(pm5 pm5Var) throws Exception {
        pm5 pm5Var2 = pm5Var;
        if (pm5Var2 == null) {
            ah5.a.f("Received null app settings, cannot send reports at crash time.");
            return c50.X(null);
        }
        ii5 ii5Var = this.b.i;
        Context context = ii5Var.a;
        ul5 ul5VarA = ((si5) ii5Var.j).a(pm5Var2);
        for (File file : ii5Var.q()) {
            ii5.c(pm5Var2.e, file);
            yl5 yl5Var = new yl5(file, ii5.C);
            wh5 wh5Var = ii5Var.e;
            wh5Var.b(new xh5(wh5Var, new ii5.m(context, yl5Var, ul5VarA, true)));
        }
        return c50.M0(Arrays.asList(ii5.b(this.b.i), this.b.i.s.a(this.a, cj5.i(pm5Var2))));
    }
}
