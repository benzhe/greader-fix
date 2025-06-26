package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableIntToDoubleFunction<E extends Throwable> {
    public static final FailableIntToDoubleFunction NOP = new FailableIntToDoubleFunction() { // from class: vx7
        @Override // org.apache.commons.lang3.function.FailableIntToDoubleFunction
        public final double applyAsDouble(int i) {
            return 0.0d;
        }
    };

    double applyAsDouble(int i) throws Throwable;
}
