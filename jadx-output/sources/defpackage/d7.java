package defpackage;

import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class d7<T> {
    public final t9<ArrayList<T>> a = new t9<>(10);
    public final m4<T, ArrayList<T>> b = new m4<>();
    public final ArrayList<T> c = new ArrayList<>();
    public final HashSet<T> d = new HashSet<>();

    public void a(T t) {
        if (this.b.e(t) >= 0) {
            return;
        }
        this.b.put(t, null);
    }

    public final void b(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> orDefault = this.b.getOrDefault(t, null);
        if (orDefault != null) {
            int size = orDefault.size();
            for (int i = 0; i < size; i++) {
                b(orDefault.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }
}
