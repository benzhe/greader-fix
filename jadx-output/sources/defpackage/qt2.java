package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class qt2<E> extends it2<E> implements Set<E> {
    public static final /* synthetic */ int g = 0;
    public transient nt2<E> f;

    public static <E> qt2<E> r(int i, Object... objArr) {
        while (i != 0) {
            if (i == 1) {
                return new gu2(objArr[0]);
            }
            int iY = y(i);
            Object[] objArr2 = new Object[iY];
            int i2 = iY - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object obj = objArr[i5];
                c50.I3(obj, i5);
                int iHashCode = obj.hashCode();
                int iU3 = c50.U3(iHashCode);
                while (true) {
                    int i6 = iU3 & i2;
                    Object obj2 = objArr2[i6];
                    if (obj2 == null) {
                        objArr[i4] = obj;
                        objArr2[i6] = obj;
                        i3 += iHashCode;
                        i4++;
                        break;
                    }
                    if (!obj2.equals(obj)) {
                        iU3++;
                    }
                }
            }
            Arrays.fill(objArr, i4, i, (Object) null);
            if (i4 == 1) {
                return new gu2(objArr[0], i3);
            }
            if (y(i4) >= iY / 2) {
                int length = objArr.length;
                if (i4 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new fu2(objArr, i3, objArr2, i2, i4);
            }
            i = i4;
        }
        return fu2.m;
    }

    @SafeVarargs
    public static <E> qt2<E> s(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        c50.k(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return r(length, objArr);
    }

    public static int y(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            c50.k(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (iHighestOneBit * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> tt2<E> z(int i) {
        c50.g4(i, "expectedSize");
        return new tt2<>(i);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof qt2) && u() && ((qt2) obj).u() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return c50.b4(this);
    }

    @Override // defpackage.it2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // defpackage.it2
    public nt2<E> o() {
        nt2<E> nt2Var = this.f;
        if (nt2Var != null) {
            return nt2Var;
        }
        nt2<E> nt2VarV = v();
        this.f = nt2VarV;
        return nt2VarV;
    }

    public boolean u() {
        return false;
    }

    public nt2<E> v() {
        Object[] array = toArray();
        mu2<Object> mu2Var = nt2.f;
        return nt2.v(array, array.length);
    }
}
