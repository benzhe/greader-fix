package defpackage;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class jn5<K, V> implements Iterable<Map.Entry<K, V>> {

    public static class a {
        public static final /* synthetic */ int a = 0;

        /* renamed from: jn5$a$a, reason: collision with other inner class name */
        public interface InterfaceC0020a<C, D> {
        }
    }

    public abstract boolean d(K k);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jn5)) {
            return false;
        }
        jn5 jn5Var = (jn5) obj;
        if (!j().equals(jn5Var.j()) || size() != jn5Var.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = jn5Var.iterator();
        while (it.hasNext()) {
            if (!it.next().equals(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract V h(K k);

    public int hashCode() {
        int iHashCode = j().hashCode();
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + it.next().hashCode();
        }
        return iHashCode;
    }

    public abstract boolean isEmpty();

    @Override // java.lang.Iterable
    public abstract Iterator<Map.Entry<K, V>> iterator();

    public abstract Comparator<K> j();

    public abstract K l();

    public abstract K n();

    public abstract jn5<K, V> o(K k, V v);

    public abstract Iterator<Map.Entry<K, V>> p(K k);

    public abstract jn5<K, V> r(K k);

    public abstract int size();

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("{");
        Iterator<Map.Entry<K, V>> it = iterator();
        boolean z = true;
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append("(");
            sb.append(next.getKey());
            sb.append("=>");
            sb.append(next.getValue());
            sb.append(")");
        }
        sb.append("};");
        return sb.toString();
    }
}
