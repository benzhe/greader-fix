package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableToIntBiFunction<T, U, E extends Throwable> {
    public static final FailableToIntBiFunction NOP = new FailableToIntBiFunction() { // from class: xy7
        @Override // org.apache.commons.lang3.function.FailableToIntBiFunction
        public final int applyAsInt(Object obj, Object obj2) {
            return 0;
        }
    };

    int applyAsInt(T t, U u) throws Throwable;
}
