package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* loaded from: classes.dex */
public class tg5<T> implements s96<T> {
    public static final /* synthetic */ int c = 0;
    public r96<T> a;
    public volatile s96<T> b;

    public tg5(r96<T> r96Var, s96<T> s96Var) {
        this.a = r96Var;
        this.b = s96Var;
    }

    @Override // defpackage.s96
    public T get() {
        return this.b.get();
    }
}
