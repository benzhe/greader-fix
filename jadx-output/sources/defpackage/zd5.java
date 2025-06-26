package defpackage;

/* loaded from: classes.dex */
public class zd5<E> extends wd5<E> {
    public static final wd5<Object> i = new zd5(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zd5(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // defpackage.wd5, defpackage.vd5
    public int d(Object[] objArr, int i2) {
        System.arraycopy(this.g, 0, objArr, i2, this.h);
        return i2 + this.h;
    }

    @Override // java.util.List
    public E get(int i2) {
        c50.w(i2, this.h);
        return (E) this.g[i2];
    }

    @Override // defpackage.vd5
    public Object[] h() {
        return this.g;
    }

    @Override // defpackage.vd5
    public int j() {
        return this.h;
    }

    @Override // defpackage.vd5
    public int l() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.h;
    }
}
