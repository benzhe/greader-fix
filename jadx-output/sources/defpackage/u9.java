package defpackage;

/* loaded from: classes.dex */
public class u9<T> extends t9<T> {
    public final Object c;

    public u9(int i) {
        super(i);
        this.c = new Object();
    }

    @Override // defpackage.t9
    public T a() {
        T t;
        synchronized (this.c) {
            t = (T) super.a();
        }
        return t;
    }

    @Override // defpackage.t9
    public boolean b(T t) {
        boolean zB;
        synchronized (this.c) {
            zB = super.b(t);
        }
        return zB;
    }
}
