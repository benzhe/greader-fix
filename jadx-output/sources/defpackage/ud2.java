package defpackage;

import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ud2<T> implements cb3<pd2<T>> {
    public final mb3<Executor> a;
    public final mb3<Set<qd2<? extends nd2<T>>>> b;

    public ud2(mb3<Executor> mb3Var, mb3<Set<qd2<? extends nd2<T>>>> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new pd2(this.a.get(), this.b.get());
    }
}
