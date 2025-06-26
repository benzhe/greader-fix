package defpackage;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
public final class wm4<K, V> implements Comparable<wm4>, Map.Entry<K, V> {

    /* JADX INFO: Incorrect field signature: TK; */
    public final Comparable e;
    public V f;
    public final /* synthetic */ pm4 g;

    public wm4(pm4 pm4Var, Map.Entry<K, V> entry) {
        Comparable comparable = (Comparable) entry.getKey();
        V value = entry.getValue();
        this.g = pm4Var;
        this.e = comparable;
        this.f = value;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(wm4 wm4Var) {
        return this.e.compareTo(wm4Var.e);
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
            V v = this.f;
            Object value = entry.getValue();
            if (v == null ? value == null : v.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.e;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.e;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f;
        return iHashCode ^ (v != null ? v.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        pm4 pm4Var = this.g;
        int i = pm4.k;
        pm4Var.h();
        V v2 = this.f;
        this.f = v;
        return v2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.e);
        String strValueOf2 = String.valueOf(this.f);
        return jo.c(strValueOf2.length() + strValueOf.length() + 1, strValueOf, "=", strValueOf2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public wm4(pm4 pm4Var, K k, V v) {
        this.g = pm4Var;
        this.e = k;
        this.f = v;
    }
}
