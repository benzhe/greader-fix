package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public class a16 implements jj7<Application> {
    public final e16 a;

    public a16(e16 e16Var) {
        this.a = e16Var;
    }

    @Override // defpackage.jj7
    public Application get() {
        Application applicationB = this.a.b();
        Objects.requireNonNull(applicationB, "Cannot return null from a non-@Nullable component method");
        return applicationB;
    }
}
