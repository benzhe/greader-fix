package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class rf2 implements cb3<String> {
    public final of2 a;

    public rf2(of2 of2Var) {
        this.a = of2Var;
    }

    public static String a(of2 of2Var) {
        String str = of2Var.a.h;
        Objects.requireNonNull(str, "Cannot return null from a non-@Nullable @Provides method");
        return str;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return a(this.a);
    }
}
