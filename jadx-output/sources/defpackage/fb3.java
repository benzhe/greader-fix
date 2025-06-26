package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class fb3<T> implements xa3<T>, cb3<T> {
    public static final fb3<Object> b = new fb3<>(null);
    public final T a;

    public fb3(T t) {
        this.a = t;
    }

    public static <T> cb3<T> a(T t) {
        Objects.requireNonNull(t, "instance cannot be null");
        return new fb3(t);
    }

    public static <T> cb3<T> b(T t) {
        return t == null ? b : new fb3(t);
    }

    @Override // defpackage.xa3, defpackage.mb3
    public final T get() {
        return this.a;
    }
}
