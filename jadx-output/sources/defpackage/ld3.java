package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ld3<T> {
    public final Map<String, AtomicReference<T>> a = new HashMap();

    public final AtomicReference<T> a(String str) {
        synchronized (this) {
            if (!this.a.containsKey(str)) {
                this.a.put(str, new AtomicReference<>());
            }
        }
        return this.a.get(str);
    }
}
