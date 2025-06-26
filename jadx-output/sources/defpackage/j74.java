package defpackage;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class j74<T> implements Serializable, g74 {
    public final T e;

    public j74(T t) {
        this.e = t;
    }

    @Override // defpackage.g74
    public final T a() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j74)) {
            return false;
        }
        T t = this.e;
        T t2 = ((j74) obj).e;
        return t == t2 || t.equals(t2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.e});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.e);
        return jo.t(new StringBuilder(strValueOf.length() + 22), "Suppliers.ofInstance(", strValueOf, ")");
    }
}
