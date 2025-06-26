package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableIntConsumer;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableIntConsumer<E extends Throwable> {
    public static final FailableIntConsumer NOP = new FailableIntConsumer() { // from class: ox7
        @Override // org.apache.commons.lang3.function.FailableIntConsumer
        public final void accept(int i) {
        }

        @Override // org.apache.commons.lang3.function.FailableIntConsumer
        public /* synthetic */ FailableIntConsumer andThen(FailableIntConsumer failableIntConsumer) {
            return kz7.$default$andThen(this, failableIntConsumer);
        }
    };

    void accept(int i) throws Throwable;

    FailableIntConsumer<E> andThen(FailableIntConsumer<E> failableIntConsumer);
}
