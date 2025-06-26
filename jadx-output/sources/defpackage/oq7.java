package defpackage;

import java.lang.reflect.Constructor;
import java.util.Comparator;

/* loaded from: classes2.dex */
public final class oq7<T> implements Comparator<T> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return n56.y(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
    }
}
