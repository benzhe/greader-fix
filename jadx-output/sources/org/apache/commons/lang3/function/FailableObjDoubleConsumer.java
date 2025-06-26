package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableObjDoubleConsumer<T, E extends Throwable> {
    public static final FailableObjDoubleConsumer NOP = new FailableObjDoubleConsumer() { // from class: ny7
        @Override // org.apache.commons.lang3.function.FailableObjDoubleConsumer
        public final void accept(Object obj, double d) {
        }
    };

    void accept(T t, double d) throws Throwable;
}
