package defpackage;

import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class q18 {
    public static final Map<hn7<?>, String> a = new ConcurrentHashMap();

    public static final String a(hn7<?> hn7Var) {
        im7.e(hn7Var, "$this$getFullName");
        Map<hn7<?>, String> map = a;
        String str = map.get(hn7Var);
        if (str != null) {
            return str;
        }
        im7.e(hn7Var, "$this$saveCache");
        im7.e(hn7Var, "$this$java");
        Class<?> clsB = ((dm7) hn7Var).b();
        Objects.requireNonNull(clsB, "null cannot be cast to non-null type java.lang.Class<T>");
        String name = clsB.getName();
        im7.d(name, InetAddressKeys.KEY_NAME);
        map.put(hn7Var, name);
        return name;
    }
}
