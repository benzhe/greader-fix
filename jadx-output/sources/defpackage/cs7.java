package defpackage;

import java.util.Comparator;

/* loaded from: classes2.dex */
public final class cs7<T> implements Comparator<T> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return n56.y(Integer.valueOf(((Number) ((rj7) t).f).intValue()), Integer.valueOf(((Number) ((rj7) t2).f).intValue()));
    }
}
