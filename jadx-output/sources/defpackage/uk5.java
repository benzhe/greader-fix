package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class uk5<E> implements List<E>, RandomAccess {
    public final List<E> e;

    public uk5(List<E> list) {
        this.e = Collections.unmodifiableList(list);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        return this.e.add(e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.e.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.e.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.e.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.e.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.e.equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.e.get(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.e.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.e.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.e.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.e.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.e.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.e.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.e.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.e.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.e.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i, E e) {
        return this.e.set(i, e);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.e.size();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return this.e.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.e.toArray();
    }

    @Override // java.util.List
    public void add(int i, E e) {
        this.e.add(i, e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        return this.e.addAll(i, collection);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return this.e.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.e.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.e.toArray(tArr);
    }
}
