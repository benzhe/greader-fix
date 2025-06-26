package defpackage;

/* loaded from: classes.dex */
public final class kb3<T> implements mb3<T> {
    public static final Object c = new Object();
    public volatile mb3<T> a;
    public volatile Object b = c;

    public kb3(mb3<T> mb3Var) {
        this.a = mb3Var;
    }

    public static <P extends mb3<T>, T> mb3<T> a(P p) {
        return ((p instanceof kb3) || (p instanceof db3)) ? p : new kb3(p);
    }

    @Override // defpackage.mb3
    public final T get() {
        T t = (T) this.b;
        if (t != c) {
            return t;
        }
        mb3<T> mb3Var = this.a;
        if (mb3Var == null) {
            return (T) this.b;
        }
        T t2 = mb3Var.get();
        this.b = t2;
        this.a = null;
        return t2;
    }
}
