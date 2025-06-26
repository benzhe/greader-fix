package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class pg5<T> implements s96<Set<T>> {
    public volatile Set<T> b = null;
    public volatile Set<s96<T>> a = Collections.newSetFromMap(new ConcurrentHashMap());

    public pg5(Collection<s96<T>> collection) {
        this.a.addAll(collection);
    }

    @Override // defpackage.s96
    public Object get() {
        if (this.b == null) {
            synchronized (this) {
                if (this.b == null) {
                    this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                    synchronized (this) {
                        Iterator<s96<T>> it = this.a.iterator();
                        while (it.hasNext()) {
                            this.b.add(it.next().get());
                        }
                        this.a = null;
                    }
                }
            }
        }
        return Collections.unmodifiableSet(this.b);
    }
}
