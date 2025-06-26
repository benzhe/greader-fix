package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class lb3<T> {
    public final List<mb3<T>> a;
    public final List<mb3<Collection<T>>> b;

    public lb3(int i, int i2, ib3 ib3Var) {
        this.a = i == 0 ? Collections.emptyList() : new ArrayList(i);
        this.b = i2 == 0 ? Collections.emptyList() : new ArrayList<>(i2);
    }

    public final jb3<T> a() {
        return new jb3<>(this.a, this.b, null);
    }
}
