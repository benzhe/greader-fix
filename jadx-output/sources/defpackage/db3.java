package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class db3<T> implements xa3<T>, mb3<T> {
    public static final Object c = new Object();
    public volatile mb3<T> a;
    public volatile Object b = c;

    public db3(mb3<T> mb3Var) {
        this.a = mb3Var;
    }

    public static <P extends mb3<T>, T> mb3<T> a(P p) {
        return p instanceof db3 ? p : new db3(p);
    }

    public static <P extends mb3<T>, T> xa3<T> b(P p) {
        if (p instanceof xa3) {
            return (xa3) p;
        }
        Objects.requireNonNull(p);
        return new db3(p);
    }

    @Override // defpackage.xa3, defpackage.mb3
    public final T get() {
        T t = (T) this.b;
        Object obj = c;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.b;
                if (t == obj) {
                    t = this.a.get();
                    Object obj2 = this.b;
                    if ((obj2 != obj) && obj2 != t) {
                        String strValueOf = String.valueOf(obj2);
                        String strValueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 118 + strValueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(strValueOf);
                        sb.append(" & ");
                        sb.append(strValueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.b = t;
                    this.a = null;
                }
            }
        }
        return t;
    }
}
