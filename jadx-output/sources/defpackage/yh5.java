package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public class yh5<T> implements w35<Void, T> {
    public final /* synthetic */ Callable a;

    public yh5(wh5 wh5Var, Callable callable) {
        this.a = callable;
    }

    @Override // defpackage.w35
    public T a(e45<Void> e45Var) throws Exception {
        return (T) this.a.call();
    }
}
