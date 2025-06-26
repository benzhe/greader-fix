package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class o91 implements cb3<Context> {
    public final n91 a;
    public final mb3<Context> b;

    public o91(n91 n91Var, mb3<Context> mb3Var) {
        this.a = n91Var;
        this.b = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        n91 n91Var = this.a;
        Context context = this.b.get();
        if (n91Var.d == null) {
            context = n91Var.a;
        }
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }
}
