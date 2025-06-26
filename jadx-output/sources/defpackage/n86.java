package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public final class n86 implements Object<v56> {
    public final l86 a;
    public final jj7<Application> b;

    public n86(l86 l86Var, jj7<Application> jj7Var) {
        this.a = l86Var;
        this.b = jj7Var;
    }

    public Object get() {
        l86 l86Var = this.a;
        Application application = this.b.get();
        Objects.requireNonNull(l86Var);
        return new v56(application, "fiam_impressions_store_file");
    }
}
