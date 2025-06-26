package defpackage;

/* loaded from: classes.dex */
public final class au2<E> extends nt2<E> {
    public static final nt2<Object> i = new au2(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public au2(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // defpackage.nt2, defpackage.it2
    public final int d(Object[] objArr, int i2) {
        System.arraycopy(this.g, 0, objArr, i2, this.h);
        return i2 + this.h;
    }

    @Override // java.util.List
    public final E get(int i2) {
        c50.F4(i2, this.h);
        return (E) this.g[i2];
    }

    @Override // defpackage.it2
    public final Object[] j() {
        return this.g;
    }

    @Override // defpackage.it2
    public final int l() {
        return 0;
    }

    @Override // defpackage.it2
    public final int n() {
        return this.h;
    }

    @Override // defpackage.it2
    public final boolean p() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
