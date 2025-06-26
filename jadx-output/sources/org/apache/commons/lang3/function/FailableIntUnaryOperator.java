package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableIntUnaryOperator;

/* loaded from: classes2.dex */
public interface FailableIntUnaryOperator<E extends Throwable> {
    public static final FailableIntUnaryOperator NOP = new FailableIntUnaryOperator() { // from class: zx7
        @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
        public /* synthetic */ FailableIntUnaryOperator andThen(FailableIntUnaryOperator failableIntUnaryOperator) {
            return mz7.$default$andThen(this, failableIntUnaryOperator);
        }

        @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
        public final int applyAsInt(int i) {
            return 0;
        }

        @Override // org.apache.commons.lang3.function.FailableIntUnaryOperator
        public /* synthetic */ FailableIntUnaryOperator compose(FailableIntUnaryOperator failableIntUnaryOperator) {
            return mz7.$default$compose(this, failableIntUnaryOperator);
        }
    };

    FailableIntUnaryOperator<E> andThen(FailableIntUnaryOperator<E> failableIntUnaryOperator);

    int applyAsInt(int i) throws Throwable;

    FailableIntUnaryOperator<E> compose(FailableIntUnaryOperator<E> failableIntUnaryOperator);
}
