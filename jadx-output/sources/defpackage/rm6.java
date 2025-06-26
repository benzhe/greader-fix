package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class rm6<T, V> extends HashMap<T, List<V>> {
    public void b(T t, V v) {
        List listSynchronizedList = (List) super.get(t);
        if (listSynchronizedList == null) {
            listSynchronizedList = Collections.synchronizedList(new LinkedList());
            put(t, listSynchronizedList);
        }
        listSynchronizedList.add(v);
    }

    public List<V> c(Object obj) {
        List<V> list = (List) super.get(obj);
        return list != null ? list : Collections.unmodifiableList(new LinkedList());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public List<V> remove(Object obj) {
        List<V> list = (List) super.remove(obj);
        return list != null ? list : Collections.unmodifiableList(new LinkedList());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        List list = (List) super.get(obj);
        return list != null ? list : Collections.unmodifiableList(new LinkedList());
    }
}
