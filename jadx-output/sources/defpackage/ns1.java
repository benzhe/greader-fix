package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

@Deprecated
/* loaded from: classes.dex */
public final class ns1 {
    public final ss1 a;
    public final Executor b;
    public final Map<String, String> c;

    public ns1(ss1 ss1Var, Executor executor) {
        this.a = ss1Var;
        Objects.requireNonNull(ss1Var);
        this.c = new HashMap(ss1Var.a);
        this.b = executor;
    }

    public final ms1 a() {
        ms1 ms1Var = new ms1(this);
        ms1Var.a.putAll(this.c);
        return ms1Var;
    }
}
