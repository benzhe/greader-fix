package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableBiFunction;
import org.apache.commons.lang3.function.FailableFunction;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableBiFunction<T, U, R, E extends Throwable> {
    public static final FailableBiFunction NOP = new FailableBiFunction() { // from class: ow7
        @Override // org.apache.commons.lang3.function.FailableBiFunction
        public /* synthetic */ FailableBiFunction andThen(FailableFunction failableFunction) {
            return dz7.$default$andThen(this, failableFunction);
        }

        @Override // org.apache.commons.lang3.function.FailableBiFunction
        public final Object apply(Object obj, Object obj2) {
            return null;
        }
    };

    <V> FailableBiFunction<T, U, V, E> andThen(FailableFunction<? super R, ? extends V, E> failableFunction);

    R apply(T t, U u) throws Throwable;
}
