package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class jb3<T> implements cb3<Set<T>> {
    public final List<mb3<T>> a;
    public final List<mb3<Collection<T>>> b;

    static {
        fb3.a(Collections.emptySet());
    }

    public jb3(List list, List list2, ib3 ib3Var) {
        this.a = list;
        this.b = list2;
    }

    public static <T> lb3<T> a(int i, int i2) {
        return new lb3<>(i, i2, null);
    }

    @Override // defpackage.mb3
    public final Object get() {
        int size = this.a.size();
        ArrayList arrayList = new ArrayList(this.b.size());
        int size2 = this.b.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.b.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet hashSet = new HashSet(c50.t4(size));
        int size3 = this.a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            T t = this.a.get(i2).get();
            Objects.requireNonNull(t);
            hashSet.add(t);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                Objects.requireNonNull(obj);
                hashSet.add(obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
