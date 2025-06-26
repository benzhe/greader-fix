package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class sf2 implements cb3<String> {
    public final of2 a;

    public sf2(of2 of2Var) {
        this.a = of2Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        String str = this.a.a.l;
        Objects.requireNonNull(str, "Cannot return null from a non-@Nullable @Provides method");
        return str;
    }
}
