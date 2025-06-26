package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class k86 implements Object<s56> {
    public final i86 a;

    public k86(i86 i86Var) {
        this.a = i86Var;
    }

    public Object get() {
        s56 s56Var = this.a.a;
        Objects.requireNonNull(s56Var, "Cannot return null from a non-@Nullable @Provides method");
        return s56Var;
    }
}
