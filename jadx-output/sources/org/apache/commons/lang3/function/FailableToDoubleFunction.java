package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableToDoubleFunction<T, E extends Throwable> {
    public static final FailableToDoubleFunction NOP = new FailableToDoubleFunction() { // from class: wy7
        @Override // org.apache.commons.lang3.function.FailableToDoubleFunction
        public final double applyAsDouble(Object obj) {
            return 0.0d;
        }
    };

    double applyAsDouble(T t) throws Throwable;
}
