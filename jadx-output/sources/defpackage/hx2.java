package defpackage;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class hx2<P> {
    public final ConcurrentMap<lx2, List<ix2<P>>> a = new ConcurrentHashMap();
    public ix2<P> b;
    public final Class<P> c;

    public hx2(Class<P> cls) {
        this.c = cls;
    }
}
