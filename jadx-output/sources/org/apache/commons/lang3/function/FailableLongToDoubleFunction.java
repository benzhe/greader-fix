package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableLongToDoubleFunction<E extends Throwable> {
    public static final FailableLongToDoubleFunction NOP = new FailableLongToDoubleFunction() { // from class: iy7
        @Override // org.apache.commons.lang3.function.FailableLongToDoubleFunction
        public final double applyAsDouble(long j) {
            return 0.0d;
        }
    };

    double applyAsDouble(long j) throws Throwable;
}
