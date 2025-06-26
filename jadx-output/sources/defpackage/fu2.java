package defpackage;

/* loaded from: classes.dex */
public final class fu2<E> extends qt2<E> {
    public static final fu2<Object> m = new fu2<>(new Object[0], 0, null, 0, 0);
    public final transient Object[] h;
    public final transient Object[] i;
    public final transient int j;
    public final transient int k;
    public final transient int l;

    public fu2(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.h = objArr;
        this.i = objArr2;
        this.j = i2;
        this.k = i;
        this.l = i3;
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object[] objArr = this.i;
        if (obj == null || objArr == null) {
            return false;
        }
        int iU3 = c50.U3(obj.hashCode());
        while (true) {
            int i = iU3 & this.j;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iU3 = i + 1;
        }
    }

    @Override // defpackage.it2
    public final int d(Object[] objArr, int i) {
        System.arraycopy(this.h, 0, objArr, i, this.l);
        return i + this.l;
    }

    @Override // defpackage.qt2, defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: h */
    public final hu2<E> iterator() {
        return (hu2) o().iterator();
    }

    @Override // defpackage.qt2, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.k;
    }

    @Override // defpackage.it2
    public final Object[] j() {
        return this.h;
    }

    @Override // defpackage.it2
    public final int l() {
        return 0;
    }

    @Override // defpackage.it2
    public final int n() {
        return this.l;
    }

    @Override // defpackage.it2
    public final boolean p() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.l;
    }

    @Override // defpackage.qt2
    public final boolean u() {
        return true;
    }

    @Override // defpackage.qt2
    public final nt2<E> v() {
        return nt2.v(this.h, this.l);
    }
}
