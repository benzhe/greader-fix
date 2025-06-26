package defpackage;

import java.util.HashSet;

/* loaded from: classes2.dex */
public abstract class b77<T> {
    public final HashSet<T> a = new HashSet<>();

    public abstract void a();

    public abstract void b();

    public final void c(T t, boolean z) {
        int size = this.a.size();
        if (z) {
            this.a.add(t);
            if (size == 0) {
                a();
                return;
            }
            return;
        }
        if (this.a.remove(t) && size == 1) {
            b();
        }
    }
}
