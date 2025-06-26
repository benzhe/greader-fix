package defpackage;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class za3<K, V, V2> implements cb3<Map<K, V2>> {
    public final Map<K, mb3<V>> a;

    public za3(Map<K, mb3<V>> map) {
        this.a = Collections.unmodifiableMap(map);
    }
}
