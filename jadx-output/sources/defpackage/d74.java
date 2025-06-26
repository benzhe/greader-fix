package defpackage;

/* loaded from: classes.dex */
public final class d74<T> extends e74<T> {
    public static final d74<Object> e = new d74<>();

    @Override // defpackage.e74
    public final boolean a() {
        return false;
    }

    @Override // defpackage.e74
    public final T b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
