package defpackage;

import java.util.HashSet;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class e82 implements cb3<Set<String>> {
    public final y72 a;

    public e82(y72 y72Var) {
        this.a = y72Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        y72 y72Var = this.a;
        Objects.requireNonNull(y72Var);
        HashSet hashSet = new HashSet();
        hashSet.add(y72Var.a.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}
