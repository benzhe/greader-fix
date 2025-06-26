package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class h73<K> implements Map.Entry<K, Object> {
    public Map.Entry<K, f73> e;

    public h73(Map.Entry entry, i73 i73Var) {
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
        int i = f73.c;
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof e83)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        f73 value = this.e.getValue();
        e83 e83Var = value.a;
        value.b = null;
        value.a = (e83) obj;
        return e83Var;
    }
}
