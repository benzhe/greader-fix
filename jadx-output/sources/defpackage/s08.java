package defpackage;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class s08 {
    public final Map<String, Object> a;

    public s08() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        im7.e(concurrentHashMap, "data");
        this.a = concurrentHashMap;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof s08) && im7.a(this.a, ((s08) obj).a);
        }
        return true;
    }

    public int hashCode() {
        Map<String, Object> map = this.a;
        if (map != null) {
            return map.hashCode();
        }
        return 0;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Properties(data=");
        sbZ.append(this.a);
        sbZ.append(")");
        return sbZ.toString();
    }

    public s08(Map map, int i) {
        ConcurrentHashMap concurrentHashMap = (i & 1) != 0 ? new ConcurrentHashMap() : null;
        im7.e(concurrentHashMap, "data");
        this.a = concurrentHashMap;
    }
}
