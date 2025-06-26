package defpackage;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public final class ot2<E> extends nt2<E> {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ nt2 i;

    public ot2(nt2 nt2Var, int i, int i2) {
        this.i = nt2Var;
        this.g = i;
        this.h = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        c50.F4(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // defpackage.it2
    public final Object[] j() {
        return this.i.j();
    }

    @Override // defpackage.it2
    public final int l() {
        return this.i.l() + this.g;
    }

    @Override // defpackage.it2
    public final int n() {
        return this.i.l() + this.g + this.h;
    }

    @Override // defpackage.it2
    public final boolean p() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }

    @Override // defpackage.nt2, java.util.List
    /* renamed from: z */
    public final nt2<E> subList(int i, int i2) {
        c50.Y3(i, i2, this.h);
        nt2 nt2Var = this.i;
        int i3 = this.g;
        return (nt2) nt2Var.subList(i + i3, i2 + i3);
    }
}
