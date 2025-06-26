package defpackage;

import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class x21 implements cb3<Set<sf1<va1>>> {
    public final mb3<q21> a;
    public final mb3<Executor> b;
    public final mb3<JSONObject> c;

    public x21(mb3<q21> mb3Var, mb3<Executor> mb3Var2, mb3<JSONObject> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        Set setEmptySet = this.c.get() == null ? Collections.emptySet() : Collections.singleton(new sf1(this.a.get(), this.b.get()));
        Objects.requireNonNull(setEmptySet, "Cannot return null from a non-@Nullable @Provides method");
        return setEmptySet;
    }
}
