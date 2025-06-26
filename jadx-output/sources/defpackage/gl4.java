package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class gl4<K> implements Iterator<Map.Entry<K, Object>> {
    public Iterator<Map.Entry<K, Object>> e;

    public gl4(Iterator<Map.Entry<K, Object>> it) {
        this.e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.e.next();
        return next.getValue() instanceof bl4 ? new dl4(next, null) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.e.remove();
    }
}
