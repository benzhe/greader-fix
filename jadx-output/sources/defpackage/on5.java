package defpackage;

import java.util.Comparator;

/* loaded from: classes.dex */
public interface on5<K, V> {

    public enum a {
        RED,
        BLACK
    }

    on5<K, V> a();

    on5<K, V> b(K k, V v, Comparator<K> comparator);

    on5<K, V> c(K k, Comparator<K> comparator);

    boolean d();

    on5<K, V> e();

    on5<K, V> f(K k, V v, a aVar, on5<K, V> on5Var, on5<K, V> on5Var2);

    on5<K, V> g();

    K getKey();

    V getValue();

    on5<K, V> h();

    boolean isEmpty();

    int size();
}
