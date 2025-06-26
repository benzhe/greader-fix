package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public class v66 implements jj7<Application> {
    public final i76 a;

    public v66(i76 i76Var) {
        this.a = i76Var;
    }

    @Override // defpackage.jj7
    public Application get() {
        Application applicationA = this.a.a();
        Objects.requireNonNull(applicationA, "Cannot return null from a non-@Nullable component method");
        return applicationA;
    }
}
