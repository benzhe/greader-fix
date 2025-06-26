package defpackage;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class eb3<K, V> extends za3<K, V, V> {
    static {
        fb3.a(Collections.emptyMap());
    }

    public eb3(Map map, hb3 hb3Var) {
        super(map);
    }

    public static <K, V> gb3<K, V> a(int i) {
        return new gb3<>(i, null);
    }

    @Override // defpackage.mb3
    public final Object get() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(c50.t4(this.a.size()));
        for (Map.Entry<K, mb3<V>> entry : this.a.entrySet()) {
            linkedHashMap.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
