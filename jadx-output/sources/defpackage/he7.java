package defpackage;

import java.util.Objects;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* loaded from: classes2.dex */
public abstract class he7<T, R> extends mb7<R> {
    public final mb7<T> f;

    public he7(mb7<T> mb7Var) {
        Objects.requireNonNull(mb7Var, "source is null");
        this.f = mb7Var;
    }
}
