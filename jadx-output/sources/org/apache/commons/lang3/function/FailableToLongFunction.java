package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableToLongFunction<T, E extends Throwable> {
    public static final FailableToLongFunction NOP = new FailableToLongFunction() { // from class: az7
        @Override // org.apache.commons.lang3.function.FailableToLongFunction
        public final long applyAsLong(Object obj) {
            return 0L;
        }
    };

    long applyAsLong(T t) throws Throwable;
}
