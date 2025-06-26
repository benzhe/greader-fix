package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableToLongBiFunction<T, U, E extends Throwable> {
    public static final FailableToLongBiFunction NOP = new FailableToLongBiFunction() { // from class: zy7
        @Override // org.apache.commons.lang3.function.FailableToLongBiFunction
        public final long applyAsLong(Object obj, Object obj2) {
            return 0L;
        }
    };

    long applyAsLong(T t, U u) throws Throwable;
}
