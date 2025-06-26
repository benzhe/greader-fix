package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableToIntFunction<T, E extends Throwable> {
    public static final FailableToIntFunction NOP = new FailableToIntFunction() { // from class: yy7
        @Override // org.apache.commons.lang3.function.FailableToIntFunction
        public final int applyAsInt(Object obj) {
            return 0;
        }
    };

    int applyAsInt(T t) throws Throwable;
}
