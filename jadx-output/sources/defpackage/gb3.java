package defpackage;

import java.util.LinkedHashMap;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public final class gb3<K, V> {
    public final LinkedHashMap<K, mb3<V>> a;

    public gb3(int i, hb3 hb3Var) {
        this.a = new LinkedHashMap<>(c50.t4(i));
    }

    public final eb3<K, V> a() {
        return new eb3<>(this.a, null);
    }
}
