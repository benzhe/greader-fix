package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class uy0 implements cb3<Context> {
    public final ry0 a;

    public uy0(ry0 ry0Var) {
        this.a = ry0Var;
    }

    public static Context a(ry0 ry0Var) {
        Context context = ry0Var.b;
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
