package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableFunction;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableFunction<T, R, E extends Throwable> {
    public static final FailableFunction NOP = new FailableFunction() { // from class: mx7
        @Override // org.apache.commons.lang3.function.FailableFunction
        public /* synthetic */ FailableFunction andThen(FailableFunction failableFunction) {
            return jz7.$default$andThen(this, failableFunction);
        }

        @Override // org.apache.commons.lang3.function.FailableFunction
        public final Object apply(Object obj) {
            return null;
        }

        @Override // org.apache.commons.lang3.function.FailableFunction
        public /* synthetic */ FailableFunction compose(FailableFunction failableFunction) {
            return jz7.$default$compose(this, failableFunction);
        }
    };

    <V> FailableFunction<T, V, E> andThen(FailableFunction<? super R, ? extends V, E> failableFunction);

    R apply(T t) throws Throwable;

    <V> FailableFunction<V, R, E> compose(FailableFunction<? super V, ? extends T, E> failableFunction);
}
