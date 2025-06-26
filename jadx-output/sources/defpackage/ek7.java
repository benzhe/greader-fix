package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes2.dex */
public class ek7 extends dk7 {
    public static final <T> List<T> a(T[] tArr) {
        im7.e(tArr, "$this$asList");
        List<T> listAsList = Arrays.asList(tArr);
        im7.d(listAsList, "ArraysUtilJVM.asList(this)");
        return listAsList;
    }

    public static final byte[] b(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        im7.e(bArr, "$this$copyInto");
        im7.e(bArr2, "destination");
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
        return bArr2;
    }

    public static /* synthetic */ byte[] c(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = bArr.length;
        }
        b(bArr, bArr2, i, i2, i3);
        return bArr2;
    }

    public static Object[] d(Object[] objArr, Object[] objArr2, int i, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = objArr.length;
        }
        im7.e(objArr, "$this$copyInto");
        im7.e(objArr2, "destination");
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
        return objArr2;
    }

    public static final byte[] e(byte[] bArr, int i, int i2) {
        im7.e(bArr, "$this$copyOfRangeImpl");
        int length = bArr.length;
        if (i2 <= length) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2);
            im7.d(bArrCopyOfRange, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
            return bArrCopyOfRange;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is greater than size (" + length + ").");
    }

    public static final <T> T f(List<? extends T> list) {
        im7.e(list, "$this$first");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static final <T> T g(List<? extends T> list) {
        im7.e(list, "$this$firstOrNull");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> int h(List<? extends T> list) {
        im7.e(list, "$this$lastIndex");
        return list.size() - 1;
    }

    public static final <T> T i(List<? extends T> list, int i) {
        im7.e(list, "$this$getOrNull");
        if (i < 0 || i > h(list)) {
            return null;
        }
        return list.get(i);
    }

    public static final <T, A extends Appendable> A j(Iterable<? extends T> iterable, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, pl7<? super T, ? extends CharSequence> pl7Var) throws IOException {
        im7.e(iterable, "$this$joinTo");
        im7.e(a, "buffer");
        im7.e(charSequence, "separator");
        im7.e(charSequence2, "prefix");
        im7.e(charSequence3, "postfix");
        im7.e(charSequence4, "truncated");
        a.append(charSequence2);
        int i2 = 0;
        for (T t : iterable) {
            i2++;
            if (i2 > 1) {
                a.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            n56.k(a, t, pl7Var);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    public static String k(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, pl7 pl7Var, int i2) throws IOException {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = charSequence;
        CharSequence charSequence6 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence7 = (i2 & 4) != 0 ? "" : charSequence3;
        int i3 = (i2 & 8) != 0 ? -1 : i;
        CharSequence charSequence8 = (i2 & 16) != 0 ? "..." : null;
        pl7 pl7Var2 = (i2 & 32) != 0 ? null : pl7Var;
        im7.e(iterable, "$this$joinToString");
        im7.e(charSequence5, "separator");
        im7.e(charSequence6, "prefix");
        im7.e(charSequence7, "postfix");
        im7.e(charSequence8, "truncated");
        StringBuilder sb = new StringBuilder();
        j(iterable, sb, charSequence5, charSequence6, charSequence7, i3, charSequence8, pl7Var2);
        String string = sb.toString();
        im7.d(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static final <T> List<T> l(T... tArr) {
        im7.e(tArr, "elements");
        return tArr.length > 0 ? a(tArr) : hk7.e;
    }

    public static final <T> List<T> m(T... tArr) {
        im7.e(tArr, "elements");
        im7.e(tArr, "$this$filterNotNull");
        ArrayList arrayList = new ArrayList();
        im7.e(tArr, "$this$filterNotNullTo");
        im7.e(arrayList, "destination");
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> n(List<? extends T> list) {
        im7.e(list, "$this$optimizeReadOnlyList");
        int size = list.size();
        return size != 0 ? size != 1 ? list : n56.r1(list.get(0)) : hk7.e;
    }

    public static final <T> List<T> o(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        im7.e(collection, "$this$plus");
        im7.e(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            n56.f(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static final <T> List<T> p(Collection<? extends T> collection, T t) {
        im7.e(collection, "$this$plus");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t);
        return arrayList;
    }

    public static final void q() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static final <T, C extends Collection<? super T>> C r(Iterable<? extends T> iterable, C c) {
        im7.e(iterable, "$this$toCollection");
        im7.e(c, "destination");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c.add(it.next());
        }
        return c;
    }

    public static final <T> List<T> s(Iterable<? extends T> iterable) {
        im7.e(iterable, "$this$toList");
        if (!(iterable instanceof Collection)) {
            return n(v(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return hk7.e;
        }
        if (size != 1) {
            return w(collection);
        }
        return n56.r1(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <K, V> Map<K, V> t(Iterable<? extends rj7<? extends K, ? extends V>> iterable) {
        im7.e(iterable, "$this$toMap");
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return ik7.e;
        }
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(n56.v1(collection.size()));
            u(iterable, linkedHashMap);
            return linkedHashMap;
        }
        rj7 rj7Var = (rj7) ((List) iterable).get(0);
        im7.e(rj7Var, "pair");
        Map<K, V> mapSingletonMap = Collections.singletonMap(rj7Var.e, rj7Var.f);
        im7.d(mapSingletonMap, "java.util.Collections.si…(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M u(Iterable<? extends rj7<? extends K, ? extends V>> iterable, M m) {
        im7.e(iterable, "$this$toMap");
        im7.e(m, "destination");
        im7.e(m, "$this$putAll");
        im7.e(iterable, "pairs");
        for (rj7<? extends K, ? extends V> rj7Var : iterable) {
            m.put(rj7Var.e, rj7Var.f);
        }
        return m;
    }

    public static final <T> List<T> v(Iterable<? extends T> iterable) {
        im7.e(iterable, "$this$toMutableList");
        if (iterable instanceof Collection) {
            return w((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        r(iterable, arrayList);
        return arrayList;
    }

    public static final <T> List<T> w(Collection<? extends T> collection) {
        im7.e(collection, "$this$toMutableList");
        return new ArrayList(collection);
    }

    public static final <K, V> Map<K, V> x(Map<? extends K, ? extends V> map) {
        im7.e(map, "$this$toMutableMap");
        return new LinkedHashMap(map);
    }

    public static final <T> Set<T> y(Iterable<? extends T> iterable) {
        im7.e(iterable, "$this$toMutableSet");
        return new LinkedHashSet((Collection) iterable);
    }

    public static final <T> Set<T> z(Iterable<? extends T> iterable) {
        im7.e(iterable, "$this$toSet");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return jk7.e;
            }
            if (size != 1) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(n56.v1(collection.size()));
                r(iterable, linkedHashSet);
                return linkedHashSet;
            }
            Set<T> setSingleton = Collections.singleton(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            im7.d(setSingleton, "java.util.Collections.singleton(element)");
            return setSingleton;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        r(iterable, linkedHashSet2);
        im7.e(linkedHashSet2, "$this$optimizeReadOnlySet");
        int size2 = linkedHashSet2.size();
        if (size2 == 0) {
            return jk7.e;
        }
        if (size2 != 1) {
            return linkedHashSet2;
        }
        Set<T> setSingleton2 = Collections.singleton(linkedHashSet2.iterator().next());
        im7.d(setSingleton2, "java.util.Collections.singleton(element)");
        return setSingleton2;
    }
}
