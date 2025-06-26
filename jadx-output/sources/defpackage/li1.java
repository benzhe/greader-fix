package defpackage;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class li1 implements cb3<Set<String>> {
    public final mb3<dk1> a;

    public li1(mb3<dk1> mb3Var) {
        this.a = mb3Var;
    }

    public static Set<String> a(dk1 dk1Var) {
        Set<String> setSingleton = dk1Var.d != null ? Collections.singleton("banner") : Collections.emptySet();
        Objects.requireNonNull(setSingleton, "Cannot return null from a non-@Nullable @Provides method");
        return setSingleton;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a.get());
    }
}
