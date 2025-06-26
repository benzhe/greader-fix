package defpackage;

/* loaded from: classes.dex */
public final class ae5<E> extends xd5<E> {
    public static final ae5<Object> l = new ae5<>(new Object[0], 0, null, 0, 0);
    public final transient Object[] g;
    public final transient Object[] h;
    public final transient int i;
    public final transient int j;
    public final transient int k;

    public ae5(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.g = objArr;
        this.h = objArr2;
        this.i = i2;
        this.j = i;
        this.k = i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Object[] objArr = this.h;
        if (obj == null || objArr == null) {
            return false;
        }
        int iJ0 = c50.J0(obj.hashCode());
        while (true) {
            int i = iJ0 & this.i;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iJ0 = i + 1;
        }
    }

    @Override // defpackage.vd5
    public int d(Object[] objArr, int i) {
        System.arraycopy(this.g, 0, objArr, i, this.k);
        return i + this.k;
    }

    @Override // defpackage.vd5
    public Object[] h() {
        return this.g;
    }

    @Override // defpackage.xd5, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.j;
    }

    @Override // defpackage.vd5
    public int j() {
        return this.k;
    }

    @Override // defpackage.vd5
    public int l() {
        return 0;
    }

    @Override // defpackage.vd5
    public boolean n() {
        return false;
    }

    @Override // defpackage.vd5, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: o */
    public ce5<E> iterator() {
        wd5<E> wd5VarV = this.f;
        if (wd5VarV == null) {
            wd5VarV = v();
            this.f = wd5VarV;
        }
        return wd5VarV.listIterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.k;
    }

    @Override // defpackage.xd5
    public boolean u() {
        return true;
    }

    public wd5<E> v() {
        Object[] objArr = this.g;
        int i = this.k;
        ud5<Object> ud5Var = wd5.f;
        return i == 0 ? (wd5<E>) zd5.i : new zd5(objArr, i);
    }
}
