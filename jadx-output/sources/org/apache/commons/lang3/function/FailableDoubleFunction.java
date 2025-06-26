package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableDoubleFunction<R, E extends Throwable> {
    public static final FailableDoubleFunction NOP = new FailableDoubleFunction() { // from class: zw7
        @Override // org.apache.commons.lang3.function.FailableDoubleFunction
        public final Object apply(double d) {
            return null;
        }
    };

    R apply(double d) throws Throwable;
}
