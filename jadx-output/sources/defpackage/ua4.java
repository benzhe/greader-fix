package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class ua4 implements Map.Entry, Comparable<ua4> {
    public final Comparable e;
    public Object f;
    public final /* synthetic */ xa4 g;

    public ua4(xa4 xa4Var, Comparable comparable, Object obj) {
        this.g = xa4Var;
        this.e = comparable;
        this.f = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ua4 ua4Var) {
        return this.e.compareTo(ua4Var.e);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Comparable comparable = this.e;
        Object key = entry.getKey();
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.e;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.e;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        xa4 xa4Var = this.g;
        int i = xa4.k;
        xa4Var.g();
        Object obj2 = this.f;
        this.f = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.e);
        String strValueOf2 = String.valueOf(this.f);
        return jo.t(new StringBuilder(strValueOf.length() + 1 + strValueOf2.length()), strValueOf, "=", strValueOf2);
    }
}
