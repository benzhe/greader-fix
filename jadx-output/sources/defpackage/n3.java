package defpackage;

import defpackage.o3;
import java.util.HashMap;

/* loaded from: classes.dex */
public class n3<K, V> extends o3<K, V> {
    public HashMap<K, o3.c<K, V>> i = new HashMap<>();

    public boolean contains(K k) {
        return this.i.containsKey(k);
    }

    @Override // defpackage.o3
    public o3.c<K, V> d(K k) {
        return this.i.get(k);
    }

    @Override // defpackage.o3
    public V l(K k, V v) {
        o3.c<K, V> cVar = this.i.get(k);
        if (cVar != null) {
            return cVar.f;
        }
        this.i.put(k, j(k, v));
        return null;
    }

    @Override // defpackage.o3
    public V n(K k) {
        V v = (V) super.n(k);
        this.i.remove(k);
        return v;
    }
}
