package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableLongToIntFunction<E extends Throwable> {
    public static final FailableLongToIntFunction NOP = new FailableLongToIntFunction() { // from class: jy7
        @Override // org.apache.commons.lang3.function.FailableLongToIntFunction
        public final int applyAsInt(long j) {
            return 0;
        }
    };

    int applyAsInt(long j) throws Throwable;
}
