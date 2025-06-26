package defpackage;

/* loaded from: classes2.dex */
public interface rk7 {

    public interface a extends rk7 {
        b<?> getKey();
    }

    public interface b<E extends a> {
    }

    <E extends a> E c(b<E> bVar);

    <R> R m(R r, tl7<? super R, ? super a, ? extends R> tl7Var);
}
