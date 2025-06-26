package defpackage;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public final class xy0 implements cb3<WeakReference<Context>> {
    public final ry0 a;

    public xy0(ry0 ry0Var) {
        this.a = ry0Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        WeakReference<Context> weakReference = this.a.c;
        Objects.requireNonNull(weakReference, "Cannot return null from a non-@Nullable @Provides method");
        return weakReference;
    }
}
