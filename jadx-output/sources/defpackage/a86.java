package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public final class a86 implements Object<pc7<String>> {
    public final z76 a;
    public final jj7<Application> b;

    public a86(z76 z76Var, jj7<Application> jj7Var) {
        this.a = z76Var;
        this.b = jj7Var;
    }

    public Object get() {
        z76 z76Var = this.a;
        Application application = this.b.get();
        Objects.requireNonNull(z76Var);
        m36 m36Var = new m36();
        pc7<String> pc7VarP = m36Var.i.g(gb7.BUFFER).p();
        pc7VarP.w();
        application.registerActivityLifecycleCallbacks(m36Var);
        return pc7VarP;
    }
}
