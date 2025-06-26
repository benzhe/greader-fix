package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableObjIntConsumer<T, E extends Throwable> {
    public static final FailableObjIntConsumer NOP = new FailableObjIntConsumer() { // from class: oy7
        @Override // org.apache.commons.lang3.function.FailableObjIntConsumer
        public final void accept(Object obj, int i) {
        }
    };

    void accept(T t, int i) throws Throwable;
}
