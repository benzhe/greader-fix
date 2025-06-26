package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public final class y76 implements Object<Application> {
    public final w76 a;

    public y76(w76 w76Var) {
        this.a = w76Var;
    }

    public Object get() {
        Application application = this.a.a;
        Objects.requireNonNull(application, "Cannot return null from a non-@Nullable @Provides method");
        return application;
    }
}
