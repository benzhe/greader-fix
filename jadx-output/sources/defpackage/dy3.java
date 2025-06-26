package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class dy3<K> implements Map.Entry<K, Object> {
    public Map.Entry<K, by3> e;

    public dy3(Map.Entry entry, cy3 cy3Var) {
        this.e = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.e.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.e.getValue() == null) {
            return null;
        }
        int i = by3.c;
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof xy3)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        by3 value = this.e.getValue();
        xy3 xy3Var = value.a;
        value.b = null;
        value.a = (xy3) obj;
        return xy3Var;
    }
}
