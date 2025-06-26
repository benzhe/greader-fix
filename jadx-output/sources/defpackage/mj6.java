package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class mj6 extends nj6 {

    public static class b<K> implements Map.Entry<K, Object> {
        public Map.Entry<K, mj6> e;

        public b(Map.Entry entry, a aVar) {
            this.e = entry;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.e.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            mj6 value = this.e.getValue();
            if (value == null) {
                return null;
            }
            return value.c();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (!(obj instanceof ak6)) {
                throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
            }
            mj6 value = this.e.getValue();
            ak6 ak6Var = value.a;
            value.b = null;
            value.a = (ak6) obj;
            return ak6Var;
        }
    }

    public static class c<K> implements Iterator<Map.Entry<K, Object>> {
        public Iterator<Map.Entry<K, Object>> e;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.e = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            Map.Entry<K, Object> next = this.e.next();
            return next.getValue() instanceof mj6 ? new b(next, null) : next;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.e.remove();
        }
    }

    public ak6 c() {
        return a(null);
    }

    @Override // defpackage.nj6
    public boolean equals(Object obj) {
        return c().equals(obj);
    }

    @Override // defpackage.nj6
    public int hashCode() {
        return c().hashCode();
    }

    public String toString() {
        return c().toString();
    }
}
