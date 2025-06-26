package defpackage;

import defpackage.sg6;
import defpackage.ya7;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g86 implements Object<sg6.a> {
    public final e86 a;
    public final jj7<y27> b;
    public final jj7<i47> c;

    public g86(e86 e86Var, jj7<y27> jj7Var, jj7<i47> jj7Var2) {
        this.a = e86Var;
        this.b = jj7Var;
        this.c = jj7Var2;
    }

    public Object get() {
        e86 e86Var = this.a;
        y27 y27Var = this.b.get();
        i47 i47Var = this.c.get();
        Objects.requireNonNull(e86Var);
        return new sg6.a(d37.a(y27Var, Arrays.asList(new za7(i47Var))), x27.k.e(ya7.b, ya7.b.BLOCKING), null);
    }
}
