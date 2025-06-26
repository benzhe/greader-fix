package defpackage;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public class zz6<E> extends AbstractQueue<E> implements Object<E>, Serializable, Serializable {
    public transient d<E> e;
    public transient d<E> f;
    public transient int g;
    public final int h;
    public final ReentrantLock i;
    public final Condition j;
    public final Condition k;

    public abstract class b implements Iterator<E> {
        public d<E> e;
        public E f;
        public d<E> g;

        public b() {
            ReentrantLock reentrantLock = zz6.this.i;
            reentrantLock.lock();
            try {
                d<E> dVar = zz6.this.e;
                this.e = dVar;
                this.f = dVar == null ? null : dVar.a;
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.e != null;
        }

        @Override // java.util.Iterator
        public E next() {
            d<E> dVar;
            E e;
            d<E> dVar2 = this.e;
            if (dVar2 == null) {
                throw new NoSuchElementException();
            }
            this.g = dVar2;
            E e2 = this.f;
            ReentrantLock reentrantLock = zz6.this.i;
            reentrantLock.lock();
            try {
                d<E> dVar3 = this.e;
                while (true) {
                    dVar = dVar3.c;
                    e = null;
                    if (dVar != null) {
                        if (dVar.a != null) {
                            break;
                        }
                        if (dVar == dVar3) {
                            dVar = zz6.this.e;
                            break;
                        }
                        dVar3 = dVar;
                    } else {
                        dVar = null;
                        break;
                    }
                }
                this.e = dVar;
                if (dVar != null) {
                    e = dVar.a;
                }
                this.f = e;
                return e2;
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            d<E> dVar = this.g;
            if (dVar == null) {
                throw new IllegalStateException();
            }
            this.g = null;
            ReentrantLock reentrantLock = zz6.this.i;
            reentrantLock.lock();
            try {
                if (dVar.a != null) {
                    zz6.this.h(dVar);
                }
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public class c extends zz6<E>.b {
        public c(a aVar) {
            super();
        }
    }

    public static final class d<E> {
        public E a;
        public d<E> b;
        public d<E> c;

        public d(E e) {
            this.a = e;
        }
    }

    public zz6() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.i = reentrantLock;
        this.j = reentrantLock.newCondition();
        this.k = reentrantLock.newCondition();
        this.h = Integer.MAX_VALUE;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e) {
        Objects.requireNonNull(e);
        d<E> dVar = new d<>(e);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            if (d(dVar)) {
                return true;
            }
            throw new IllegalStateException("Deque full");
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            d<E> dVar = this.e;
            while (dVar != null) {
                dVar.a = null;
                d<E> dVar2 = dVar.c;
                dVar.b = null;
                dVar.c = null;
                dVar = dVar2;
            }
            this.f = null;
            this.e = null;
            this.g = 0;
            this.k.signalAll();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            for (d<E> dVar = this.e; dVar != null; dVar = dVar.c) {
                if (obj.equals(dVar.a)) {
                    return true;
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean d(d<E> dVar) {
        int i = this.g;
        if (i >= this.h) {
            return false;
        }
        d<E> dVar2 = this.f;
        dVar.b = dVar2;
        this.f = dVar;
        if (this.e == null) {
            this.e = dVar;
        } else {
            dVar2.c = dVar;
        }
        this.g = i + 1;
        this.j.signal();
        return true;
    }

    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public E element() {
        E ePeekFirst = peekFirst();
        if (ePeekFirst != null) {
            return ePeekFirst;
        }
        throw new NoSuchElementException();
    }

    public void h(d<E> dVar) {
        d<E> dVar2 = dVar.b;
        d<E> dVar3 = dVar.c;
        if (dVar2 == null) {
            j();
            return;
        }
        if (dVar3 != null) {
            dVar2.c = dVar3;
            dVar3.b = dVar2;
            dVar.a = null;
            this.g--;
            this.k.signal();
            return;
        }
        d<E> dVar4 = this.f;
        if (dVar4 == null) {
            return;
        }
        d<E> dVar5 = dVar4.b;
        dVar4.a = null;
        dVar4.b = dVar4;
        this.f = dVar5;
        if (dVar5 == null) {
            this.e = null;
        } else {
            dVar5.c = null;
        }
        this.g--;
        this.k.signal();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new c(null);
    }

    public final E j() {
        d<E> dVar = this.e;
        if (dVar == null) {
            return null;
        }
        d<E> dVar2 = dVar.c;
        E e = dVar.a;
        dVar.a = null;
        dVar.c = dVar;
        this.e = dVar2;
        if (dVar2 == null) {
            this.f = null;
        } else {
            dVar2.b = null;
        }
        this.g--;
        this.k.signal();
        return e;
    }

    public boolean offer(E e, long j, TimeUnit timeUnit) throws InterruptedException {
        boolean z;
        Objects.requireNonNull(e);
        d<E> dVar = new d<>(e);
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                if (d(dVar)) {
                    z = true;
                    break;
                }
                if (nanos <= 0) {
                    z = false;
                    break;
                }
                nanos = this.k.awaitNanos(nanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        return z;
    }

    @Override // java.util.Queue
    public E peek() {
        return peekFirst();
    }

    public E peekFirst() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            d<E> dVar = this.e;
            return dVar == null ? null : dVar.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.Queue
    public E poll() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return j();
        } finally {
            reentrantLock.unlock();
        }
    }

    public void put(E e) throws InterruptedException {
        Objects.requireNonNull(e);
        d<E> dVar = new d<>(e);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        while (!d(dVar)) {
            try {
                this.k.await();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public int remainingCapacity() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return this.h - this.g;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        h(r2);
        r0 = true;
     */
    @Override // java.util.AbstractCollection, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean remove(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L4
            goto L20
        L4:
            java.util.concurrent.locks.ReentrantLock r1 = r4.i
            r1.lock()
            zz6$d<E> r2 = r4.e     // Catch: java.lang.Throwable -> L21
        Lb:
            if (r2 == 0) goto L1d
            E r3 = r2.a     // Catch: java.lang.Throwable -> L21
            boolean r3 = r5.equals(r3)     // Catch: java.lang.Throwable -> L21
            if (r3 == 0) goto L1a
            r4.h(r2)     // Catch: java.lang.Throwable -> L21
            r0 = 1
            goto L1d
        L1a:
            zz6$d<E> r2 = r2.c     // Catch: java.lang.Throwable -> L21
            goto Lb
        L1d:
            r1.unlock()
        L20:
            return r0
        L21:
            r5 = move-exception
            r1.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zz6.remove(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return this.g;
        } finally {
            reentrantLock.unlock();
        }
    }

    public E take() throws InterruptedException {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        while (true) {
            try {
                E eJ = j();
                if (eJ != null) {
                    return eJ;
                }
                this.j.await();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Object[] objArr = new Object[this.g];
            int i = 0;
            d<E> dVar = this.e;
            while (dVar != null) {
                int i2 = i + 1;
                objArr[i] = dVar.a;
                dVar = dVar.c;
                i = i2;
            }
            return objArr;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.lang.Object
    public String toString() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            d<E> dVar = this.e;
            if (dVar == null) {
                return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            while (true) {
                Object obj = dVar.a;
                if (obj == this) {
                    obj = "(this Collection)";
                }
                sb.append(obj);
                dVar = dVar.c;
                if (dVar == null) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(',');
                sb.append(' ');
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public int drainTo(Collection<? super E> collection, int i) {
        Objects.requireNonNull(collection);
        if (collection == this) {
            throw new IllegalArgumentException();
        }
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            int iMin = Math.min(i, this.g);
            for (int i2 = 0; i2 < iMin; i2++) {
                collection.add(this.e.a);
                j();
            }
            return iMin;
        } finally {
            reentrantLock.unlock();
        }
    }

    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        E eJ;
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                eJ = j();
                if (eJ != null) {
                    break;
                }
                if (nanos <= 0) {
                    eJ = null;
                    break;
                }
                nanos = this.j.awaitNanos(nanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        return eJ;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            if (tArr.length < this.g) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.g));
            }
            int i = 0;
            d<E> dVar = this.e;
            while (dVar != null) {
                tArr[i] = dVar.a;
                dVar = dVar.c;
                i++;
            }
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        } finally {
            reentrantLock.unlock();
        }
    }
}
