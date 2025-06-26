package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableLongFunction<R, E extends Throwable> {
    public static final FailableLongFunction NOP = new FailableLongFunction() { // from class: cy7
        @Override // org.apache.commons.lang3.function.FailableLongFunction
        public final Object apply(long j) {
            return null;
        }
    };

    R apply(long j) throws Throwable;
}
