package defpackage;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;

/* loaded from: classes.dex */
public class dg6<T> {
    public final Class<? super T> a;
    public final Type b;
    public final int c;

    public dg6() {
        Type genericSuperclass = dg6.class.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type typeA = he6.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.b = typeA;
        this.a = (Class<? super T>) he6.e(typeA);
        this.c = typeA.hashCode();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof dg6) && he6.c(this.b, ((dg6) obj).b);
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return he6.i(this.b);
    }

    public dg6(Type type) {
        Objects.requireNonNull(type);
        Type typeA = he6.a(type);
        this.b = typeA;
        this.a = (Class<? super T>) he6.e(typeA);
        this.c = typeA.hashCode();
    }
}
