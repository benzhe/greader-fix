package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableBiConsumer;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableBiConsumer<T, U, E extends Throwable> {
    public static final FailableBiConsumer NOP = new FailableBiConsumer() { // from class: mw7
        @Override // org.apache.commons.lang3.function.FailableBiConsumer
        public final void accept(Object obj, Object obj2) {
        }

        @Override // org.apache.commons.lang3.function.FailableBiConsumer
        public /* synthetic */ FailableBiConsumer andThen(FailableBiConsumer failableBiConsumer) {
            return cz7.$default$andThen(this, failableBiConsumer);
        }
    };

    void accept(T t, U u) throws Throwable;

    FailableBiConsumer<T, U, E> andThen(FailableBiConsumer<? super T, ? super U, E> failableBiConsumer);
}
