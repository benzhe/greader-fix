package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableIntFunction<R, E extends Throwable> {
    public static final FailableIntFunction NOP = new FailableIntFunction() { // from class: px7
        @Override // org.apache.commons.lang3.function.FailableIntFunction
        public final Object apply(int i) {
            return null;
        }
    };

    R apply(int i) throws Throwable;
}
