package defpackage;

import defpackage.aj5;
import java.util.Date;

/* loaded from: classes.dex */
public class mi5 implements aj5.a {
    public final /* synthetic */ ii5 a;

    public mi5(ii5 ii5Var) {
        this.a = ii5Var;
    }

    public void a(km5 km5Var, Thread thread, Throwable th) {
        ii5 ii5Var = this.a;
        synchronized (ii5Var) {
            ah5.a.b("Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            try {
                qj5.a(ii5Var.e.c(new oi5(ii5Var, new Date(), th, thread, km5Var)));
            } catch (Exception unused) {
            }
        }
    }
}
