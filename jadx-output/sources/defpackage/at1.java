package defpackage;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class at1 {
    public static <T> Set<sf1<T>> a(T t, Executor executor) {
        return q60.a.a().booleanValue() ? Collections.singleton(new sf1(t, executor)) : Collections.emptySet();
    }
}
