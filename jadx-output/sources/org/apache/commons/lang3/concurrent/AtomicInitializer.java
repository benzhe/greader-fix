package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<T> reference = new AtomicReference<>();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        T t = this.reference.get();
        if (t != null) {
            return t;
        }
        T tInitialize = initialize();
        return !this.reference.compareAndSet(null, tInitialize) ? this.reference.get() : tInitialize;
    }

    public abstract T initialize() throws ConcurrentException;
}
