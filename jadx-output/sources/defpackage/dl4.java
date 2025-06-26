package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class dl4<K> implements Map.Entry<K, Object> {
    public Map.Entry<K, bl4> e;

    public dl4(Map.Entry entry, el4 el4Var) {
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
        int i = bl4.c;
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof am4)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        bl4 value = this.e.getValue();
        am4 am4Var = value.a;
        value.b = null;
        value.a = (am4) obj;
        return am4Var;
    }
}
