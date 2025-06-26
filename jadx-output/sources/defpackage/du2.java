package defpackage;

/* loaded from: classes.dex */
public final class du2 extends nt2<Object> {
    public final transient Object[] g;
    public final transient int h;
    public final transient int i;

    public du2(Object[] objArr, int i, int i2) {
        this.g = objArr;
        this.h = i;
        this.i = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        c50.F4(i, this.i);
        return this.g[(i * 2) + this.h];
    }

    @Override // defpackage.it2
    public final boolean p() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.i;
    }
}
