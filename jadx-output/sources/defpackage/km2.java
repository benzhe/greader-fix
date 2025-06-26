package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class km2 implements cb3<Context> {
    public final mb3<Context> a;

    public km2(im2 im2Var, mb3<Context> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Context context = this.a.get();
        Objects.requireNonNull(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }
}
