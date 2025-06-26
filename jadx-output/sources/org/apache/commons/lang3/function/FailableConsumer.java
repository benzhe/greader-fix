package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableConsumer;

@FunctionalInterface
/* loaded from: classes2.dex */
public interface FailableConsumer<T, E extends Throwable> {
    public static final FailableConsumer NOP = new FailableConsumer() { // from class: ww7
        @Override // org.apache.commons.lang3.function.FailableConsumer
        public final void accept(Object obj) {
        }

        @Override // org.apache.commons.lang3.function.FailableConsumer
        public /* synthetic */ FailableConsumer andThen(FailableConsumer failableConsumer) {
            return fz7.$default$andThen(this, failableConsumer);
        }
    };

    void accept(T t) throws Throwable;

    FailableConsumer<T, E> andThen(FailableConsumer<? super T, E> failableConsumer);
}
