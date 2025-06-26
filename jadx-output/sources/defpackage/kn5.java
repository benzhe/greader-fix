package defpackage;

import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.EmptyStackException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class kn5<K, V> implements Iterator<Map.Entry<K, V>> {
    public final ArrayDeque<qn5<K, V>> e = new ArrayDeque<>();
    public final boolean f;

    public kn5(on5<K, V> on5Var, K k, Comparator<K> comparator, boolean z) {
        this.f = z;
        while (!on5Var.isEmpty()) {
            int iCompare = k != null ? z ? comparator.compare(k, on5Var.getKey()) : comparator.compare(on5Var.getKey(), k) : 1;
            if (iCompare < 0) {
                on5Var = z ? on5Var.a() : on5Var.e();
            } else if (iCompare == 0) {
                this.e.push((qn5) on5Var);
                return;
            } else {
                this.e.push((qn5) on5Var);
                on5Var = z ? on5Var.e() : on5Var.a();
            }
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.e.size() > 0;
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            qn5<K, V> qn5VarPop = this.e.pop();
            AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry(qn5VarPop.a, qn5VarPop.b);
            if (this.f) {
                for (on5<K, V> on5VarE = qn5VarPop.c; !on5VarE.isEmpty(); on5VarE = on5VarE.e()) {
                    this.e.push((qn5) on5VarE);
                }
            } else {
                for (on5<K, V> on5VarA = qn5VarPop.d; !on5VarA.isEmpty(); on5VarA = on5VarA.a()) {
                    this.e.push((qn5) on5VarA);
                }
            }
            return simpleEntry;
        } catch (EmptyStackException unused) {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
