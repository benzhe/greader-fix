package defpackage;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public final class ro4<E> extends po4<E> {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ po4 i;

    public ro4(po4 po4Var, int i, int i2) {
        this.i = po4Var;
        this.g = i;
        this.h = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        c50.P0(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // defpackage.qo4
    public final Object[] h() {
        return this.i.h();
    }

    @Override // defpackage.qo4
    public final int j() {
        return this.i.j() + this.g;
    }

    @Override // defpackage.qo4
    public final int l() {
        return this.i.j() + this.g + this.h;
    }

    @Override // defpackage.po4, java.util.List
    /* renamed from: n */
    public final po4<E> subList(int i, int i2) {
        c50.W1(i, i2, this.h);
        po4 po4Var = this.i;
        int i3 = this.g;
        return (po4) po4Var.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
