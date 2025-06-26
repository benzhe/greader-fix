package defpackage;

import defpackage.xl5;
import java.util.List;
import java.util.concurrent.Executor;
import ul5.d;

/* loaded from: classes.dex */
public class qi5 implements d45<pm5, Void> {
    public final /* synthetic */ List a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Executor c;
    public final /* synthetic */ ri5 d;

    public qi5(ri5 ri5Var, List list, boolean z, Executor executor) {
        this.d = ri5Var;
        this.a = list;
        this.b = z;
        this.c = executor;
    }

    @Override // defpackage.d45
    public e45<Void> a(pm5 pm5Var) throws Exception {
        pm5 pm5Var2 = pm5Var;
        if (pm5Var2 == null) {
            ah5.a.f("Received null app settings, cannot send reports during app startup.");
            return c50.X(null);
        }
        for (xl5 xl5Var : this.a) {
            if (xl5Var.getType() == xl5.a.JAVA) {
                ii5.c(pm5Var2.e, xl5Var.c());
            }
        }
        ii5.b(ii5.this);
        ul5 ul5VarA = ((si5) ii5.this.j).a(pm5Var2);
        List list = this.a;
        boolean z = this.b;
        float f = this.d.f.b;
        synchronized (ul5VarA) {
            if (ul5VarA.g != null) {
                ah5.a.b("Report upload has already been started.");
            } else {
                Thread thread = new Thread(ul5VarA.new d(list, z, f), "Crashlytics Report Uploader");
                ul5VarA.g = thread;
                thread.start();
            }
        }
        ii5.this.s.a(this.c, cj5.i(pm5Var2));
        ii5.this.w.b(null);
        return c50.X(null);
    }
}
