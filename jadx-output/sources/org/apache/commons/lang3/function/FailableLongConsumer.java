package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableLongConsumer;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableLongConsumer<E extends Throwable> {
    public static final FailableLongConsumer NOP = new FailableLongConsumer() { // from class: by7
        @Override // org.apache.commons.lang3.function.FailableLongConsumer
        public final void accept(long j) {
        }

        @Override // org.apache.commons.lang3.function.FailableLongConsumer
        public /* synthetic */ FailableLongConsumer andThen(FailableLongConsumer failableLongConsumer) {
            return nz7.$default$andThen(this, failableLongConsumer);
        }
    };

    void accept(long j) throws Throwable;

    FailableLongConsumer<E> andThen(FailableLongConsumer<E> failableLongConsumer);
}
