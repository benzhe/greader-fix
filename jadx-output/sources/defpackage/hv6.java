package defpackage;

import defpackage.jx6;
import java.util.Comparator;

/* loaded from: classes2.dex */
public final class hv6<T> implements Comparator<T> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return n56.y(((jx6.a) t).a.getDisplayName(), ((jx6.a) t2).a.getDisplayName());
    }
}
