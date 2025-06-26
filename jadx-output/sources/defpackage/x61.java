package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class x61 implements cb3<String> {
    public final v61 a;

    public x61(v61 v61Var) {
        this.a = v61Var;
    }

    public static String a(v61 v61Var) {
        String str = v61Var.c;
        Objects.requireNonNull(str, "Cannot return null from a non-@Nullable @Provides method");
        return str;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
