package defpackage;

/* loaded from: classes.dex */
public final class lg4<E> extends jg4<E> {
    public static final jg4<Object> i = new lg4(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public lg4(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // defpackage.jg4, defpackage.ig4
    public final int d(Object[] objArr, int i2) {
        System.arraycopy(this.g, 0, objArr, 0, this.h);
        return this.h + 0;
    }

    @Override // java.util.List
    public final E get(int i2) {
        hh4.a(i2, this.h);
        return (E) this.g[i2];
    }

    @Override // defpackage.ig4
    public final Object[] h() {
        return this.g;
    }

    @Override // defpackage.ig4
    public final int j() {
        return 0;
    }

    @Override // defpackage.ig4
    public final int l() {
        return this.h;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
