package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* loaded from: classes.dex */
public final class ys<T> implements jj7<T> {
    public static final Object c = new Object();
    public volatile jj7<T> a;
    public volatile Object b = c;

    public ys(jj7<T> jj7Var) {
        this.a = jj7Var;
    }

    public static Object a(Object obj, Object obj2) {
        if (!(obj != c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // defpackage.jj7
    public T get() {
        T t = (T) this.b;
        Object obj = c;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.b;
                if (t == obj) {
                    t = this.a.get();
                    a(this.b, t);
                    this.b = t;
                    this.a = null;
                }
            }
        }
        return t;
    }
}
