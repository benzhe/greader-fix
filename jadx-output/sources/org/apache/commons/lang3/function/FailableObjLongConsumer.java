package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableObjLongConsumer<T, E extends Throwable> {
    public static final FailableObjLongConsumer NOP = new FailableObjLongConsumer() { // from class: py7
        @Override // org.apache.commons.lang3.function.FailableObjLongConsumer
        public final void accept(Object obj, long j) {
        }
    };

    void accept(T t, long j) throws Throwable;
}
