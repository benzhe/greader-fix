package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableIntToLongFunction<E extends Throwable> {
    public static final FailableIntToLongFunction NOP = new FailableIntToLongFunction() { // from class: wx7
        @Override // org.apache.commons.lang3.function.FailableIntToLongFunction
        public final long applyAsLong(int i) {
            return 0L;
        }
    };

    long applyAsLong(int i) throws Throwable;
}
