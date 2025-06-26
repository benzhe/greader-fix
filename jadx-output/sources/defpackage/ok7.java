package defpackage;

import defpackage.rk7;
import rk7.a;

/* loaded from: classes2.dex */
public abstract class ok7<B extends rk7.a, E extends B> implements rk7.b<E> {
    public final rk7.b<?> a;
    public final pl7<rk7.a, E> b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [rk7$b<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, pl7<? super rk7$a, ? extends E extends B>, pl7<rk7$a, E extends B>] */
    public ok7(rk7.b<B> bVar, pl7<? super rk7.a, ? extends E> pl7Var) {
        im7.e(bVar, "baseKey");
        im7.e(pl7Var, "safeCast");
        this.b = pl7Var;
        this.a = bVar instanceof ok7 ? (rk7.b<B>) ((ok7) bVar).a : bVar;
    }
}
