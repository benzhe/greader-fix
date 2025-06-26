package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableDoubleToIntFunction<E extends Throwable> {
    public static final FailableDoubleToIntFunction NOP = new FailableDoubleToIntFunction() { // from class: fx7
        @Override // org.apache.commons.lang3.function.FailableDoubleToIntFunction
        public final int applyAsInt(double d) {
            return 0;
        }
    };

    int applyAsInt(double d) throws Throwable;
}
