package defpackage;

/* loaded from: classes.dex */
public final class ab3<T> implements cb3<T> {
    public mb3<T> a;

    public static <T> void a(mb3<T> mb3Var, mb3<T> mb3Var2) {
        ab3 ab3Var = (ab3) mb3Var;
        if (ab3Var.a != null) {
            throw new IllegalStateException();
        }
        ab3Var.a = mb3Var2;
    }

    @Override // defpackage.mb3
    public final T get() {
        mb3<T> mb3Var = this.a;
        if (mb3Var != null) {
            return mb3Var.get();
        }
        throw new IllegalStateException();
    }
}
