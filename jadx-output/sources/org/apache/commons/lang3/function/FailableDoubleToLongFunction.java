package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableDoubleToLongFunction<E extends Throwable> {
    public static final FailableDoubleToLongFunction NOP = new FailableDoubleToLongFunction() { // from class: gx7
        @Override // org.apache.commons.lang3.function.FailableDoubleToLongFunction
        public final int applyAsLong(double d) {
            return 0;
        }
    };

    int applyAsLong(double d) throws Throwable;
}
