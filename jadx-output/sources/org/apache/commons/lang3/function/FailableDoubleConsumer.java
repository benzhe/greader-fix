package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableDoubleConsumer;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableDoubleConsumer<E extends Throwable> {
    public static final FailableDoubleConsumer NOP = new FailableDoubleConsumer() { // from class: xw7
        @Override // org.apache.commons.lang3.function.FailableDoubleConsumer
        public final void accept(double d) {
        }

        @Override // org.apache.commons.lang3.function.FailableDoubleConsumer
        public /* synthetic */ FailableDoubleConsumer andThen(FailableDoubleConsumer failableDoubleConsumer) {
            return gz7.$default$andThen(this, failableDoubleConsumer);
        }
    };

    void accept(double d) throws Throwable;

    FailableDoubleConsumer<E> andThen(FailableDoubleConsumer<E> failableDoubleConsumer);
}
