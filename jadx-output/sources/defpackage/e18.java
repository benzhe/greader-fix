package defpackage;

/* loaded from: classes2.dex */
public final class e18<T> extends d18<T> {
    public T c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e18(k08 k08Var, p08<T> p08Var) {
        super(k08Var, p08Var);
        im7.e(k08Var, "koin");
        im7.e(p08Var, "beanDefinition");
    }

    @Override // defpackage.d18
    public T a(c18 c18Var) {
        im7.e(c18Var, "context");
        T t = this.c;
        return t == null ? (T) super.a(c18Var) : t;
    }

    @Override // defpackage.d18
    public T b(c18 c18Var) {
        im7.e(c18Var, "context");
        synchronized (this) {
            if (!(this.c != null)) {
                this.c = a(c18Var);
            }
        }
        T t = this.c;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Single instance created couldn't return value".toString());
    }
}
