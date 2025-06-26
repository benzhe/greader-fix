package defpackage;

import java.util.ListIterator;

/* JADX INFO: Add missing generic type declarations: [T, F] */
/* loaded from: classes.dex */
public final class yt2<F, T> extends iu2<F, T> {
    public final /* synthetic */ wt2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yt2(wt2 wt2Var, ListIterator listIterator) {
        super(listIterator);
        this.f = wt2Var;
    }

    @Override // defpackage.iu2
    public final T a(F f) {
        return this.f.f.apply(f);
    }
}
