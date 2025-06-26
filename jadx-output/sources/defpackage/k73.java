package defpackage;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class k73<K> implements Iterator<Map.Entry<K, Object>> {
    public Iterator<Map.Entry<K, Object>> e;

    public k73(Iterator<Map.Entry<K, Object>> it) {
        this.e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.e.next();
        return next.getValue() instanceof f73 ? new h73(next, null) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.e.remove();
    }
}
