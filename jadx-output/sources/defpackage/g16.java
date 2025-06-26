package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g16 implements Object<Application> {
    public final f16 a;

    public g16(f16 f16Var) {
        this.a = f16Var;
    }

    public Object get() {
        Application application = this.a.a;
        Objects.requireNonNull(application, "Cannot return null from a non-@Nullable @Provides method");
        return application;
    }
}
