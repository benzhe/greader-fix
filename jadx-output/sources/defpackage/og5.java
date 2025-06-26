package defpackage;

/* loaded from: classes.dex */
public class og5<T> implements s96<T> {
    public static final Object c = new Object();
    public volatile Object a = c;
    public volatile s96<T> b;

    public og5(s96<T> s96Var) {
        this.b = s96Var;
    }

    @Override // defpackage.s96
    public T get() {
        T t = (T) this.a;
        Object obj = c;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.a;
                if (t == obj) {
                    t = this.b.get();
                    this.a = t;
                    this.b = null;
                }
            }
        }
        return t;
    }
}
