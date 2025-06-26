package defpackage;

import java.util.ListIterator;

/* JADX INFO: Add missing generic type declarations: [T, F] */
/* loaded from: classes.dex */
public final class xt2<F, T> extends iu2<F, T> {
    public final /* synthetic */ ut2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xt2(ut2 ut2Var, ListIterator listIterator) {
        super(listIterator);
        this.f = ut2Var;
    }

    @Override // defpackage.iu2
    public final T a(F f) {
        return this.f.f.apply(f);
    }
}
