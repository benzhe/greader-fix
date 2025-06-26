package defpackage;

/* loaded from: classes.dex */
public final class f74<T> extends e74<T> {
    public final T e;

    public f74(T t) {
        this.e = t;
    }

    @Override // defpackage.e74
    public final boolean a() {
        return true;
    }

    @Override // defpackage.e74
    public final T b() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f74) {
            return this.e.equals(((f74) obj).e);
        }
        return false;
    }

    public final int hashCode() {
        return this.e.hashCode() + 1502476572;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.e);
        return jo.t(new StringBuilder(strValueOf.length() + 13), "Optional.of(", strValueOf, ")");
    }
}
