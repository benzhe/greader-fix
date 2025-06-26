package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class qu1 implements cb3<String> {
    @Override // defpackage.mb3
    public final Object get() {
        String strValueOf = String.valueOf(os3.j.h.nextInt() & Integer.MAX_VALUE);
        Objects.requireNonNull(strValueOf, "Cannot return null from a non-@Nullable @Provides method");
        return strValueOf;
    }
}
