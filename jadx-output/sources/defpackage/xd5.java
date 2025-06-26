package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes.dex */
public abstract class xd5<E> extends vd5<E> implements Set<E> {
    public transient wd5<E> f;

    public static int p(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            c50.t(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (iHighestOneBit * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> xd5<E> r(int i, Object... objArr) {
        if (i == 0) {
            return ae5.l;
        }
        if (i == 1) {
            return new be5(objArr[0]);
        }
        int iP = p(i);
        Object[] objArr2 = new Object[iP];
        int i2 = iP - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj = objArr[i5];
            c50.x(obj, i5);
            int iHashCode = obj.hashCode();
            int iJ0 = c50.J0(iHashCode);
            while (true) {
                int i6 = iJ0 & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = obj;
                    objArr2[i6] = obj;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj2.equals(obj)) {
                    break;
                }
                iJ0++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            return new be5(objArr[0], i3);
        }
        if (p(i4) < iP / 2) {
            return r(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new ae5(objArr, i3, objArr2, i2, i4);
    }

    public static <E> xd5<E> s(Collection<? extends E> collection) {
        if ((collection instanceof xd5) && !(collection instanceof SortedSet)) {
            xd5<E> xd5Var = (xd5) collection;
            if (!xd5Var.n()) {
                return xd5Var;
            }
        }
        Object[] array = collection.toArray();
        return r(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof xd5) && u() && ((xd5) obj).u() && hashCode() != obj.hashCode()) {
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
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            E next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public boolean u() {
        return false;
    }
}
