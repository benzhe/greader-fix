package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableToDoubleBiFunction<T, U, E extends Throwable> {
    public static final FailableToDoubleBiFunction NOP = new FailableToDoubleBiFunction() { // from class: vy7
        @Override // org.apache.commons.lang3.function.FailableToDoubleBiFunction
        public final double applyAsDouble(Object obj, Object obj2) {
            return 0.0d;
        }
    };

    double applyAsDouble(T t, U u) throws Throwable;
}
