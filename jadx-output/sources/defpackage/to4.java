package defpackage;

/* loaded from: classes.dex */
public final class to4<E> extends po4<E> {
    public static final po4<Object> i = new to4(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public to4(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // defpackage.po4, defpackage.qo4
    public final int d(Object[] objArr, int i2) {
        System.arraycopy(this.g, 0, objArr, 0, this.h);
        return this.h + 0;
    }

    @Override // java.util.List
    public final E get(int i2) {
        c50.P0(i2, this.h);
        return (E) this.g[i2];
    }

    @Override // defpackage.qo4
    public final Object[] h() {
        return this.g;
    }

    @Override // defpackage.qo4
    public final int j() {
        return 0;
    }

    @Override // defpackage.qo4
    public final int l() {
        return this.h;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
