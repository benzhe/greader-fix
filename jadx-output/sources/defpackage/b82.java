package defpackage;

import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public final class b82 implements cb3<String> {
    public final y72 a;

    public b82(y72 y72Var) {
        this.a = y72Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        String lowerCase = this.a.a.toLowerCase(Locale.ROOT);
        Objects.requireNonNull(lowerCase, "Cannot return null from a non-@Nullable @Provides method");
        return lowerCase;
    }
}
