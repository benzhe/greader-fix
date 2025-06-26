package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class ah6 {
    public final Map<Class<? extends Object>, s96<? extends Object<? extends Object>>> a = new HashMap();

    public static class a {
    }

    public ah6(Set<a> set) {
        for (a aVar : set) {
            Map<Class<? extends Object>, s96<? extends Object<? extends Object>>> map = this.a;
            Objects.requireNonNull(aVar);
            map.put(null, null);
        }
    }
}
