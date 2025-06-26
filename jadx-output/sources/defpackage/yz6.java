package defpackage;

import defpackage.zz6;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class yz6<T> extends zz6<T> {
    @Override // java.util.Queue
    public boolean offer(T t) {
        boolean z;
        Objects.requireNonNull(t);
        zz6.d<E> dVar = new zz6.d<>(t);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            int i = this.g;
            if (i >= this.h) {
                z = false;
            } else {
                zz6.d<E> dVar2 = this.e;
                dVar.c = dVar2;
                this.e = dVar;
                if (this.f == null) {
                    this.f = dVar;
                } else {
                    dVar2.b = dVar;
                }
                z = true;
                this.g = i + 1;
                this.j.signal();
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public T remove() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            T tJ = j();
            if (tJ != null) {
                return tJ;
            }
            throw new NoSuchElementException();
        } finally {
            reentrantLock.unlock();
        }
    }
}
