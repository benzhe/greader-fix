package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class p91 implements cb3<String> {
    public final n91 a;
    public final mb3<t71> b;

    public p91(n91 n91Var, mb3<t71> mb3Var) {
        this.a = n91Var;
        this.b = mb3Var;
    }

    public static String a(t71 t71Var) {
        String str = t71Var.f.e;
        Objects.requireNonNull(str, "Cannot return null from a non-@Nullable @Provides method");
        return str;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.b.get());
    }
}
