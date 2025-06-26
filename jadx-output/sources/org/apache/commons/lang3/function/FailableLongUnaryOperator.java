package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableLongUnaryOperator;

/* loaded from: classes2.dex */
public interface FailableLongUnaryOperator<E extends Throwable> {
    public static final FailableLongUnaryOperator NOP = new FailableLongUnaryOperator() { // from class: ky7
        @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
        public /* synthetic */ FailableLongUnaryOperator andThen(FailableLongUnaryOperator failableLongUnaryOperator) {
            return pz7.$default$andThen(this, failableLongUnaryOperator);
        }

        @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
        public final long applyAsLong(long j) {
            return 0L;
        }

        @Override // org.apache.commons.lang3.function.FailableLongUnaryOperator
        public /* synthetic */ FailableLongUnaryOperator compose(FailableLongUnaryOperator failableLongUnaryOperator) {
            return pz7.$default$compose(this, failableLongUnaryOperator);
        }
    };

    FailableLongUnaryOperator<E> andThen(FailableLongUnaryOperator<E> failableLongUnaryOperator);

    long applyAsLong(long j) throws Throwable;

    FailableLongUnaryOperator<E> compose(FailableLongUnaryOperator<E> failableLongUnaryOperator);
}
